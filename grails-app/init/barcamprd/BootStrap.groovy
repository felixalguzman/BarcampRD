package barcamprd

class BootStrap {

    def init = { servletContext ->
        def a1 = Aula.findByNumero(21) ?: new Aula(numero: 21, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a2 = Aula.findByNumero(22) ?: new Aula(numero: 22, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a3 = Aula.findByNumero(23) ?: new Aula(numero: 23, cantidadPersonas: 60).save(flush: true, failOnError: true)
        def a4 = Aula.findByNumero(24) ?: new Aula(numero: 24, cantidadPersonas: 60).save(flush: true, failOnError: true)

        def h1 = Horario.findByValue("9:00 a.m - 10:00 a.m") ?: new Horario(value: "9:00 a.m - 10:00 a.m").save(flush: true, failOnError: true)
        def h2 = Horario.findByValue("10:00 a.m - 11:00 a.m") ?: new Horario(value: "10:00 a.m - 11:00 a.m").save(flush: true, failOnError: true)
        def h3 = Horario.findByValue("11:00 a.m - 12:00 p.m") ?: new Horario(value: "11:00 a.m - 12:00 p.m").save(flush: true, failOnError: true)
        def h4 = Horario.findByValue("12:00 p.m - 1:00 p.m") ?: new Horario(value: "12:00 p.m - 1:00 p.m").save(flush: true, failOnError: true)
        def h5 = Horario.findByValue("2:30 p.m - 3:30 p.m") ?: new Horario(value: "2:30 p.m - 3:30 p.m").save(flush: true, failOnError: true)
        def h6 = Horario.findByValue("3:30 p.m - 4:30 p.m") ?: new Horario(value: "3:30 p.m - 4:30 p.m").save(flush: true, failOnError: true)

        Charla.findByCharlista("Luis Contreras") ?: new Charla(charlista: "Luis Contreras", tema: "Una imagen vale mas mil palabras", horario: h1, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Clivens Petit") ?: new Charla(charlista: "Clivens Petit", tema: "Desarrollar Lenguajes DSL(Domain Specific Language) con Antlr", horario: h1, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Eudris Cabrera") ?: new Charla(charlista: "Eudris Cabrera", tema: "Desarrollo de aplicaciones orientada a la nube con Java EE 8 / Jakarta EE y Microprofile", horario: h1, aula: a3).save(flush: true, failOnError: true)

        Charla.findByCharlista("Cindia Espinal Corona") ?: new Charla(charlista: "Cindia Espinal Corona", tema: "Gestión de Riesgos de Seguridad de Informacion", horario: h1, aula: a4).save(flush: true, failOnError: true)
        Charla.findByCharlista("Jonathan Garrido") ?: new Charla(charlista: "Jonathan Garrido", tema: "La configuracion default es tu enemiga", horario: h2, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Eury Pérez") ?: new Charla(charlista: "Eury Pérez", tema: "Android Jetpack: Building an Architecture to Scale", horario: h2, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Yhorby Matías") ?: new Charla(charlista: "Yhorby Matías", tema: "¿Javascript ha muerto? .NET Web Assembly con Blazor", horario: h2, aula: a3).save(flush: true, failOnError: true)
        Charla.findByCharlista("Julissa Mateo") ?: new Charla(charlista: "Julissa Mateo", tema: "Comunidades tecnologicas para desarrollo profesional", horario: h2, aula: a4).save(flush: true, failOnError: true)

        Charla.findByCharlista("Dante Faña") ?: new Charla(charlista: "Dante Faña", tema: "Build a CI/CD Pipeline in the Cloud with less than 10 dollars per month", horario: h3, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Alice Pérez") ?: new Charla(charlista: "Alice Pérez", tema: "UX GAME: Diseño de experiencia de usuario para video juegos", horario: h3, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Kendra Mazara") ?: new Charla(charlista: "Kendra Mazara", tema: "Como WAF (Web Application Firewall) protege mis aplicaciones", horario: h3, aula: a3).save(flush: true, failOnError: true)
        Charla.findByCharlista("Leonardo Jimenez") ?: new Charla(charlista: "Leonardo Jimenez", tema: "Como convertirte en un Full Stack Freelancer", horario: h3, aula: a4).save(flush: true, failOnError: true)

        Charla.findByCharlista("Gilmer Chona") ?: new Charla(charlista: "Gilmer Chona", tema: "Java 9, 10, 11 y mas", horario: h4, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Pavel Pichardo") ?: new Charla(charlista: "Pavel Pichardo", tema: "Inteligencia Artificial: Como los emprendedores estan formando el futuro.", horario: h4, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Roberto Abreu") ?: new Charla(charlista: "Roberto Abreu", tema: "No todo se resuelve con arreglos. Estructura de datos al rescate", horario: h4, aula: a3).save(flush: true, failOnError: true)
        Charla.findByCharlista("Oracle") ?: new Charla(charlista: "Oracle", tema: "-", horario: h4, aula: a4).save(flush: true, failOnError: true)
        Charla.findByCharlista("Carlos Camacho") ?: new Charla(charlista: "Carlos Camacho", tema: "--", horario: h5, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Paola García") ?: new Charla(charlista: "Paola García", tema: "Páginas web: Base para toda estrategia de marketing digital", horario: h5, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Aluis Marte") ?: new Charla(charlista: "Aluis Marte", tema: "Procesos, paralelismo y programación", horario: h5, aula: a3).save(flush: true, failOnError: true)
        Charla.findByCharlista("Eduardo Jana") ?: new Charla(charlista: "Eduardo Jana", tema: "Basic Pentesting", horario: h5, aula: a4).save(flush: true, failOnError: true)

        Charla.findByCharlista("Mitra Mejía Guzman") ?: new Charla(charlista: "Mitra Mejía Guzman", tema: "Working Remotely", horario: h6, aula: a1).save(flush: true, failOnError: true)
        Charla.findByCharlista("Luis Matos") ?: new Charla(charlista: "Luis Matos", tema: "¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones moviles?", horario: h6, aula: a2).save(flush: true, failOnError: true)
        Charla.findByCharlista("Pablo Reinoso") ?: new Charla(charlista: "Pablo Reinoso", tema: "Lo increíble de flutter", horario: h6, aula: a3).save(flush: true, failOnError: true)
        Charla.findByCharlista("Karoline Taylor") ?: new Charla(charlista: "Karoline Taylor", tema: "Cómo estimar proyectos ágiles sin morir en el intento", horario: h6, aula: a4).save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
