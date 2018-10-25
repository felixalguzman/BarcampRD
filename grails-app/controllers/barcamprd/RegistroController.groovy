package barcamprd

class RegistroController {

    def index() {

        def charlas = Charla.list().collate(Charla.list().size() / 2 as int)

        def charlaHorario = [:]
        def charlaHorario2 = [:]
        boolean ok = false

        for (Charla c : Charla.list()) {
            println(c.llena)
            if (!c.llena) {
                ok = true
                break
            }
        }

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

        ['charlas': charlaHorario, 'charlas2': charlaHorario2, ok: ok]
    }

    def registrar() {
        def registro = new Registro()
        registro.cedula = params.cedula
        registro.nombre = params.nombre
        registro.correo = params.email
        registro.sizeCamiseta = params.size
        def c1 = params.h_1 != null ? Charla.findById(params.h_1 as long) : null
        def c2 = params.h_2 != null ? Charla.findById(params.h_2 as long) : null
        def c3 = params.h_3 != null ? Charla.findById(params.h_3 as long) : null
        def c4 = params.h_4 != null ? Charla.findById(params.h_4 as long) : null
        def c5 = params.h_5 != null ? Charla.findById(params.h_5 as long) : null
        def c6 = params.h_6 != null ? Charla.findById(params.h_6 as long) : null
        def charlas = [c1, c2, c3, c4, c5, c6]
        def ok = verificarCupoCharla(charlas)

        if (ok) {
            registro.listaCharlas = new ArrayList<Charla>(charlas)
            registro.save(flush: true, failOnError: true)
        }

        redirect(controller: 'registro', action: 'confirmar', params: [ok: ok])
    }

    def verificarCedula() {
        render Registro.findByCedula(params.data) ? true : false
    }

    def verificarCorreo() {
        render Registro.findByCorreo(params.data) ? true : false
    }

    def confirmar() {
        [ok: params.ok]
    }

    def verificarCupoCharla(def listaCharlas) {
        boolean ok = true

        for (Charla c : listaCharlas) {
            if (c != null) {
                if (!c.llena) {
                    c.cantidadAsistentes++
                    if (c.cantidadAsistentes >= c.aula.cantidadPersonas)
                        c.llena = true
                    c.save(flush: true, failOnError: true)
                } else {
                    ok = false
                    break
                }
            }
        }
        return ok
    }
}
