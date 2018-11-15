package barcamprd

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class APIController {

    def index() { }

    def registros(){
        render Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO)) as JSON
    }

    def confirmar(){
        def registro = Registro.findById(params.id as long)
        def antes = registro.estado.texto
        registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
        /*registro.save(flush: true, failOnError: true)*/
        render "Cambiando de " + antes + " a " + registro.estado.texto
    }
}
