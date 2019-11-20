package barcamprd

class Critica {

    static belongsTo = [charla: Charla]

    float valor
    String descripcion

    static constraints = {

        descripcion nullable: true
    }

    static mapping = {
        valor defaultValue: true
    }
}
