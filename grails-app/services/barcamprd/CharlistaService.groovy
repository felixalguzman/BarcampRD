package barcamprd

import grails.gorm.services.Service

@Service(Charlista)
interface CharlistaService {

    Charlista get(Serializable id)

    List<Charlista> list(Map args)

    Long count()

    void delete(Serializable id)

    Charlista save(Charlista charlista)

}