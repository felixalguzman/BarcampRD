package barcamprd

import grails.gorm.services.Service

@Service(Aula)
interface AulaService {

    Aula get(Serializable id)

    List<Aula> list(Map args)

    Long count()

    void delete(Serializable id)

    Aula save(Aula aula)

}