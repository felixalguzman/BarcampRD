package barcamprd

class EstadoRegistro {

    //CUANDO SELECCIONA LAS CHARLAS
    static int ESTADO_PENDIENTE = 1000
    //CUANDO SE VERIFICA QUE HA HECHO EL PAGO.
    static int ESTADO_APROBADO = 1001
    //CUANDO SE HIZO EL CHECK IN EL DIA DEL EVENTO
    static int ESTADO_CONFIRMADO = 1002

    int numero
    String texto

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        numero unique: true
    }
}
