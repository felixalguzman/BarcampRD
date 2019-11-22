package barcamprd

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException

import static org.springframework.http.HttpStatus.NOT_FOUND
import static org.springframework.http.HttpStatus.NO_CONTENT

@Secured(['ROLE_ADMIN'])
class CharlistaController {

    CharlistaService charlistaService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond charlistaService.list(params), model: [charlistaCount: charlistaService.count()]
    }

    def show(Long id) {
        respond charlistaService.get(id)
    }

    def create() {
        respond new Charlista(params)
    }

    def guardarCharlista(String nombre, String pais, String telefono, String imagenCharlista) {
        def charlista = new Charlista(nombre: nombre, pais: pais)

        charlista.setImagenCharlista(imagenCharlista)
        charlista.setTelefono(telefono)
        charlista.save(flush: true, failOnError: true)

//        render view: '/admin/charlistas', model: [charlistas: Charlista.findAll()]
        redirect(controller: "admin", action: "charlistas")

        def ok = [ok: true]
//        render ok as JSON
        return false


    }

    def actualizarCharlista(Long id, String nombre, String pais, String telefono, String imagenCharlista) {
        def charlista = Charlista.findById(id)


        println "nuevos val $nombre $pais $imagenCharlista"
        charlista.setNombre(nombre)
        charlista.setPais(pais)
        charlista.setImagenCharlista(imagenCharlista)
        charlista.setTelefono(telefono)
        charlista.save(flush: true, failOnError: true)

//        render view: '/admin/charlistas', model: [charlistas: Charlista.findAll()]
        redirect(controller: "admin", action: "charlistas")

        def ok = [ok: true]
//        render ok as JSON
        return false


    }


    def save(Charlista charlista) {
        if (charlista == null) {
            notFound()
            return
        }

        try {
//            charlistaService.save(charlista)

            charlista.save(flush: true, failOnError: true)
//            redirect(uri: "admin/charlistas")

        } catch (ValidationException e) {
            respond charlista.errors, view: 'create'
        }

        respond view: '/admin/charlistas'

    }

    def edit(Long id) {
        respond charlistaService.get(id)
    }

    def update(Charlista charlista) {
        if (charlista == null) {
            notFound()
            return
        }

        try {
            charlistaService.save(charlista)
        } catch (ValidationException e) {
            respond charlista.errors, view: 'edit'
            return
        }

        respond view: '/admin/charlistas'

    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        charlistaService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'charlista.label', default: 'Charlista'), id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'charlista.label', default: 'Charlista'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
