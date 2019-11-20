package barcamprd

class Participante {

    String cedula
    String nombre
    String correo
    String sizeCamiseta
    EstadoRegistro estado
    boolean correoConfirmacionEnviado = false
    boolean correoEncuestaEnviado = false
    boolean pago = false


    static hasMany = [charlas: Charla, criticas: Critica]

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        cedula unique: true
        correo unique: true
    }

    static mapping = {
        charlas(lazy: false)
        criticas(lazy: false)
    }
}
