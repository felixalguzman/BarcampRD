package barcamprd

class Horario {

    String value

    Date dateCreated;
    Date lastUpdated;
    static constraints = {
        value unique: true
    }
}
