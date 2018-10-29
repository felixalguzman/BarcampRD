package barcamprd

class EstadoRegistro {

    static int ESTADO_REGISTRADO = 1000
    static int ESTADO_APROBADO = 1001
    static int ESTADO_CONFIRMADO = 1002

    int numero
    String texto

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        numero unique: true
    }
}
