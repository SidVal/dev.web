# Backend Roadmap {docsify-ignore-all}

El roadmap del desarrollador que quiere dedicarse al backend entonces más o menos sería lo siguiente:

1. Debemos elegir un lenguaje:
    - Scripting Languages
      - Python
      - Ruby
      - PHP
      - [Node.js](/c/node/)
      - TypeScript (opcional)
    - Funtional Languages
      - Elixir
      - Scala
      - Erlang
      - Clojure
      - Haskell
    - Multiparadigm Languages
      - GoLang
      - Rust
    - Enterprisey Options
      - Java
      - .NET

  ?> Para los nuevos desarrolladores, si estamos empezando de cero en el desarrollo en backend, se recomienda elegir un lenguaje de scripting, y para empezar fácil-y-rápido podría ser Node.js y PHP. Si ya tienes experiencia con lenguajes de scripting, se recomienda pasar a GoLang, Rust o Clojure para tener una nueva perspectiva.

2. Practicar lo que hemos aprendido  
  Poner alguna idea en práctica en forma de programación. Pensar en algo que hacemos todos los días, una tarea, y automatizarla. Preferentemente que tenga un comando, que tome datos de algún lugar, y los guarde en otro lugar, en formato `JSON`. Que pueda leer luego esos datos del JSON y crear un directorio.

3. Aprender algún gestor de paquetes  
  Del lenguaje que elegimos, seguramente habrá un gestor de paquetes (package manager), por ejemplo en NodeJS habrá NPM o Yarn, en PHP tenemos Composer, Python tiene pip, Ruby sus gems, etc.

  Estos gestores de paquetes nos ayudarán a llevar las dependencias, y un control (y gestión) más avanzado de versiones para las aplicaciones que desarrollemos.

4. Estándares y Mejores Prácticas  
  Cada lennguaje tendrá sus propios estándares y mejores prácticas para realizar tareas y procesos. Habrá que estudiar éstos estándares teniendo en cuenta los lenguajes que elijamos.

  ?> Asegurarse de leer lo relativo a las mejores prácticas relacionadas a los temas de SEGURIDAD. Es muy importante tener en cuenta las guías OWASP y entender los distintos temas de seguridad y cómo evitar los problemas de seguridad en cada lenguaje.

5. Armar y distribuir algún paquete/librería  
  Se recomienda crear un paquete o librería para que se use por otras personas, que nos aseguremos de seguir los estándares y las buenas prácticas. Se recomienda ayudar y colaborar con un proyecto de código abierto, que busquemos a través de GitHub, hay muchos proyectos disponibles en cualquier lenguaje a desarrollar.

6. Aprender acerca de Testing  
  Hay diferentes tipos de pruebas (o testing) pero para empezar es necesario con pruebas unitarias e integrales en el lenguaje que hayamos seleccionado en el principio.

7. Escribir pasos de pruebas para Testing  
  Empezar con pruebas unitarias para las tareas prácticas que necesitemos testear. 

  ?>Aprender cómo calcular el "Test Coverage".

8. Aprender sobre Bases de Datos Relacionales  
  Aquí hay muchas opciones, sin embargo si has aprendido una, suele ser más fácil aprender las demás opciones. La mayoría empieza con mySQL, también tienes: Oracle, MariaDB, PostgreSQL, MSSQL.

9. Tiempo de prácticas  
  Crea una aplicación simple que use todo lo que hemos mencionado hasta aquí, debe tener opciones de registro, login, y [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete). Crea un blog, por ejemplo. Donde cualquier persona pueda registrarse y tener un perfil público, pueda publicar, editar o borrar sus propios escritos, y los muestre a otros lectores.

  ?>Asegúrate de seguir las buenas prácticas, los estándares, y de escribir los pasos de pruebas. También ten en cuenta la base de datos, agrega indexes, usa el motores de bases de datos apropiado, y asegúrate de analizar las consultas de SQL antes de llevarlas a la aplicación final.

