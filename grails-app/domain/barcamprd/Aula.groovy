package barcamprd

class Aula {

    int numero
    int cantidadPersonas

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        numero min: 0
        cantidadPersonas min: 0
    }
}
