package barcamprd

class BootStrap {

    def init = { servletContext ->
        def a1 = new Aula(numero: 21, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a2 = new Aula(numero: 22, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a3 = new Aula(numero: 23, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a4 = new Aula(numero: 24, cantidadPersonas: 60).save(flush: true, failOnError: true)

        def h1 = new Horario(value: "9:00 a.m - 10:00 a.m").save(flush: true, failOnError: true)
        def h2 = new Horario(value: "10:00 a.m - 11:00 a.m").save(flush: true, failOnError: true)
        def h3 = new Horario(value: "11:00 a.m - 12:00 p.m").save(flush: true, failOnError: true)
        def h4 = new Horario(value: "12:00 p.m - 1:00 p.m").save(flush: true, failOnError: true)
        def h5 = new Horario(value: "2:30 p.m - 3:30 p.m").save(flush: true, failOnError: true)
        def h6 = new Horario(value: "3:30 p.m - 4:30 p.m").save(flush: true, failOnError: true)

        new Charla(charlista: "Luis Contreras", tema: "Una imagen vale mas mil palabras", horario: h1, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Clivens Petit", tema: "Desarrollar Lenguajes DSL(Domain Specific Language) con Antlr", horario: h1, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Eudris Cabrera", tema: "Desarrollo de aplicaciones orientada a la nube con Java EE 8 / Jakarta EE y Microprofile", horario: h1, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Cindia", tema: "Gestión de Riesgos de Seguridad de Informacion", horario: h1, aula: a4).save(flush: true, failOnError: true)

        new Charla(charlista: "Jonathan Garrido", tema: "La configuracion default es tu enemiga", horario: h2, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Eury Pérez", tema: "Android Jetpack: Building an Architecture to Scale", horario: h2, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Yhorby Matías", tema: "¿Javascript ha muerto? .NET Web Assembly con Blazor", horario: h2, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Julissa Mateo", tema: "Comunidades tecnologicas para desarrollo profesional", horario: h2, aula: a4).save(flush: true, failOnError: true)

        new Charla(charlista: "Dante Faña", tema: "Build a CI/CD Pipeline in the Cloud with less than 10 dollars per month", horario: h3, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Alice Pérez", tema: "UX GAME: Diseño de experiencia de usuario para video juegos", horario: h3, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Kendra Mazara", tema: "Como WAF (Web Application Firewall) protege mis aplicaciones", horario: h3, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Leonardo Jimenez", tema: "Como convertirte en un Full Stack Freelancer", horario: h3, aula: a4).save(flush: true, failOnError: true)

        new Charla(charlista: "Gilmer Chona", tema: "Java 9, 10, 11 y mas", horario: h4, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Pavel Pichardo", tema: "Inteligencia Artificial: Como los emprendedores estan formando el futuro.", horario: h4, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Roberto Abreu", tema: "No todo se resuelve con arreglos. Estructura de datos al rescate", horario: h4, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Oracle", tema: "-", horario: h4, aula: a4).save(flush: true, failOnError: true)
        new Charla(charlista: "Carlos Camacho", tema: "--", horario: h5, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Paola García", tema: "Páginas web: Base para toda estrategia de marketing digital", horario: h5, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Aluis Marte", tema: "Procesos, paralelismo y programación", horario: h5, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Eduardo Jana", tema: "Basic Pentesting", horario: h5, aula: a4).save(flush: true, failOnError: true)

        new Charla(charlista: "Mitra Mejía Guzman", tema: "Working Remotely", horario: h6, aula: a1).save(flush: true, failOnError: true)
        new Charla(charlista: "Luis Matos", tema: "¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones moviles?", horario: h6, aula: a2).save(flush: true, failOnError: true)
        new Charla(charlista: "Pablo Reinoso", tema: "Lo increíble de flutter", horario: h6, aula: a3).save(flush: true, failOnError: true)
        new Charla(charlista: "Karoline Taylor", tema: "Cómo estimar proyectos ágiles sin morir en el intento", horario: h6, aula: a4).save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
