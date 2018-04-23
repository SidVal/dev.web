# Clase 1 - Presencial

Profesor: Mario Di Giorgi

## Lo que se busca

La idea durante el curso es desarrollar un **sitio web "moderno" desde cero** comprendiendo el funcionamiento de todo lo que es HTML5, CSS3 y JavaScript, ya sea del lado del cliente, como del servidor.

## Clases y Horarios

Todos los martes de 19 a 22 horas vía _GoToMeeting_.

Las clases se graban y la UTN les distribuye los videos de las clases grabadas a los alumnos. La idea es que no se distribuya esos videos hacia afuera; si bien están con privacidad en YouTube, si el link sale hacia afuera, lo ve cualquiera.

Son cuatro (4) meses, más las tres semanas de Trabajo Práctico Final (TPF) que hay que presentar, se va el curso a **cinco (5) meses**.

Empezamos el 8 de Mayo.

***

## Software recomendado

* Microsoft **Visual Studio Code** (_VS Code_), ver [Wiki:Visual](https://github.com/SidVal/dev.web/wiki/Visual-Studio-Code) donde coloco extensiones para probar y otras cosas.
* Google **Chrome** (browser + depuración)
* **MongoDB** es el único que requiere instalarse aparte, el resto se descarga vía NPM del Node.JS

### Introducción Visual Code

Vimos cómo bajar el programa.
Vemos como generar un área de trabajo, y cómo generar el primer archivo.

***
>Arranquemos ...

# Arquitectura básica

Partiendo de la arquitectura cliente - servidor, tenemos:

* Servidor
  * Node.JS
* Cliente
  * Browser >> HTML+CSS+JS

## Browser

### HTML >> HTML5

Para entender HTML de la mejor forma posible haremos una analogía con el cuerpo humano, y lo interpretamos como el esqueleto de nuestro cuerpo. HTML es el esqueleto, nuestro esqueleto.

Todo encaja entre los _Tags_ `<html></html>`; entre éstos tags va el contenido.

Propiedades y atributos van dentro del código html

Siguiendo la analogía de nuestro cuerpo tendremos músculos y piel; así:

* _Músculos_

  Realizan la acción, a través de JavaScript.
  Es lo básico con lo cual el programa a través del código empieza a hacer peticiones hacia otra página, clic, popup, etc.

  * JQuery
  * Angular.JS (Framework)

* _Piel_

  Es la apariencia de nuestra aplicación, es el diseño.

  Aquí veremos:

  * CSS
  * BootStrap
    Es una librería desarrollada inicialmente por Twitter; hoy sigue evolucionando y generando nuevas versiones. Permite tener apps responsivas, o **responsive**. Tiene componentes desarrollados para mejorar el diseño, por ejemplo carousels **(?)**

### Node.js

* MongoDB (base de datos)
* JavaScript
* _Frameworks_
  * Express.JS
  * Angular.JS
* REST (Manejo de APIS, escuchan peticiones y devuelven datos, que serán manejados con **JSON**)

## Primer archivo

La primer página que encuentran los bots (web crawlers) en internet, es `index.html`

Vamos a comenzar a ver `HTML5`
Es un HTML que soporta "multimedia", estandarizado para que "Flash" no esté más en la web.
Aparecen así nuevos tags como `canvas` y `video`.

Toda página _html_ tiene un `DOCTYPE`.

```html
<!DOCTYPE html>
<html>
<head>
    <title>Primer página web</title>
</head>
<body>
</body>
</html>
```

### Charset

Recomienda usar éste `<meta charset="ISO-8891" />` para que aparezca la letra `ñ` en el código, en cambio si se usa la `UTF-8` dice que no lo interpretan todos los navegadores **(?)**

#### Diferencia de criterios

Aunque en clase se indicó que deberíamos usar `ISO-8891` para el español, yo no estoy de acuerdo con éste criterio y en mis archivos usaré `UTF-8` simplemente porque siempre lo he usado y no he tenido ningún problema, considero que el _charset_ por defecto es UTF-8, y en algunas pruebas que he hecho usando este ISO que recomienda el profesor, no funcionaron correctamente las letras `ñ` o `Ñ` ni los símbolos `¿` o `¡`.

Quizás, el ISO que el profe quería proponer era: ¿`ISO-8859-1`?

>Si se requiere ampliar el tema del Charset, y esta diferencia de criterios entre utilizar ISO vs UTF, he realizado una pequeña lectura [aquí](https://www.sitepoint.com/community/t/charset-for-spanish-language-site/5061/2), donde se aclara lo siguiente:
>
>>In the case of Spanish you can choose either ISO 8859-1 or UTF-8. Both will let you use a literal 'í' (and the other letters with diacritical marks used in Spanish, plus the '¿' and '¡' punctuation characters).
>>
>>If you choose UTF-8, make sure you save the files without a BOM (byte order mark). A BOM is completely unnecessary in UTF-8, and will cause problems with some browsers.

### Link

Para enlazar o traer contenido de otra ruta, por ejemplo en el caso de archivos de estilos (`CSS`).

Ejemplo: `<link rel="stylesheet" type="text/css" media="screen" href="estilos.css" />`

## BODY

Es el cuerpo de nuestro html.
Para dividir partes del contenido usamos determinados tags dentro del `body`:

* Header
* Nav
* Section
* Aside
* Footer

### Atributos

* id
* class
* onclick
* style

Si bien conozco el funcionamiento de éstos atributos, sé que debo ampliar las [diferencias entre id y class](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Selectors) porque siempre me confundo.

#### Class

El selector de clase consiste en un punto `.`, seguido de un nombre de clase. El nombre de clase es cualquier valor, sin espacios, colocado dentro de un atributo de clase HTML, es decir el `class`. Cada uno puede elegir el nombre que queramos para la clase. También es posible poner múltiples elementos en un documento HTML y pueden tener el mismo valor de clase, y un solo elemento puede tener múltiples nombres de clase separados por espacios en blanco.

**Códigos:**

_HTML_

```html
<ul>
    <li class="primer terminado">Crear la lista</li>
    <li class="segundo terminado">Crear estilo para terminado</li>
    <li class="tercero">Depurar</li>
</ul>
```

_CSS_

```css
/* Ejemplo de clases */
.primer {font-weight: bold;}
.terminado {text-decoration: line-through;}
```

_RESULTADO_

?> [Ver en linea el resultado](https://jsfiddle.net/jq9d38wo/); dale, puedes hacer cambios y romper :smile:

#### Id

El selector de ID consta de un símbolo hash (`#`), seguido del nombre ID de un elemento dado. Cualquier elemento puede tener un nombre de ID único establecido con el atributo `id`. Depende de cada uno elegir un nombre de identificación. Es la forma más eficiente de seleccionar un solo elemento.

!> **Importante**: el nombre de identificación debe ser único en el documento. En la página de [Mozilla Simple Selectors](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Simple_selectors) indican que el comportamiento es impredecible si se dan ids duplicadas. Por ejemplo, en algunos navegadores, solo se cuenta la primera instancia y el resto se ignora.

***

<div align="right">-- Fin de la clase --</div>