package barcamprd

class Charla {

    String charlista
    String tema
    String descripcionCharla
    String imagenCharlista
    Aula aula
    Horario horario
    boolean llena = false
    int cantidadAsistentes = 0
    String audienceLevel
    String talkFormat

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        descripcionCharla nullable: true
        imagenCharlista nullable: true
        audienceLevel nullable: true
        talkFormat nullable: true
        tema unique: true
    }

    static mapping = {
        descripcionCharla type: "text"
        imagenCharlista type: "text"
    }
}
