package barcamprd

import com.sparkpost.Client
import com.sparkpost.exception.SparkPostException
import org.springframework.security.access.annotation.Secured

@Secured(["permitAll"])
class CorreoController {

    def index() throws SparkPostException {
        def lista = Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))
        [participantes : Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))]
        /*String API_KEY = "7cc9b263021914c819d287b6ffc3bda8e90fd9d3";
        Client client = new Client(API_KEY);
        client.sendMessage(
                    "logistica@barcamp.org.do",
                    "dewyn.liriano@gmail.com",
                    "Información importante Barcamp 2018",
                    "Hola",
                    "");
        render "index"*/
    }

    def enviar(){

        /*def plantillaCorreo = g.render(template: "index", mo)*/
//        String API_KEY = "7cc9b263021914c819d287b6ffc3bda8e90fd9d3"
//        Client client = new Client(API_KEY)
//
//        try {
//            client.sendMessage(
//                    "logistica@barcamp.org.do",
//                    "carlosperezurena@gmail.com",
//                    "Información importante Barcamp 2018",
//                    "",
//                    g.render(template: "index"))
//        }catch(SparkPostException e){
//
//        }
    }
}
