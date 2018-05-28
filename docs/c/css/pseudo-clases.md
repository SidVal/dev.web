# Pseudo Clases

Una pseudo-clase se usa para definir un estado especial de un elemento. 

Por ejemplo, se puede usar para: 

* Estilo un elemento cuando un usuario pasa sobre él 
* Estilo visitado y enlaces no visitados de manera diferente 
* Diseña un elemento cuando se enfoca

_Sintaxis_

```css
selector:pseudo-class {
    property:value;
}
```

## Anchor Pseudo Classes

* `a:link` para enlaces sin visitar
* `a:visited` para enlaces visitados
* `a:hover` para enlaces, cuando el mouse está arriba del mismo
* `a:active` para enlaces, cuando está seleccionado [ver diferencia con `:focus`](https://stackoverflow.com/questions/1677990/what-is-the-difference-between-focus-and-active)

> `a:hover` MUST come after `a:link` and `a:visited` in the CSS definition in order to be effective! `a:active` MUST come after `a:hover` in the CSS definition in order to be effective! Pseudo-class names are not case-sensitive.

## Pseudo-Classes con CSS classes

Las pseudo-clases pueden ser combinadas con CSS clases.

```css
a.highlight:hover {
    color: #ff0000;
}
```

El `:hover` puede aplicarse a un elemento `DIV`; por ejemplo:

```css
p {
    display: none;
    background-color: yellow;
    padding: 20px;
}

div:hover p {
    display: block;
}
```

[Ver cómo funciona aquí](https://www.w3schools.com/css/tryit.asp?filename=trycss_pseudo-class_hover_tooltip)

## Pseudo-Classes

* [`:first-child`](#first-child)
* [`:nth-child()`](#nth-childn)
* [`:last-child`](#last-child)
* [`:only-child`](#only-child)
* [`:not()`](#not)
* [`:lang`](#lang)

### `:first-child`

Se usa para referenciar al primer elemento _hijo_; es similar a usar `:nth-child(1)`.

### `:nth-child(n)`

Se usa para referenciar el _n_ elemento hijo; puede usar una _formula_ como _n_, o bien un número o las palabras clave: _odd_ o bien _even_ - [Ver ejemplos de _even/odd_](https://www.w3schools.com/cssref/tryit.asp?filename=trycss3_nth-child_odd_even).

[Más información `:nth-child()`](https://www.w3schools.com/cssref/sel_nth-child.asp).

### `:last-child`

Se usa para referenciar al último elemento _hijo_; es similar a usar `:nth-last-child(1)`.

### `:only-child`

Si el padre tiene un único hijo, esta pseudo-clase es para referenciar a ese único elemento. [Ver ejemplo `:only-child`](https://www.w3schools.com/cssref/tryit.asp?filename=trycss3_only-child).

### `not()`

Referenciará a todos excepto al elemento o selector que coloca entre paréntesis. [Ver ejemplo `not()`](https://www.w3schools.com/cssref/tryit.asp?filename=trycss3_not).

### `:lang`

Si un párrafo por ejemplo, tiene declaración de lenguaje, esta pseudo-clase puede dar estilo a dicho párrafo. [Ver ejemplo `:lang`](https://www.w3schools.com/cssref/tryit.asp?filename=trycss_sel_lang).
