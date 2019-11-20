package barcamprd

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT

@Secured(['ROLE_ADMIN'])
class AulaController {

    AulaService aulaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond aulaService.list(params), model: [aulaCount: aulaService.count()]
    }

    def show(Long id) {
        respond aulaService.get(id)
    }

    def create() {
        respond new Aula(params)
    }

    def save(Aula aula) {

        if (aula == null) {
            notFound()
            return
        }

        try {
            aulaService.save(aula)
        } catch (ValidationException e) {
            println "errores ${e}"
            respond aula.errors, view: '/admin/aulas'
            return
        }

        redirect(controller: 'admin', 'action': 'aulas')
    }

    def edit(Long id) {
        respond aulaService.get(id)
    }

    def actualizarAula() {

        try {

            println "id ${params.id}"
            def aula = Aula.findById(params.id as Long)
            def cantidad = params.cantidadPersonas as int
            def color = params.color as String

            println "cantidad ${cantidad}"
            println "aula ${aula} "

            aula.cantidadPersonas = cantidad
            aula.color = color

            aula.save(flush: true, failOnError: true)

            redirect(controller: 'admin', 'action': 'aulas')
            return false

        } catch (Exception e) {

            println "error ${e.message}"
        }
    }

    def update(Aula aula) {
        if (aula == null) {
            notFound()
            return
        }


        aulaService.save(aula)
//            render(view: "aulas", controller: 'admin', model: ['aulas': Aula.list()])

        redirect(controller: 'admin', 'action': 'aulas')
        return false


    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        aulaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'aula.label', default: 'Aula'), id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    def numeroDisponible() {
        def ok = false
        if (params.data != null) {
            ok = Aula.findByNumero(params.data) ? true : false
        }
        render ok
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'aula.label', default: 'Aula'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
