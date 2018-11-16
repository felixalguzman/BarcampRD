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
    def registros(){
        def lista = Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))
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
    def consultarRegistro(long id){
        println "......"
        def registro = Registro.findById(id)

        def map = [:]

        if (registro){
            map['id'] = registro.id
            map['nombre'] = registro.nombre
            map['cedula'] = registro.cedula
            map['size'] = registro.sizeCamiseta
            render map as JSON
        } else{
            response.status = 400
            render('Registro no existe')
        }
    }

    /**
     * 
     * @param id
     * @return
     */
    def confirmar(long id){
        def registro = Registro.findById(id)
        if(registro) {
            def antes = registro.estado.texto
            registro.estado = EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_CONFIRMADO)
            /*registro.save(flush: true, failOnError: true)*/
            render "Cambiando de " + antes + " a " + registro.estado.texto
        } else{
            response.status = 400
            render('Registro no existe')
        }
    }

}
