# Clase 3 {docsify-ignore-all}

Fecha: 15 de Mayo, 2018

Lugar: Remoto, _GoToMeeting.es_

## HTML + CSS

Se profundizaron aún más los conceptos vistos en la [clase 2](/curso/clase2.md#clase-2), se puso más énfasis en los conceptos claves de `CSS` y formas de estructurar estilos en `HTML`.

A continuación se detallarán rápidamente lo que se vió en clase, para ampliar los conceptos ir a la [documentación de Unidades](/u/).

### Div Principal

La página de práctica que se usó [ver en línea](https://sidval.github.io/www/curso/c3/) se estructuró al principio con un `<div id="divprincipal">`, es decir un elemento HTML DIV con atributo `id` (de identificación) llamado _divprincipal_.

Dicho atributo tenía el siguiente código CSS:

```css
#divprincipal {
    width: 900px;
    margin: auto;
}
```

### Header

```css
header {
    background: url(../images/line.png) repeat-x bottom;
}
```

### Banner-Image

`<div id="banner-image">`

```css
#banner-image {
    margin-top: 15px;
    height: 200px;
    border-radius: 5px;
    position: relative;
    margin-bottom: 25px;
    background: url(../images/sanfrancisco.jpg) no-repeat;
    box-shadow: 10px 10px 50px #181818;
}
```

### Section

`display: block;`

### Footer

```css
footer {
    background: url(../images/top.png) no-repeat top center, url(../images/line.png) repeat-x top, url(../images/shadow.png) repeat-x top;
    margin-top: 25px;
}
```

***

Se vieron los elementos de HTML5.

### Resumen de temas vistos

* `display: inline-block;`
* `border-radius`
* `:hover` y `:focus`
* Los tamaños en `em` para las fuentes
* Cómo jugar con las transparencias en RGBA

>En esta clase del curso se desarrollaron contenidos de:
>
> * [Unidad 1](/u/unidad1.md)
> * [Unidad 2](/u/unidad2.md)
