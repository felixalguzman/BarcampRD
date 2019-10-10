package barcamprd

import barcamprd.auth.User
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {
        def registros = Participante.findAll()
        def registrosFormatted = []
        registros.each {
            def lista = it.charlas.sort { it.id }
            it.charlas = lista
            registrosFormatted.add(it)
        }

        ['user'              : (User) applicationContext.springSecurityService.getCurrentUser(),
         'registrosAprobados': Participante.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO)).size(),
         'registros'         : registrosFormatted,
         participantes       : Participante.count()]
    }

    def charlas() {
        ['charlas': Charla.list(), charlistas: Charlista.findAll(), aulas: Aula.findAll(), horarios: Horario.findAll()]
    }

    def charlistas() {
        [charlistas: Charlista.findAll()]
    }

    def horarios() {
        ['horarios': Horario.list()]
    }

    def aulas() {
        ['aulas': Aula.list()]
    }

    def charlasPorCharlista(int idCharlista) {


        def charlista = Charlista.findById(idCharlista)
        def list = []
        charlista.charlas.eachWithIndex { Charla charla, int i ->

            def map = [:]
            map.put('nombre', charla.tema)


        }

    }


    def editarRegistro(int idRegistro) {
        def registro = Participante.findById(idRegistro)
        ['registro': registro, charlas: Charla.findAll()]
    }

    def agregarCharla(int idRegistro, int idCharla) {
        def registro = Participante.findById(idRegistro)
        def charla = Charla.findById(idCharla)

//        if (registro.charlas == null)

        registro.addToCharlas(charla)
        registro.save(flush: true, failOnError: true)

        render(view: "editarRegistro", model: [registro: registro, charlas: Charla.findAll()])

    }

    def quitarCharla(int idRegistro, Long idCharla) {
        def registro = Participante.findById(idRegistro)

        def charla = registro.charlas.find {
            it.id == idCharla
        }

        registro.charlas.remove(charla)
        registro.save(flush: true, failOnError: true)

        render(view: "editarRegistro", model: [registro: registro, charlas: Charla.findAll()])
    }

    def sizesCamisetas() {
        def sizes = [:]
        Participante.list().each {
            if (sizes.keySet().contains(it.sizeCamiseta)) {
                sizes[it.sizeCamiseta]++
            } else
                sizes[it.sizeCamiseta] = 1
        }
        render sizes as JSON
    }

    def asistentesPorCharla() {
        def cantPorCharla = [:]
        Charla.list().each {
            def map = [:]
            map[it.tema] = it.cantidadParticipantes()
            cantPorCharla[it.id] = map
        }
        render cantPorCharla as JSON
    }

    def borrarRegistro() {
        def reg = Participante.findByCedula(params.noId as String)
        if (reg != null) {
            reg.charlas.each {
                it.cantidadParticipantes()--
                if (it.cantidadParticipantes() < it.aula.cantidadPersonas) {
                    it.llena = false
                }
                it.save(flush: true, failOnError: true)
            }
            reg.delete(flush: true, failOnError: true)
            render params.noId
        } else {
            render 'no va'
        }
    }

    def aprobarRegistro(String data) {
        def ok = false
        def registro = Participante.findById(data as long)

        if (registro != null) {
            registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO)
            registro.save(flush: true, failOnError: true)
            ok = true
        }
        render ok
    }

    def confirmarRegistro(String data) {
        def ok = false
        def registro = Participante.findById(data as long)
        if (registro != null) {
            registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
            registro.save(flush: true, failOnError: true)
            ok = true
        }
        render ok
    }

    def cambiarEstadoPendiente(String data) {
        def ok = false
        def registro = Participante.findById(data as long)
        if (registro != null) {
            registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_PENDIENTE)
            registro.save(flush: true, failOnError: true)
            ok = true
        }
        render ok
    }

}
