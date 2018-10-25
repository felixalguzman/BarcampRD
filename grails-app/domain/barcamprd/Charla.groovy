package barcamprd

class Charla {

    String charlista
    String tema
    Aula aula
    Horario horario
    boolean llena = false
    int cantidadAsistentes = 0

    Date dateCreated;
    Date lastUpdated;

    static constraints = {
        tema unique: true
    }
}
