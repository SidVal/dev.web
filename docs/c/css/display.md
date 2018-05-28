# Display

La propiedad de visualización especifica el comportamiento de visualización (el tipo de cuadro de representación) de un elemento.

Cada elemento HTML tiene un valor de visualización predeterminado según el tipo de elemento que sea. El valor de visualización predeterminado para la mayoría de los elementos es `block` o `inline`.

## Block

`display:block;`: Un elemento de nivel de bloque siempre comienza en una nueva línea y ocupa todo el ancho disponible (se extiende hacia la izquierda y hacia la derecha todo lo que puede).

Elementos HTML que usan `block`:

* `<div>`
* `<h1>` - `<h6>`
* `<p>`
* `<form>`
* `<header>`
* `<footer>`
* `<section>`

## Inline

`display:inline;`: Un elemento en línea no comienza en una nueva línea y solo ocupa tanto ancho como sea necesario.

Elementos HTML que usan `inline`:

* `<span>`
* `<a>`
* `<img>`

## None

`display:none;`: se usa comúnmente con JavaScript para ocultar y mostrar elementos sin eliminarlos ni volver a crearlos. 

## Flex

`display:flex;`: muestra un elemento como un contenedor flexible a nivel de bloque.

>Nota: "_flex_" requiere el prefijo -webkit- para trabajar en Safari.

## Inline-flex

`display:inline-flex;`: muestra un elemento como un contenedor flexible de nivel en línea

>Nota: "inline-flex" requiere el prefijo -webkit- para trabajar en Safari.

***


>Note: "display: contents" does not work in Edge/Internet Explorer.

## Referencias

* [W3School CSS Display](https://www.w3schools.com/cssref/pr_class_display.asp)
* [Mozilla: Usando las cajas flexibles CSS](https://developer.mozilla.org/es/docs/Web/CSS/CSS_Flexible_Box_Layout/Usando_las_cajas_flexibles_CSS)
