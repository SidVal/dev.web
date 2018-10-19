# Trabajo Final

## Investigación

- En la tarea, me encontré con la palabra "CRUD", y de la [primer lectura](https://fernando-gaitan.com.ar/crud-con-angular-node-js-y-mongodb-parte-1/) que hice sobre el tema, llegué a la conclusión de que CRUD es lo que busco, ya que es: `cómo agregar, listar, modificar y eliminar registros`.
- Si pasamos de buscar `abm node angular` a `crud node angular mongodb`, y a la vez le agregamos que queremos los resultados del último mes, en google, las cosas cambian. Para empezar, el término "ABM" es un término en español, así que los resultados en su mayoría son en ese idioma, mientras que buscando el término CRUD, la mayoría de los resultados están en inglés.
- En este tutorial [Angular Tutorial: Create a CRUD App with Angular CLI and TypeScript](https://adrianmejia.com/blog/2016/10/01/angular-2-tutorial-create-a-crud-app-with-angular-cli-and-typescript/), encontraremos la información que nos falta para cerrar muchos conceptos que en el curso estamos aprendiendo y nunca fueron explicados como debería haber sido.
- Otro buen tutorial que encontré es [Node.js MongoDB Tutorial with Examples](https://www.guru99.com/node-js-mongodb.html) donde explican en detalle cosas que a mi modo de ver deberían ser brindadas en este curso que he tomado. Hay buen material en ese sitio web, bien explicado, en detalle, especialmente la parte de código, qué es cada parte... si estamos iniciando, sin lugar a dudas es buen material.
- Este tuto usa otra base de datos, pero serviría para analizar: [Angular 6 HttpClient + Node.js/Express RestAPIs + MariaDB example | Sequelize ORM CRUD APIs example](https://grokonez.com/node-js/sequelize/angular-6-httpclient-node-js-express-restapis-mariadb-example-sequelize-orm-crud-apis-example)
- Encontré más con Mongoose: [Mongoose CRUD MongoDB – Angular 6 HttpClient Get/Post/Put/Delete – Node.js/Express RestAPIs](https://grokonez.com/frontend/angular/angular-6/angular-6-httpclient-get-post-put-delete-node-js-express-restapis-with-mongoose-crud-mongodb)
- [Building an Angular CRUD application step by step](https://medium.com/learn-angular/angular-tutorial-learn-angular-from-scratch-step-by-step-angular-5-tutorial-cf0600672418)

### Videos

- Hay videos en español que habría que evaluar: [1](http://www.faztweb.com/tutorial/nodejs-mongodb-crud), [2](http://www.faztweb.com/tutorial/crud-mean-angular-5), ...
- Seguir [este video](http://www.faztweb.com/curso/mean-stack) porque usa Angular

## Desarrollo

Me llevó bastante tiempo entender cómo funcionaba todo, y después de muchísimas horas y dos versiones, llegué a presentar "Elecciones v2" (puedes ver el código fuente aquí: [`www/testing/utn/dw/tfinal/elecciones - v2/`](https://github.com/SidVal/www/tree/master/testing/utn/dw/tfinal/elecciones%20-%20v2)).

### Instrucciones

Si lo descargas, necesitas ejecutar primero el: `npm i` para instalar todos los paquetes del node que necesita para correr. Luego abres la base de datos y ejecutas el `startmongo.bat` de la carpeta _data_ (requiere MongoDB), y finalmente cuando ya está corriendo la base de datos, en la terminal del _Visual Studio Code_ pones: `npm run dev` para que corra el _nodemon_ de desarrollo y puedas desarrollar en tiempo real con el _localhost_ a través de tu Google Chrome.

### Capturas de pantalla

Inicio de la web:

![Elecciones](../docs/assets/img/elecciones-final.jpg)

Votar:

![Votar](../../../assets/img/votar.jpg)

Validación:

![Validación](../../../assets/img/validacion.jpg)

Si el usuario ya se encuentra en la base de datos, sale un aviso para que NO pueda votar y que siga otra persona.

Votando:

En el caso de que la persona no se encuentre en la base de datos, significa que puede votar. Entonces aparece un listado de candidatos para que seleccione su voto.

![Votando](../../../assets/img/votando.jpg)

Votando al candidato:

Cuando se selecciona a un candidato, un aviso aparece para que el votante indique su consentimiento al voto.

![Votando al Candidato](../../../assets/img/votando-candidato.jpg)

Estadísticas

Una vez que se vota, el candidato seleccionado suma un punto y pasa a las estadísticas. Con un progress-bar de bootstrap se muestra el avance hasta el momento.

![Estadísticas](../../../assets/img/estadisticas.jpg)