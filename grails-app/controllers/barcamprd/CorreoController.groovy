package barcamprd

import com.mashape.unirest.http.HttpResponse
import com.mashape.unirest.http.Unirest
import com.sparkpost.Client
import com.sparkpost.exception.SparkPostException
import org.springframework.security.access.annotation.Secured

@Secured(["permitAll"])
class CorreoController {

    def groovyPageRenderer;

    def proceso() throws SparkPostException {

        //String salida = g.render(view: "index", model: model)
        //HttpResponse<String> salida =  Unirest.get("https://form.barcamp.org.do/correo/").asString()
        HttpResponse<String> salida =  Unirest.get("http://localhost:8080/correo/").asString()
        println "la salida: "+salida.body
        String API_KEY = "7cc9b263021914c819d287b6ffc3bda8e90fd9d3";
        Client client = new Client(API_KEY);
        client.sendMessage(
                    "logistica@barcamp.org.do",
                    "dewyn.liriano@gmail.com",
                    "Información importante Barcamp 2018",
                    "",
                    salida.body)
       render "Enviando....."
    }

    def index(){
        def lista = Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))
        [participantes : Registro.findAllByEstado(EstadoRegistro.findByNumero(EstadoRegistro.ESTADO_APROBADO))]
    }

    def qr(){
        println(params.id)
        ['participante': Registro.findById(params.id as long)]
    }
}
