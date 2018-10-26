package barcamprd

class AdminController {

    def index() {}

    def registros() {
        [registros : Registro.list()]
    }
}
