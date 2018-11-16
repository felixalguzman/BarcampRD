package barcamprd

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class APIController {

    def index() { }

    def registros(){

        def lista = Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))

        println(lista)

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

    def consultarRegistro(){
        def registro = Registro.findById(params.id as long)

        def map = [:]

        if (registro != null){
            map['id'] = registro.id
            map['nombre'] = registro.nombre
            map['cedula'] = registro.cedula
            map['size'] = registro.sizeCamiseta
            render map as JSON
        } else{
            render 'Registro no disponible'
        }
    }

    def confirmar(){
        def registro = Registro.findById(params.id as long)
        def antes = registro.estado.texto
        registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
        /*registro.save(flush: true, failOnError: true)*/
        render "Cambiando de " + antes + " a " + registro.estado.texto
    }
}
