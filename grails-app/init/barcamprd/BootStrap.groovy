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

        def a1 = Aula.findOrSaveWhere(numero: 21, cantidadPersonas: 55)
        def a2 = Aula.findOrSaveWhere(numero: 22, cantidadPersonas: 55)
        def a3 = Aula.findOrSaveWhere(numero: 23, cantidadPersonas: 55)
        def a4 = Aula.findOrSaveWhere(numero: 24, cantidadPersonas: 55)

//        def h1 = Horario.findOrSaveWhere(value: "9:00 a.m - 10:00 a.m")
//        def h2 = Horario.findOrSaveWhere(value: "10:00 a.m - 11:00 a.m")
//        def h3 = Horario.findOrSaveWhere(value: "11:00 a.m - 12:00 p.m")
//        def h4 = Horario.findOrSaveWhere(value: "12:00 p.m - 1:00 p.m")
//        def h5 = Horario.findOrSaveWhere(value: "2:30 p.m - 3:30 p.m")
//        def h6 = Horario.findOrSaveWhere(value: "3:30 p.m - 4:30 p.m")

        def h1 = Horario.findOrSaveWhere(value: "2:30 p.m - 3:30 p.m")
        def h2 = Horario.findOrSaveWhere(value: "3:30 p.m - 4:30 p.m")
        def h3 = Horario.findOrSaveWhere(value: "4:30 p.m - 5:30 p.m")
        def h4 = Horario.findOrSaveWhere(value: "5:30 p.m - 6:30 p.m")
