package barcamprd

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

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

        println('hp;a')

        if (aula == null) {
            notFound()
            return
        }

        try {
            aulaService.save(aula)
        } catch (ValidationException e) {
            respond aula.errors, view: '/admin/crearAula'
            return
        }

        redirect(controller: 'admin', 'action': 'aulas')
    }

    def edit(Long id) {
        respond aulaService.get(id)
    }

    def update(Aula aula) {
        if (aula == null) {
            notFound()
            return
        }

        try {
            aulaService.save(aula)
        } catch (ValidationException e) {
            respond aula.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'aula.label', default: 'Aula'), aula.id])
                redirect aula
            }
            '*' { respond aula, [status: OK] }
        }
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
