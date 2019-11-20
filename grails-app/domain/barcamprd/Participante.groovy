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

    Critica critica

    static hasMany = [charlas: Charla]

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        cedula unique: true
        correo unique: true
        critica nullable: true
    }

    static mapping = {
        charlas(lazy: false)
    }
}
