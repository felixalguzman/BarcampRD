package barcamprd

class Charlista {

    static hasMany = [charlas: Charla]

    String nombre
    String imagenCharlista
    String pais


    static constraints = {
        imagenCharlista nullable: true
        pais nullable: true

    }

    static mapping = {
        imagenCharlista type: "text"
    }
}
