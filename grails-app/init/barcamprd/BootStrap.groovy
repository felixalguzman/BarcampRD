package barcamprd

import barcamprd.auth.Role
import barcamprd.auth.User
import barcamprd.auth.UserRole

class BootStrap {

    def init = { servletContext ->

        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
//        def userRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
//        def admin = User.findOrSaveWhere(username: 'admin', password: 'ciscsti2018', nombre: 'CISC', email: 'comitestisc@gmail.com')
        def confirmar = Confirmar.findOrSaveWhere(confirmar: false)

//        admin.save(flush: true, failOnError: true)

        def a1 = Aula.findOrSaveWhere(numero: 21, cantidadPersonas: 60)
        def a2 = Aula.findOrSaveWhere(numero: 22, cantidadPersonas: 60)
        def a3 = Aula.findOrSaveWhere(numero: 23, cantidadPersonas: 60)
        def a4 = Aula.findOrSaveWhere(numero: 24, cantidadPersonas: 60)

//        def h1 = Horario.findOrSaveWhere(value: "9:00 a.m - 10:00 a.m")
//        def h2 = Horario.findOrSaveWhere(value: "10:00 a.m - 11:00 a.m")
//        def h3 = Horario.findOrSaveWhere(value: "11:00 a.m - 12:00 p.m")
//        def h4 = Horario.findOrSaveWhere(value: "12:00 p.m - 1:00 p.m")
//        def h5 = Horario.findOrSaveWhere(value: "2:30 p.m - 3:30 p.m")
//        def h6 = Horario.findOrSaveWhere(value: "3:30 p.m - 4:30 p.m")

        def h1 = Horario.findOrSaveWhere(value: "2:00 p.m - 3:00 p.m")
        def h2 = Horario.findOrSaveWhere(value: "3:00 p.m - 4:00 p.m")
        def h3 = Horario.findOrSaveWhere(value: "4:00 p.m - 5:00 p.m")
        def h4 = Horario.findOrSaveWhere(value: "5:00 p.m - 6:00 p.m")
        def h5 = Horario.findOrSaveWhere(value: "6:00 p.m - 7:00 p.m")

        Charla.findOrSaveWhere(charlista: "Mercedes Wyss", tema: "Modern Identity Management", horario: h1, aula: a1)
        Charla.findOrSaveWhere(charlista: "Stacey Jenkins", tema: "Empowering Soft Skills ", horario: h1, aula: a2)
        Charla.findOrSaveWhere(charlista: "Carlos Camacho", tema: "", horario: h1, aula: a3)

        Charla.findOrSaveWhere(charlista: "Carlos Paulino", tema: "Continuous Integration", horario: h2, aula: a1)
        Charla.findOrSaveWhere(charlista: "Mark Heckler", tema: "", horario: h2, aula: a2)
        Charla.findOrSaveWhere(charlista: "Hilmer Chona", tema: "Dockerizing", horario: h2, aula: a3)

        Charla.findOrSaveWhere(charlista: "Omar Berroterán", tema: "GraphQL", horario: h3, aula: a1)
        Charla.findOrSaveWhere(charlista: "Ukrania", tema: "", horario: h3, aula: a2)
        Charla.findOrSaveWhere(charlista: "Eudris Cabrera", tema: "", horario: h3, aula: a3)

        Charla.findOrSaveWhere(charlista: "Miguel Useche", tema: "WebAssembly", horario: h4, aula: a1)
        Charla.findOrSaveWhere(charlista: "Grzegorz Piwowarek", tema: "The Dark Side of Java ", horario: h4, aula: a2)
        Charla.findOrSaveWhere(charlista: "", tema: "", horario: h4, aula: a3)

        Charla.findOrSaveWhere(charlista: "Eury Perez", tema: "Kotlin's", horario: h5, aula: a1)
        Charla.findOrSaveWhere(charlista: "United Kingdom", tema: "", horario: h5, aula: a2)
        Charla.findOrSaveWhere(charlista: "Aluis Marte", tema: "\"Paralelismo en java para todos\" ", horario: h5, aula: a3)


//        Charla.findOrSaveWhere(charlista: "Luis Contreras", tema: "Una imagen vale mas mil palabras", horario: h1, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Clivens Petit", tema: "Desarrollar Lenguajes DSL(Domain Specific Language) con Antlr", horario: h1, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Eudris Cabrera", tema: "Desarrollo de aplicaciones orientada a la nube con Java EE 8 / Jakarta EE y Microprofile", horario: h1, aula: a3)
//
//        Charla.findOrSaveWhere(charlista: "Cindia Espinal Corona", tema: "Gestión de Riesgos de Seguridad de Informacion", horario: h1, aula: a4)
//        Charla.findOrSaveWhere(charlista: "Jonathan Garrido", tema: "La configuracion default es tu enemiga", horario: h2, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Eury Pérez", tema: "Android Jetpack: Building an Architecture to Scale", horario: h2, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Yhorby Matías", tema: "¿Javascript ha muerto? .NET Web Assembly con Blazor", horario: h2, aula: a3)
//        Charla.findOrSaveWhere(charlista: "Julissa Mateo", tema: "Comunidades tecnologicas para desarrollo profesional", horario: h2, aula: a4)
//
//        Charla.findOrSaveWhere(charlista: "Dante Faña", tema: "Build a CI/CD Pipeline in the Cloud with less than 10 dollars per month", horario: h3, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Alice Pérez", tema: "UX GAME: Diseño de experiencia de usuario para video juegos", horario: h3, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Kendra Mazara", tema: "Como WAF (Web Application Firewall) protege mis aplicaciones", horario: h3, aula: a3)
//        Charla.findOrSaveWhere(charlista: "Leonardo Jimenez", tema: "Como convertirte en un Full Stack Freelancer", horario: h3, aula: a4)
//
//        Charla.findOrSaveWhere(charlista: "Gilmer Chona", tema: "Java 9, 10, 11 y mas", horario: h4, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Pavel Pichardo", tema: "Inteligencia Artificial: Como los emprendedores estan formando el futuro.", horario: h4, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Roberto Abreu", tema: "No todo se resuelve con arreglos. Estructura de datos al rescate", horario: h4, aula: a3)
//        Charla.findOrSaveWhere(charlista: "Cristopher Salas", tema: "Asistentes inteligentes, una nueva forma de interacción virtual", horario: h4, aula: a4)
//        Charla.findOrSaveWhere(charlista: "Carlos Camacho", tema: "Introducción a Serverless - La nube para todos", horario: h5, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Paola García", tema: "Páginas web: Base para toda estrategia de marketing digital", horario: h5, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Aluis Marte", tema: "Procesos, paralelismo y programación", horario: h5, aula: a3)
//        Charla.findOrSaveWhere(charlista: "Eduardo Jana", tema: "Basic Pentesting", horario: h5, aula: a4)
//
//        Charla.findOrSaveWhere(charlista: "Mitra Mejía Guzman", tema: "Working Remotely", horario: h6, aula: a1)
//        Charla.findOrSaveWhere(charlista: "Luis Matos", tema: "¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones moviles?", horario: h6, aula: a2)
//        Charla.findOrSaveWhere(charlista: "Pablo Reinoso", tema: "Lo increíble de flutter", horario: h6, aula: a3)
//        Charla.findOrSaveWhere(charlista: "Karoline Taylor", tema: "Cómo estimar proyectos ágiles sin morir en el intento", horario: h6, aula: a4)

        EstadoRegistro.findOrSaveWhere(numero: 1000, texto: 'PENDIENTE')
        EstadoRegistro.findOrSaveWhere(numero: 1001, texto: 'APROBADO')
        EstadoRegistro.findOrSaveWhere(numero: 1002, texto: 'CONFIRMADO')

        def userRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'admin', password: 'ciscsti2018', nombre: 'CISC', email: 'comitestisc@gmail.com')
        user.save(flush: true, failOnError: true)
        if (!user.getAuthorities().contains(userRole)) {
            UserRole.create(user, userRole, true)
        }

    }
    def destroy = {
    }
}