10. Aprender un Framework  
  Dependiendo de qué lenguaje hayamos elegido, será (o no) necesario -y opcional, aprender un Framework. Hay muchas opciones:

    - PHP tiene Laravel, o Symfony, Slim, o bien Lumen como microframeworks.
    - NodeJS tiene Express, Hapi, etc.

11. Tiempo de prácticas  
  Tomar el mismo ejemplo que usamos en el punto 9, y hacerlo de nuevo usando un Framework a elección.

12. Aprender sobre Bases de Datos no relacionales (NoSQL)  
  Primero debemos entender qué son, qué diferencias tienen con las bases de datos relacionales, y por qué son necesarias. Hay diferentes opciones, si no tienes una opción elegida, se recomienda ir por MongoDB. 

  ?>Una vez que hayas leído (y aprendido lo básico sobre MongoDB), dale una mirada a otras como RethinkDB, Cassandra, Couchbase, etc.

13. Coaching  
  Aprender sobre cómo implementar una aplicación de nivel coaching usando Redis o Memcached.

14. Creando RESTful APIs  
  Entender REST y aprender cómo crear RESTful APIs.

15. Metodologías para Autentificación/Autorización  
  Leer sobre las diferencias entre ambas metodologías y cómo implementarlas:

    - OAuth
    - Basic Authentication
    - Token Authentication
    - JWT
    - OpenID

16. Message Brokers  
  Aprender sobre los brokers de mensaje como `RabbitMQ` y `Kafka`. Si debemos elegir uno, se recomienda empezar por `RabbitMQ`. Aprender por qué son necesarios.

17. Aprender sobre un motor de búsqueda  
  A medida que vaya creciendo la aplicación, las consultas simples dejarán de ser "simples" y será necesario un motor de búsqueda. Hay muchas opciones, y cada una tiene sus diferencias, podemos elegir entre:

  - ElasticSearch
  - Solr
  - Sphink

18. Aprender cómo usar Docker

19. Conocimientos sobre WebServers  
  Aquí hay muchas opciones, habría que investigar bien las opciones y sus diferencias. Algunas son:

    - Apache
    - Nginx
    - Caddy
    - MS IIS

20. Aprender a usar WebSockets

21. Aprender GraphQL  
  Si bien no es algo obligatorio, sentite libre de darle una mirada y ver qué es y por qué le dicen el nuevo REST.

22. Leer sobre Bases de Datos Graph  
  Nuevamente no es algo requerido, pero está bueno saber de qué se trata o tener una idea de lo que pueden ofrecer.

23. Otros temas que no hemos mencionado  
  Investigar, explorar, aún hay muchos temas sin mencionar, por ejemplo:

    - Profiling
    - Static Analysis
    - DDD
    - SOAP

***

Lo veamos gráficamente:

![Backend Roadmap](https://raw.githubusercontent.com/kamranahmedse/developer-roadmap/master/img/backend.png)

Llegué a una interesante infografía a través de un post en Medium que me interesó apenas leí las primeras líneas:
>El desarrollo web de hoy es completamente diferente de lo que era hace unos años... 
>
>_Fuente:_ [Modern Backend Developer](https://medium.com/tech-tajawal/modern-backend-developer-in-2018-6b3f7b5f8b9)

La verdad que es un post (en inglés) excelente, he leído pocos aportes tan completos.

## Lecturas

- [Beginner’s Web Development Guide Part 2: Backend](https://medium.com/devtrailsio/beginners-web-development-guide-part-2-backend-fd466212dbfc)
   ![This is the heart and brains of your application](https://cdn-images-1.medium.com/max/1000/1*1DSs5H0UvHru5L1tL9IrMA.png)
   >The color coding of the chart is very simple: yellow lines show the basic things you need to learn, orange represents more advanced topics that you can leave for later, and grey are niche topics that might be useful for special projects.

## Frontend Roadmap

No te pierdas la infografía del "[Frontend Roadmap](/c/frontend-roadmap.md)".
