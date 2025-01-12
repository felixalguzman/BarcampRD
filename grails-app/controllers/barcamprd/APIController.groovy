package barcamprd

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class APIController {

    def index() {
        render "API del FORM"
    }

    /**
     *
     * @return
     */
    def registros() {
        def lista = Participante.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))
        def listMap = []
        lista.each {
            def map = [:]
            map['id'] = it.id
            map['nombre'] = it.nombre
            map['cedula'] = it.cedula
            map['size'] = it.sizeCamiseta
            listMap.add(map)
        }
        render listMap as JSON
    }

    /**
     *
     * @param id
     * @return
     */
    def consultarRegistro(long id) {
        println "......"
        def registro = Participante.findById(id)

        if (registro) {
            def map = [:]
            map['id'] = registro.id
            map['nombre'] = registro.nombre
            map['cedula'] = registro.cedula
            map['size'] = registro.sizeCamiseta

            map['correo'] = registro.correo
            map['charlas'] = registro.charlas
            JSON.use('deep'){
                render map as JSON
            }

        } else {
            response.status = 400
            render('Participante no existe')
        }
    }

    /**
     *
     * @param id
     * @return
     */
    def confirmar(long id) {
        def registro = Participante.findByIdAndEstado(id, EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))
        def map = [:]
        if (registro) {
            def antes = registro.estado.texto
            registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
            registro.save(flush: true, failOnError: true)
            map['codigo'] = 200
            map['status'] = 'ok'
            render map as JSON
        } else {
            response.status = 400
            map['codigo'] = 400
            map['status'] = 'error'
            render map as JSON
        }
    }

    def registroUsuario(String email) {
        def registro = Participante.findByCorreo(email)
        if (registro) {
            def map = [:]
            map['id'] = registro.id
            map['nombre'] = registro.nombre
            map['correo'] = registro.correo
            map['charlas'] = registro.charlas
            JSON.use('deep'){
                render map as JSON
            }
        } else {
            response.status = 404
            render "Participante no encontrado"
        }
    }

    def registroUsuarioByNumero(String numeroRegistro) {
        def registro = Participante.findByCedula(numeroRegistro)
        if (registro) {
            def map = [:]
            map['id'] = registro.id
            map['nombre'] = registro.nombre
            map['correo'] = registro.correo
            map['charlas'] = registro.charlas
            JSON.use('deep'){
                render map as JSON
            }

        } else {
            response.status = 404
            render "Participante no encontrado"
        }
    }

    def charlas() {

        def charlas = Charla.findAll()
        def listMap = []
        charlas.each {
            def map = [:]
            map['numeroAula'] = it.aula.numero
            map['cantidadAsistentes'] = it.cantidadParticipantes()
            map['descripcionCharla'] = it.descripcionCharla
            map['horario'] = it.horario.value
            map['charlista'] = it.charlista.nombre
            map['tema'] = it.tema
            map['imagenCharlista'] = it?.charlista?.imagenCharlista
            map['talkFormat'] = it?.talkFormat
            map['audienceLevel'] = it?.audienceLevel
            map['lugar'] = it?.aula?.lugar
            listMap.add(map)
        }
        render listMap as JSON
    }
}
