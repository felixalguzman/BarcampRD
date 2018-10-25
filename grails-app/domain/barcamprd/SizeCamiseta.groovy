package barcamprd

class SizeCamiseta {

    String value

    Date dateCreated
    Date lastUpdated

    static constraints = {
        value unique: true
    }
}
