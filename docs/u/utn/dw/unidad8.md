# Unidad 8

Antes de seguir deberías tener:

1. Conocimiento avanzado de HTML5 y CSS3. [_Repasar Unidad 2_](/u/utn/dw/unidad2.md)
1. Tener a mano la [documentación de DevWeb](/)
1. Conocimiento avanzado del depurador de tu navegador web. (Preferentemente Google [Chrome: devTools](/c/#chrome-dev-tools))

>Esta unidad pertenece al PDF4 que contiene contenido sobre [`Node.js`](/u/utn/dw/unidad8.md#nodejs), [`Express.js`](/u/utn/dw/unidad8.md#expressjs) y [`API REST`](/u/utn/dw/unidad9.md#rest).

## NodeJS

### Introducción Node

NodeJS es una tecnología, básicamente es un framework, que se apoya en el motor de JavaScript V8 para permitir la ejecución de programas hechos en JavaScript en el ámbito independiente del navegador. A veces se hace referencia a NodeJS como Javascript del lado del servidor, pero es mucho más.

La característica más importante de NodeJS, es la de **no ser bloqueante**. Es decir, si durante la ejecución de un programa hay partes que necesitan un tiempo para producirse la respuesta, NodeJS no para la ejecución del programa esperando que esa parte acabe, sino que continúa procesando las siguientes instrucciones. Cuando el proceso lento termina, entonces realiza las instrucciones que fueran definidas para realizar los resultados recibidos. Esto permite que NodeJS sea muy rápido.

!> Recordar ampliar información con la sección ["contenido de NodeJS"](/c/node/) con lecturas, prácticos y demás conocimientos.

#### Instalar NodeJS

Ir al [sitio oficial](https://nodejs.org/es/) e instalar node no es complicado.

Una vez instalado, si abrimos el `cmd` y ejecutamos `node` ya estaríamos corriendo el node.

>Aquí, el PDF debería indicar cómo trabajar con líneas de comandos, cómo ejecutarlo, etc. Da por **supuesto** que los lectores ya tienen ese conocimiento, y está mal dar por supuesto sin saber qué conoce el estudiante. Dependiendo qué versión del sistema operativo Windows tengamos, hay diversas formas de usar la _consola_, recomiendo buscar, y leer al respecto: [cómo usar consola de windows](https://www.google.com/search?q=cómo+usar+consola+en+windows)

Para salir de la consola de _Node.js_ podemos pulsar la combinación de teclas <kbd>Ctrl</kbd> + <kbd>C</kbd> dos veces seguidas o simplemente escribir `.exit` y pulsar <kbd>Enter</kbd>.

### Módulos y NPM

En NodeJS el código se organiza por medio de módulos. NPM es el organizador de paquetes que usaremos con NodeJS.

JavaScript nativo no da soporte a los módulos. Esto es agregado por NodeJS, y se realiza con la sentencia `require()`, que está inspirada en la variante propuesta por _CommonJS_.

La instrucción `require()` recibe como parámetro el nombre del paquete que queremos incluir e inicia una búsqueda en el sistema de archivos, en la carpeta _node_modules_ y sus carpetas hijas, que contienen todos los módulos que podrían ser requeridos.

Por ejemplo, si deseamos usar la librería para que un servidor web escuche solicitudes http, haríamos:

```javascript
var http = require("http");
```

#### Módulos Nativos

Existen distintos módulos que están disponibles de una manera predeterminada con NodeJS, por lo tanto no sería necesario traerlos mediante el gestor de paquetes de NPM.

Los módulos nativos son:

- `http` para escuchar peticiones http
- `fs` para gestionar archivos
- `net` para conexiones de red
- `url` para realizar operaciones con URL
- `util` es un módulo con un conjunto de utilidades
- `child_process` para ejecutar herramientas sobre el sistema
- `domain` para manejar errores
- etc

### Servidor HTTP

### Eventos

## ExpressJS

### Introducción Express

### Configuración

### Rutas

### Otros comandos
