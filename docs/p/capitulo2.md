# Capítulo 2

>Cabe aclarar que el contenido de éste documento es una mezcla entre lo que se dió en clase ([ver clases](/clases/)), y mi propia interpretación mientras voy estudiando y perfeccionando mi conocimiento previo (y nuevo) sobre el tema. No destaco a cada rato lo que se dió en x clase y lo que yo agrego, porque sería un desastre de redacción y muy complejo para volver a leer el documento, y sacar algo bueno del mismo.
>
>Se busca que estos documentos sean un repaso para aquellas personas que quieren aprender a desarrollar web, o afianzar sus conocimientos. 
>
!>Si gustas corregir :pencil2: o sugerir :bulb: algún cambio, [**por favor envía tu mensaje aquí**](https://github.com/SidVal/dev.web/issues/new?assignee=SidVal). :pray: 

Antes de seguir deberías tener:

1. Uso básico de ordenadores, y uso pasivo de la Web (navegar y ver contenido).
1. Entorno básico de trabajo, leer [#Software Recomendado](/?id=software-recomendado).
1. Conocimiento básico de HTML y CSS. [_Repasar Capítulo 1_](/capitulo1.md).

## Primer página web

Si bien en la [primer clase](/clases/clase1.md) algo se vió, muy por arriba de la estructura básica y cómo una página debía llamar a los elementos que la componen, durante la [segunda clase](/clases/clase2.md) se desarrolló con mayor profundidad lo que sería nuestro primer desarrollo web estático.

Se repasaron los conceptos de elementos `HTML` que ya habíamos visto; si aún no se sabe cuándo usar `<b>` o `<strong>`, recomiendo repasar el [Capítulo 1](/capitulo1.md). Y se ampliarán como veremos a continuación los conceptos con `CSS`.

?>A raíz de comprender mejor los ejemplos prácticos, el código que se practica en clase estará expuesto en una carpeta [`/www/` en GitHub](https://github.com/SidVal/dev.web/tree/master/www), y el comportamiento pueden verlo en [Fiddle](https://jsfiddle.net/Waldo/o31j84e1/) o bien en [Thimble](https://thimble.mozilla.org/es/user/walddo/1685329/); lee más sobre [Editores en Línea para practicar](https://github.com/SidVal/dev.web/wiki/Herramientas#editores-en-linea).

## CSS Introducción

Si bien en la documentación de clase hay mucho teórico, pueden ir completando los conocimientos con una lectura del sitio web de desarrolladores de Mozilla y su [introducción a CSS en español](https://developer.mozilla.org/es/docs/Learn/CSS/Introduction_to_CSS).

### Modelo de Cajas

En la documentación de clase se indica que todos los elementos HTML se interpretan por los navegadores web como cajas; así una página web es un grupo de cajas ordenadas siguiendo ciertas reglas. Entonces, cualquier elemento contenido en un documento web tiene la estructura de una _caja rectangular_ dentro del formato del documento, el tamaño y las capas que serán retocadas usando las propiedades CSS. Las propiedades importantes son: `margin`, `border`, `padding`, `width`, y `height`.

_Gráficamente_

![Propiedades de la caja](https://mdn.mozillademos.org/files/13647/box-model-standard-small.png)

#### `width` y `height`

Las propiedades `width` y `height` establecen el **ancho** y **alto** de la caja de contenido, que es el área donde se muestra el contenido de la caja — este contenido comprende tanto el texto incluido en la caja como otras cajas representadas por elementos anidados.

Para un manejo más refinado del tamaño de la caja, se usan propiedades adicionales como: `min-width`, `max-width`, `min-height`, y `max-height`.

#### `padding`

El `padding` hace referencia al margen interior de la caja CSS — entre el límite exterior de la caja del contenido y el límite interior del borde. El tamaño de esta capa puede configurarse en sus cuatro lados a la vez con la propiedad abreviada `padding`, o cada lado por separado con las propiedades: `padding-top`, `padding-right`, `padding-bottom` y `padding-left`.

#### `border`

El borde de una caja CSS descansa entre el límite exterior del padding y el límite interior del margen. Por defecto tiene un tamaño de `0` — es decir, invisible — pero podemos cambiar su grosor, estilo y color para hacerlo visible. La propiedad abreviada de `border` permite establecer los cuatro lados a la vez, por ejemplo: `border: 1px solid black`. Pero también se puede dividir en varias propiedades extendidas para su uso en necesidades concretas de estilo:

* `border-top`, `border-right`, `border-bottom` y `border-left`: establecen el grosor, estilo y color de cada lado del borde.
* `border-width`, `border-style`, `border-color`: establecen únicamente el grosor, el estilo y el color por separado, pero para los cuatro lados del borde al mismo tiempo.
* Podemos también establecer cada propiedad por separado para cada lado individualmente, usando `border-top-width`, `border-top-style`, `border-top-color`, y así...

#### `margin`
El margen envuelve la caja CSS, y sostiene a otras cajas del diseño. Se comporta como `padding`; la propiedad abreviada es `margin` y las propiedades individuales son `margin-top`, `margin-right`, `margin-bottom`, y `margin-left`.
