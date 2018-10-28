package barcamprd

import barcamprd.auth.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() {
        ['user'                : (User) applicationContext.springSecurityService.getCurrentUser(), registros: Registro.list(),
         'totalCharlas'        : Charla.count,
         'registrosConfirmados': Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO)).size(),
         'charlasLlenas'       : Charla.findAllByLlena(true).size()]
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



}
