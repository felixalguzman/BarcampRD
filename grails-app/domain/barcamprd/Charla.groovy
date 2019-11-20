package barcamprd

class Charla {

    Charlista charlista
    String tema
    String descripcionCharla
    Aula aula
    Horario horario
    boolean llena = false
    String audienceLevel
    String talkFormat

    static hasMany = [criticas: Critica]

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        descripcionCharla nullable: true
        audienceLevel nullable: true
        talkFormat nullable: true
        tema unique: true
        criticas nullable: true
    }

    static mapping = {
        descripcionCharla type: "text"
        horario sort: 'value', order: 'desc'

    }

    def cantidadParticipantes() {

        def c = Participante.createCriteria()
        def cantidad = c.get {
            charlas {
                eq("id", id)
            }

            projections {
                count("charlas")
            }

        }

        println "cantidad: ${cantidad}"
        return cantidad
    }
}
