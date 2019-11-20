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
            JSON.use('deep') {
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
            map['size'] = registro.sizeCamiseta
            map['nombre'] = registro.nombre
            map['correo'] = registro.correo
            map['cedula'] = registro.cedula
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
            JSON.use('deep') {
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
            JSON.use('deep') {
                render map as JSON
            }

        } else {
            response.status = 404
            render "Participante no encontrado"
        }
    }

    def nuevaCritica(String numeroRegistro, String descripcion, float valor, Long idCharla) {

        def registro = Participante.findByCedula(numeroRegistro)
        def charla = Charla.findById(idCharla)

        if (registro == null || charla == null) {
            response.status = 404
            render "Participante o charla no encontrado"
        }

        Critica critica = new Critica(valor: valor, descripcion: descripcion, charla: charla, participante: registro)
        critica.save(flush: true, failOnError: true)

        response.status = 200
        def res = [ok: "OK"]
        render res as JSON


    }

    def criticasPorParticipante(String numeroRegistro) {

        def registro = Participante.findByCedula(numeroRegistro)
        def criticas = Critica.findAllByParticipante(registro)

        if (registro != null) {

            def json = []
            criticas.each {
                def map = [:]
                map['id'] = it.id
                map['valor'] = it.valor
                map['descripcion'] = it.descripcion
                json.add(map)
            }

            render json as JSON
        } else {
            response.status = 404
            render "Participante no encontrado"
        }
    }

    def actualizarCritica(Long idCritica, String descripcion, float valor) {

        def critica = Critica.findById(idCritica)

        if (critica != null) {

            critica.descripcion = descripcion
            critica.valor = valor
            critica.save(flush: true, failOnError: true)

        } else {
            response.status = 404
            render "Critica no encontrada"
        }

    }

    def criticasPorCharla(Long idCharla) {

        def charla = Charla.findById(idCharla)
        def criticas = Critica.findAllByCharla(charla)

        if (charla != null) {

            def json = []
            criticas.each {
                def map = [:]
                map['id'] = it.id
                map['valor'] = it.valor
                map['descripcion'] = it.descripcion
                json.add(map)
            }

            render json as JSON
        } else {
            response.status = 404
            render "Charla no encontrado"
        }
    }

    def charlas() {

        def charlas = Charla.findAll()
        def listMap = []
        charlas.each {
            def map = [:]

            map['idCharla'] = it.id
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
            map['color'] = it?.aula?.color
            listMap.add(map)
        }
        render listMap as JSON
    }
}
