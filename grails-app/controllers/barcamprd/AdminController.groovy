package barcamprd

import barcamprd.auth.User
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {
        ['user'                : (User) applicationContext.springSecurityService.getCurrentUser(),
         'registrosAprobados': Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO)).size()]
    }

    def charlas() {
        ['charlas': Charla.list(),]
    }

    def horarios() {
        ['horarios': Horario.list()]
    }

    def aulas() {
        ['aulas': Aula.list()]
    }

    def sizesCamisetas() {
        def sizes = [:]
        Registro.list().each {
            if (sizes.keySet().contains(it.sizeCamiseta)) {
                sizes[it.sizeCamiseta]++
            } else
                sizes[it.sizeCamiseta] = 1
        }
        render sizes as JSON
    }

    def asistentesPorCharla() {
        def cantPorCharla = [:]
        Charla.list().each {
            def map = [:]
            map[it.tema] = it.cantidadAsistentes
            cantPorCharla[it.id] = map
        }
        render cantPorCharla as JSON
    }
}
