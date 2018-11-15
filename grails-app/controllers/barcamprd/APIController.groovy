package barcamprd

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class APIController {

    def index() { }

    def registros(){
        render Registro.list() as JSON
    }

    def confirmar(){
        long id = params.id
        def registro = Registro.findById(id)
        println(registro.nombre)
        /*registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
        registro.save(flush: true, failOnError: true)*/
        render registro.estado.texto
    }
}
