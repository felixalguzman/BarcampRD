package barcamprd

class Critica {

    static belongsTo = [charla: Charla, participante: Participante]

    float valor
    String descripcion

    static constraints = {

        descripcion nullable: true
    }

    static mapping = {
        valor defaultValue: true
    }
}
