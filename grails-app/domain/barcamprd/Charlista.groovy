package barcamprd

class Charlista {

    static hasMany = [charlas: Charla]

    String nombre
    String imagenCharlista
    String pais
    String telefono


    static constraints = {
        imagenCharlista nullable: true
        pais nullable: true
        telefono nullable: true
    }

    static mapping = {
        imagenCharlista type: "text"
    }
}
