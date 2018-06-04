# Overflow

La propiedad `overflow` (o desbordamiento) especifica qué debería suceder si el contenido se desborda en el cuadro de un elemento. Esta propiedad especifica si se debe recortar contenido o agregar barras de desplazamiento cuando el contenido de un elemento es demasiado grande para caber en un área específica.

?>Nota: `overflow` solo funciona para elementos de bloque con una altura especificada, es decir, un `height` determinado.

_Sintaxis_

`overflow: visible|hidden|scroll|auto|initial|inherit;`

## Valores

* `visible`: El desbordamiento no está recortado. Se renderiza fuera del cuadro del elemento. Por _default_ este es el comportamiento predeterminado si no se define ningún `overflow`.
* `hidden`: El desbordamiento se recorta y el resto del contenido será invisible.
* `scroll`: El desbordamiento se recorta, pero se agrega una barra de desplazamiento para ver el resto del contenido.
* `auto`: Si se recorta el desbordamiento, se debe agregar una barra de desplazamiento para ver el resto del contenido.
* `initial`: Establece esta propiedad a su valor predeterminado. [Leer más información sobre ésta propiedad _initial_](https://www.w3schools.com/cssref/css_initial.asp).
* `inherit`: Hereda esta propiedad de su elemento principal. [Leer más información sobre ésta propiedad _inherit_](https://www.w3schools.com/cssref/css_inherit.asp).

## overflow-x y overflow-y

Las propiedades `overflow-x` y `overflow-y` especifican si se debe cambiar el desbordamiento de contenido solo horizontal o verticalmente (o ambos):

* `overflow-x` especifica qué hacer con los bordes izquierdo / derecho del contenido.
* `overflow-y` especifica qué hacer con los bordes superior e inferior del contenido.

```css
div {
    overflow-x: hidden; /* Oculta el scrollbar horizontal */
    overflow-y: scroll; /* Agrega scrollbar vertical */
}
```
