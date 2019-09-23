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

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        descripcionCharla nullable: true
        audienceLevel nullable: true
        talkFormat nullable: true
        tema unique: true
    }

    static mapping = {
        descripcionCharla type: "text"
    }
}
