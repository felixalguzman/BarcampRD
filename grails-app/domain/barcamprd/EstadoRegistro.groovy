package barcamprd

class EstadoRegistro {

    int numero
    String texto

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        numero unique: true
    }
}
