package barcamprd

class Aula {

    int numero
    int cantidadPersonas
    String lugar
    String color

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        numero min: 0
        cantidadPersonas min: 0
        lugar nullable: true
        color nullable: false
    }

    static mapping = {
        color defaultValue: "'#FFFFFF'"
    }
}