//        def h5 = Horario.findOrSaveWhere(value: "6:00 p.m - 7:00 p.m")

        Charla.findOrSaveWhere(charlista: "Mercedes Wyss", tema: "(ES) Modern Identity Management", horario: h1, aula: a1, descripcionCharla: "Identity Management is an umbrella term for all of the core logic around identity. The main purpose of this talk is gain an in-depth knowledge of terms like manage provisioning, account management, identity governance, authentication, authorization, identity federation and how improve this with PaaS")
        Charla.findOrSaveWhere(charlista: "Oleh Dokuka", tema: "(EN) RSocket - new Reactive cross-network Protocol", horario: h1, aula: a2, descripcionCharla: "Are you doing microservices? Got exhausted of slow REST? Got mad of unreliable gRPC? An answer is RSocket. RSocket in a new network protocol with reactive streams semantic. It will make your system super fast and resilient. Come and learn why RSocket is the future of any cross-services communication")
        Charla.findOrSaveWhere(charlista: "Stacey Jenkins", tema: "(EN) Empowering Soft Skills with Team Dynamics & Communication Skills (For Software Engineering Team Projects & Customer Service): Using Active listening Techniques", horario: h1, aula: a3, descripcionCharla: "The implementation/training of Team Dynamics & Active Listening is ideal for individuals who work in a group setting and who have Teams working in the areas of Engineering, Programming and DevOps. •This concept has proven SOUND and EFFICIENT in regards to producing advanced degrees of SUCCESS in the areas of administration performance and TEAM-ROLE awareness. •This session is designed to enhance the characteristics of a development team and allow them to be cross-efficient and well-informed of frameworks and sufficient-enough to the sense where they can offer all essential skillsets")
        Charla.findOrSaveWhere(charlista: "Eliezer Herrera", tema: "(ES) Plataformas, herramientas y librerías políglotas en plataformas Java", horario: h1, aula: a4, descripcionCharla: "Lenguajes que antes no fueron muy populares con el paso del tiempo se han ido especializando en áreas específicas, y ganando popularidad en sus campos de mayor influencia, como lo son Python en machine learning o R en análisis estadístico. Otros nuevos se van creando para tareas puntuales, como lo es Typescript, con su finalidad de llevar tipado estático a Javascript. Esta amalgama de lenguajes ha creado retos de arquitectura en sistemas que requieran integrar desarrollos de lenguajes distintos.")

        Charla.findOrSaveWhere(charlista: "Carlos Paulino", tema: "(ES) Build, Test, Ship, Repeat: Effective testing and delivery using Continuous Integration", horario: h2, aula: a1, descripcionCharla: "In this talk we are going to explore how we can improve product quality, stability and delivery speed by embracing Continuous Integration and Firebase Test")
        Charla.findOrSaveWhere(charlista: "Igor Suhorukov", tema: "(EN) Continuous code quality in java projects", horario: h2, aula: a2, descripcionCharla: "We use SonarQube as part of our continuous integration pipeline and try to reduce code complexity and debt in each sprint. I hope that static code analysis will be very helpful for each java project")
        Charla.findOrSaveWhere(charlista: "Clievens Petit", tema: "(ES) Desarrollar Lenguajes DSL (Domain Specific Language) con Antlr", horario: h2, aula: a3, descripcionCharla: "Un DSL es un lenguaje que tiende a resolver un problema bien específico como SQL, HTML, XML entre otros. Y Antlr, por otro lado, es un generador de Parser que hace que la tarea de escribir nuestros propios lenguajes para un sin número de casos sea una experiencia placentera.")
        Charla.findOrSaveWhere(charlista: "Carlos Camacho", tema: "(ES) Serverless con  Openfass y Java", horario: h2, aula: a4, descripcionCharla: "Cuando pensamos en Serverless es muy difícil no asociarlo con los servicios Amazon AWS, Google Cloud y Azure functions y podemos creer que fuera de esas plataformas no es posible implementarlas. Existe una solución simple y escalable utilizando Docker que abre los Serverless a todos bajo OpenFaaS. In the talk, I present an alternative approach of using frameworks, enabling diversity, opening innovation opportunities, and positively impacting de developer ownership")

        Charla.findOrSaveWhere(charlista: "Omar Berroterán", tema: "(ES) GraphQL: Creando un webservice rapidamente sin multiples endpoints", horario: h3, aula: a1, descripcionCharla: "Cansado de desplegar los WebAPI con cada nueva actualización para ajustarse a los cambios?, te presento GraphQL y como comenzar a implementarlo en las empresa y proyectos personales ahorrando tiempo en todas las etapas de desarrollo. Adiós a los WebAPI")
        Charla.findOrSaveWhere(charlista: "Josh Long", tema: "(EN) The Reactive Revolution", horario: h3, aula: a2, descripcionCharla: "The reactive revolution continues. For as much as we've been talking about reactive programming in Spring for the last few years the journey has only just begun. Join me, Spring Developer Advocate Josh Long (@starbuxman), and we'll take our reactive applications further, looking at how to build microservices for cloud platforms like Pivotal Application Service (Cloud Foundry) and PKS (Kubernetes)")
        Charla.findOrSaveWhere(charlista: "Hilmer Chona", tema: "(ES) Dockerizing Java applications with Oracle Cloud", horario: h3, aula: a3, descripcionCharla: "Containerization helps to package applications to be released and updated severals times a day in an easy and fast way. This demo-driven session shows how a Microservice can be developed with Java Technologies, packaged with containerization techniques and deploy on Oracle Kubernetes Engine")
        Charla.findOrSaveWhere(charlista: "Eudris Cabrera", tema: "(ES) Pruebas de integración para servicios Rest usando Rest Assured", horario: h3, aula: a4, descripcionCharla: "El objetivo de ésta sección es mostrar como realizar pruebas integrales sobre los puntos finales (endpoints) de los servicios REST utilizando Assured, una librería Java para la validación de servicios REST.")

        Charla.findOrSaveWhere(charlista: "Miguel Useche", tema: "(ES) Java is back to the browser thanks to WebAssembly!", horario: h4, aula: a1, descripcionCharla: "In the past it was very popular to run Java code inside browsers trough Java Applets, but it lost popularity in the past decade.But now thanks to WebAssembly (a way to run other languages besides JS on the browser) it's possible to run your Java app in the browser again. Learn who you can do it!")
        Charla.findOrSaveWhere(charlista: "Sebastian Daschner", tema: "(EN) Cloud Native, Service-Meshed Java Enterprise With Istio", horario: h4, aula: a2, descripcionCharla: "This sessions shows how to implement service-meshed applications using Java EE 8 and MicroProfile. We will develop a mesh of microservices, managed by Kubernetes and Istio")
        Charla.findOrSaveWhere(charlista: "Eury Perez", tema: "(ES) Unleashing Kotlin's power: A talk for Java developers", horario: h4, aula: a3, descripcionCharla: "Kotlin is the most trending topic for JVM-related professionals, because of the functional fever and all it has to offer. As per my experience Java devs don't take advantage of it fully, because it's not only about learning a new syntax, but changing the mindset. This talk is aimed to solve that")
        Charla.findOrSaveWhere(charlista: "Aluis Marte", tema: "(ES) Paralelismo en java para todos", horario: h4, aula: a4, descripcionCharla: "Tienes problemas a la hora de programar en paralelo? no sabes como usar de forma eficiente tu CPU? tienes tareas complejas que tardan mucho, pero no sabes como atacarlas? Programas en paralelo, pero te consumes la maquina sin pensar en los demás procesos?")

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

//        def userRole = Role.findOrCreateWhere(authority: 'ROLE_ADMIN')
//        def user = User.findOrCreateWhere(username: 'admin', password: 'ciscsti2018', nombre: 'CISC', email: 'comitestisc@gmail.com')
//        if(user == null){
//            user.save(flush: true, failOnError: true)
//        }
//        if (!user.getAuthorities().contains(userRole)) {
//            UserRole.create(user, userRole, true)
//        }

    }
    def destroy = {
    }
}
