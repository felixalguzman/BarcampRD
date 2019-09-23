package barcamprd

import grails.gorm.services.Service

@Service(Charla)
interface CharlaService {

    Charla get(Serializable id)

    List<Charla> list(Map args)

    Long count()

    void delete(Serializable id)

    Charla save(Charla charla)

}