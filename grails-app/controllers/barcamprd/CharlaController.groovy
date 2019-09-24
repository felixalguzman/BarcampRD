package barcamprd

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
@Secured(['ROLE_ADMIN'])
class CharlaController {

    CharlaService charlaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond charlaService.list(params), model: [charlaCount: charlaService.count()]
    }

    def show(Long id) {
        respond charlaService.get(id)
    }

    def create() {
        respond new Charla(params)
    }

    def guardarCharla(String tema, String descripcionCharla, int aula, int horario, String audienceLevel, String talkFormat) {

        def charlistaC = Charlista.findById(params.charlista as Integer)
        def aulaC = Aula.findById(aula)
        def horarioC = Horario.findById(horario)

        println "charlista: ${params.charlista as Integer} aula: ${aula} horario: ${horario}"

        def charla = new Charla(charlista: charlistaC, aula: aulaC, horario: horarioC, tema: tema)
        charla.setDescripcionCharla(descripcionCharla)
        charla.setAudienceLevel(audienceLevel)
        charla.setTalkFormat(talkFormat)

        charla.save(flush: true, failOnError: true)

        redirect(controller: "admin", action: "charlas")
        return false

    }

    def edit(Long id) {
        respond charlaService.get(id)
    }

    def update(Charla charla) {
        if (charla == null) {
            notFound()
            return
        }

        try {
            charlaService.save(charla)
        } catch (ValidationException e) {
            respond charla.errors, view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'charla.label', default: 'Charla'), charla.id])
                redirect charla
            }
            '*' { respond charla, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        charlaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'charla.label', default: 'Charla'), id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'charla.label', default: 'Charla'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
