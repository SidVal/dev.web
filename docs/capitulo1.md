# Capítulo 1

>Arranquemos; cabe aclarar que el contenido de éste documento es una mezcla entre lo que se dió en clase [ver clases](/clases/), y mi propia interpretación mientras voy estudiando y perfeccionando mi conocimiento previo (y nuevo) sobre el tema. No destaco a cada rato lo que se dió en x clase y lo que yo agrego, porque sería un desastre de redacción y muy complejo para volver a leer el documento, y sacar algo bueno del mismo.
>
>Se busca que estos documentos sean un repaso para aquellas personas que quieren aprender a desarrollar web, o afianzar sus conocimientos. 
>
!>Si gustas corregir :pencil2: o sugerir :bulb: algún cambio, [**por favor envía tu mensaje aquí**](https://github.com/SidVal/dev.web/issues/new?assignee=SidVal). :pray: 
>
?>Se creará más adelante una página del tipo "sobre el autor" o algo relacionado, para comentar quién soy, por qué hago todo ésto, etcétera etcétera.

## Arquitectura básica

Partiendo de la arquitectura cliente - servidor, tenemos:

* Servidor
  * Node.JS
* Cliente
  * Browser >> HTML+CSS+JS

## Browser

### HTML >> HTML5

Para entender HTML de la mejor forma posible haremos una analogía con el cuerpo humano, y lo interpretamos como el esqueleto de nuestro cuerpo. HTML es el esqueleto, nuestro esqueleto.

Todo encaja entre los _Tags_ `<html></html>`; entre éstos tags va el contenido.

Propiedades y atributos van dentro del código html.

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
    Es una librería desarrollada inicialmente por Twitter; hoy sigue evolucionando y generando nuevas versiones. Permite tener apps responsivas, o **responsive**. Tiene componentes desarrollados para mejorar el diseño, y hacerlo más simple a la hora de exponerlo en distintos dispositivos conectados a Internet.

## Servidor

### Node.js

* MongoDB (base de datos)
* JavaScript
* _Frameworks_
  * Express.JS
  * Angular.JS
* REST (Manejo de APIS, escuchan peticiones y devuelven datos, que serán manejados con **JSON**)

***

## Primer archivo HTML

La primer página que encuentran los bots (web crawlers) en internet, es `index.html`

Vamos a comenzar a ver `HTML5`. Última versión vigente (al momento de redacción de éste artículo): [HTML 5.3](https://www.w3.org/TR/html53/)

Pero antes de HTML5 empecemos con HTML, y su significado: _Hyper Text Markup Language_. Si bien en su nombre está el "lenguaje", no se considera HTML como un lenguaje de programación.

?>¿Por qué NO es un lenguaje de programación?
?>HTML es un lenguaje de marcado. Se utiliza para definir estructuras y no se considera programación porque carece de expresiones (sumas, restas, variables, etc) y operadores lógicos (if, for, while, bucles, etc), por lo que no se puede programar nada utilizando solamente HTML. [Fuente](https://es.quora.com/Por-qu%C3%A9-no-se-considera-HTML-como-lenguaje-de-programaci%C3%B3n/answer/Rolan-Gonzalez)

### Etiquetas

La estructura del HTML se basa en elementos que son líneas de texto modificadas con unas marcas llamadas etiquetas o tags. Así, se sabe que ciertas etiquetas requieren apertura y cierre, por ejemplo `p` (etiqueta de párrafo), que será abierta con `<p>` y cerrada con `</p>`. Otras etiquetas no requieren cierre, la más común es `<img />` :arrow_left: ver qué diferencia tiene con la etiqueta de apertura `<p>`.

Las etiquetas dentro de HTML deben estar correctamente anidadas. Para comprender mejor a qué me refiero, daré un ejemplo:

```html
<!-- anidación incorrecta -->
<p>Esto esta <em>muy <strong>mal</em>!</strong></p>

<!-- anidación correcta -->
<p>Esto <em>esta <strong>bien</strong>.</em></p>
```

HTML5 soporta "multimedia", estandarizado ya que al momento de surgir la web (y su organización que busca estandarizar todo lo que sea web W3C) estaba quitando FLASH. Aparecen así nuevos tags como `canvas` y `video`.

Las etiquetas en HTML son lo que se dice "case insensitive", es decir, no sensibles a mayúscuas o minúsculas. Aunque por convención se usa todo en minúsculas, no es algo estricto. _(En el PDF del capítulo 1 de clases, indican que deberíamos usar las etiquetas en mayúsculas, entiendo que es a fines didácticos, para diferenciar las etiquetas de los valores)_.

Párrafo aparte para las etiquetas de cierre, y aquellas que no requieren etiquetas de cierre, como `META`. De acuerdo al documento de clase, en HTML5 no es necesario que las etiquetas que no requieren cierre sean cerradas en sí mismas. Veamos código para entender mejor:

`<meta name="description" content="..." />`

Será lo mismo que:
`<meta name="description" content="...">`

Aunque, por una cuestión de **compatibilidad** se recomienda siempre usar el primer caso (cerrando la etiqueta en sí misma).

### Atributo

Los atributos modifican las acciones de las etiquetas. Algunas etiquetas pueden o no tener atributos.

Los atributos se colocan dentro de la etiqueta de inicio y consisten en un nombre y un valor, separados por un carácter "=". El valor del atributo puede permanecer sin comillas si no contiene caracteres de espacio o cualquiera de `"`, `'`, `=`, `<` o `>`. De lo contrario, debe ser citado utilizando comillas simples o dobles. El valor, junto con el carácter `=`, se puede omitir por completo si el valor es la cadena vacía.

```html
<!-- atributos vacios -->
<input name=address disabled>
<input name=address disabled="">

<!-- atributos con valor -->
<input name=address maxlength=200>
<input name=address maxlength='200'>
<input name=address maxlength="200">
```

!>Prestar atención aquí, ya que en el PDF indicado en clase -en la página 9, dice que la etiqueta `<html>` nunca lleva atributos, y eso no es correcto. La etiqueta puede o no llevar atributos, y últimamente se usa mucho colocar el lenguaje de internacionalización para denotar en qué lenguaje se escribirá el contenido del documento HTML, por ejemplo: [`<html lang="es">`](https://www.w3.org/International/questions/qa-html-language-declarations).

### DOCTYPE

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

En la [clase 1](/clases/clase1.md) se recomienda usar éste `<meta charset="ISO-8891" />` para que aparezca la letra `ñ` en el código, en cambio si se usa la `UTF-8` dice que no lo interpretan todos los navegadores **(?)**

#### Diferencia de criterios

Aunque en la primer clase se indicó que deberíamos usar `ISO-8891` para el español, yo no estoy de acuerdo con éste criterio y en mis archivos usaré `UTF-8` simplemente porque siempre lo he usado y no he tenido ningún problema de compatibilidad, considero que el _charset_ por defecto es UTF-8, y en algunas pruebas que he hecho usando este ISO que recomienda el profesor, no funcionaron correctamente las letras `ñ` o `Ñ` ni los símbolos `¿` o `¡`.

Quizás, el ISO que el profe quería proponer en la primer clase era: ¿`ISO-8859-1`?

>Si se requiere ampliar el tema del Charset, y esta diferencia de criterios entre utilizar ISO vs UTF, he realizado una pequeña lectura [aquí](https://www.sitepoint.com/community/t/charset-for-spanish-language-site/5061/2), donde se aclara lo siguiente:
>
>>In the case of Spanish you can choose either ISO 8859-1 or UTF-8. Both will let you use a literal 'í' (and the other letters with diacritical marks used in Spanish, plus the '¿' and '¡' punctuation characters).
>>
>>If you choose UTF-8, make sure you save the files without a BOM (byte order mark). A BOM is completely unnecessary in UTF-8, and will cause problems with some browsers.

### Link

Para enlazar o traer contenido de otra ruta, por ejemplo en el caso de archivos de estilos (`CSS`).

>For `<link>` elements with an `href` attribute and a `rel` attribute, links must be created for the keywords of the _rel_ attribute, as defined for those keywords in the link types section. [More info...](https://www.w3.org/TR/html53/links.html#external-resource-link)

Ejemplo: `<link rel="stylesheet" type="text/css" media="screen" href="estilos.css" />`

En el documento PDF de clase se indica que el atributo `type` ha sido eliminado en HTML5 **(?)**, sin embargo no encuentro algún fundamento similar en la documentación del estándar W3C.

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

<div align="right">
?> -- Fin de la [clase 1](/clases/clase1.md) _(ref: página 28 pdf)_ --
</div>

***

### `<p align=""></p>`

Los posibles valores son: `left`, `right`, `center`, y `justify`. Es comúnmente usado para alinear texto dentro de un párrafo, aunque si nuestro código está en HTML5 NO debemos usar `<p align="">`, ver: "[The align attribute of `<p>` is not supported in HTML5. Use CSS instead](https://www.w3schools.com/tags/att_p_align.asp)".

### `<br>`

Es el salto de línea en un párrafo. Como darle "enter" a una oración y que lo siguiente al `<br>` empiece en renglón nuevo.

Tener en cuenta que en HTML el retorno de línea `<br>` no requiere fin (end tag)., mientras que en XHTML sí lo requiere, así: `<br />`. [Más información](https://www.w3schools.com/tags/tag_br.asp).

### `<nobr></nobr>`

En el PDF (página 31) se indica lo siguiente:
>También puede usarse la etiqueta `<NOBR>...</NOBR>`. Es para no permitir el salto de linea, es decir, para hacer lineas muy largas en páginas en las que haya que usar la barra de desplazamiento horizontal.

Aquí debemos tener en cuenta que el tag `NOBR` nunca fue estándar. Y [**NO debe usarse**](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nobr). En lugar de usar `NOBR` debemos usar CSS, así:

```html
<span style="white-space: nowrap">Texto muuuuuuuuuuuuuuuuuuuuuuuuuy largo sin retornos de línea deben ser usados con CSS</span>
```

Aunque, si queremos optimizar, hay que crear una clase "nowrap" con ese estilo, y aplicar la clase en los párrafos que sepamos que van a ser muy largos.

### `<wbr></wbr>`

Si bien esto no aparece en la documentación de clase, es importante saber que existe un tag de HTML5 para que el usuario personalice en qué parte de un texto largo el navegador debería crear un retorno de línea en caso de no tener espacio para mostrar toda la oración. [Más información y ejemplos](https://www.w3schools.com/tags/tag_wbr.asp).

### Cabeceras `<h1>` - `<h6>`

Tener en cuenta que las cabeceras no aceptan el atributo `align` en HTML5. [Más información](https://www.w3schools.com/tags/tag_hn.asp)

### Destacar texto

Para destacar contenido se puede usar los siguientes elementos:

* `<strong>texto importante en negrita</strong>` - [strong](https://www.w3schools.com/tags/tag_strong.asp)
* `<em>texto importante y cursiva</em>` - [em](https://www.w3schools.com/tags/tag_em.asp)
* `<mark>texto marcado o destacado</mark>` - [mark](https://www.w3schools.com/tags/tag_mark.asp)
* `<b>texto en negrita</b>` - [b](https://www.w3schools.com/tags/tag_b.asp)

?>Nota: De acuerdo con la especificación HTML 5, la etiqueta `<b>` debe usarse como ÚLTIMO recurso cuando ninguna otra etiqueta es más apropiada. La especificación de HTML 5 establece que los encabezados se denotan con las etiquetas `<h1>` a `<h6>`, el texto destacado se debe denotar con la etiqueta `<em>`, el texto importante se debe denotar con la etiqueta `<strong>` y el texto marcado o resaltado debería usar la etiqueta `<mark>`. [Más información](https://www.w3schools.com/tags/tag_b.asp).

#### `<i>cursiva</i>`

La etiqueta `<i>` define una parte del texto en una voz o estado de ánimo alternativo. El contenido de la etiqueta `<i>` generalmente se muestra en cursiva. La etiqueta `<i>` se puede utilizar para indicar un término técnico, una frase de otro idioma, un pensamiento, un nombre de nave, etc.

Se debe usar el elemento `<i>` solo cuando no haya otro un elemento semántico más apropiado, como por ejemplo: `<em>` (texto enfatizado), `<strong>` (texto importante), `<mark>` (texto marcado / resaltado), [`<cite>`](https://www.w3schools.com/tags/tag_cite.asp) (el título de un trabajo) o [`<dfn>`](https://www.w3schools.com/tags/tag_dfn.asp) (un término de definición).

### `<s>texto</s>`

La etiqueta `<s>` especifica texto que ya no es correcto, preciso o relevante.

La etiqueta `<s>` no se debe usar para definir el texto reemplazado o eliminado, use la etiqueta [`<del>`](https://www.w3schools.com/tags/tag_del.asp) para definir el texto reemplazado o eliminado conjuntamente con la etiqueta [`<ins>`](https://www.w3schools.com/tags/tag_ins.asp).

### Listas

* Ordenadas con [`<ol>`](https://www.w3schools.com/tags/tag_ol.asp)
* Desordenadas con [`<ul>`](https://www.w3schools.com/tags/tag_ul.asp)
* Definiciones con [`<dl>`](https://www.w3schools.com/tags/tag_dl.asp)

### Imágenes

El elemento `<img>` tiene los atribugos obligatorios: `<src>` y `<alt>`. No es necesario que tenga cierre en HTML, solo en XHTML debe cerrarse así: `<img />`.

### `<hgroup>`

En la página 35 del PDF se indica que HTML5 provee este elemento para grupar los encabezados de la parte `<header>`. Sin embargo, debemos entender que el estándar de HTML5 (W3C) no provee este elemento, de hecho no existe. Solo se encuentra especificado en la versión WHATWG de HTML5. Recomiendo leer [éste documento](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/hgroup) para más información.

