package barcamprd

class RegistroController {

    def index() {

        def charlas =  Charla.list().collate(Charla.list().size()/2 as int)

        def charlaHorario = [:]
        def charlaHorario2 = [:]

        charlas[0].each {
            if (charlaHorario.containsKey(it.horario.value)) {
                charlaHorario[it.horario.value].add(it)
            } else {
                charlaHorario[it.horario.value] = [it]
            }
        }

        charlas[1].each {
            if (charlaHorario2.containsKey(it.horario.value)) {
                charlaHorario2[it.horario.value].add(it)
            } else {
                charlaHorario2[it.horario.value] = [it]
            }
        }

        ['charlas': charlaHorario, 'charlas2': charlaHorario2]
    }

    def registrar() {
        def registro = new Registro()
        registro.cedula = params.cedula
        registro.nombre = params.nombre
        registro.correo = params.email
        registro.sizeCamiseta = params.size
        registro.listaCharlas = [Charla.findById(params.h_1), Charla.findById(params.h_2), Charla.findById(params.h_3), Charla.findById(params.h_4), Charla.findById(params.h_5), Charla.findById(params.h_6)]
        registro.save(flush: true, failOnError: true)

        Charla.list().each {
            int cant = 0
            Registro.list().each { reg ->
                if (reg.listaCharlas.contains(it)){
                    cant++
                }
            }
            if(cant >= it.aula.cantidadPersonas){
                it.llena = true
                it.save(flush: true, failOnError: true)
            }
        }

        redirect(controller: 'registro', action: 'confirmar')
    }

    def verificarCedula() {
        render Registro.findByCedula(params.data) ? true : false
    }

    def verificarCorreo() {
        render Registro.findByCorreo(params.data) ? true : false
    }

    def confirmar() {}
}
