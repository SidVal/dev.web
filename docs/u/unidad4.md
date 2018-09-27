# Unidad 4

Antes de seguir deberías tener:

1. Conocimiento medio de HTML5 y CSS3. [_Repasar Unidad 2_](/u/unidad2.md).
1. Tener a mano la [documentación de Bootstrap](https://getbootstrap.com/docs/4.1/getting-started/introduction/). (Prestar atención a la versión a utilizar)
1. Conocimiento avanzado del depurador de tu navegador web. (Preferentemente Google [Chrome: devTools](/c/#chrome-dev-tools))

>Esta unidad contiene contenido sobre `JavaScript`

## Javascript

_Página 114 del PDF2_

* Javascript surgió para extender las capacidades de HTML.
* Javascript en sí mismo no es un lenguaje de programación, es un lenguaje script u orientado a documento, como podría ser un lenguaje de _macro_ que tienen muchos procesadores de texto.

### Comentarios

Para comentar en JS debemos usar `//` si el comentario está en una línea, o bien: `/*` al inicio, y para cerrar el comentario `*/` en el caso de que el comentario tenga muchas líneas.

### Linterales

Se le llama _literal_ al valor que asume una variable o una constante. Los valores numéricos o booleanos no necesitan comillas (ni simples, ni dobles).

### Carácteres Especiales

* `\n`: Salto de línea
* `\t`: Tabulador
* `\'`: Comilla simple
* `\"`: Comilla doble
* `\\`: Barra invertida
* `\xA9`: Simbolo de "marca registrada"
* `\999`: El número ASCII (Según la codificación Latin-1) del carácter en hexadecimal

### Sentencias y bloques

Las sentencias en JS se separan a través de puntos y comas `;` y se agrupan a través de llaves `{` y `}`.

Ejemplo:

```js
function HolaMundo() {
alert("¡Hola Mundo!");
}
```

### Tipos de Datos

Los tipos de datos es la clase de valor que puede tomar un identificador (variables, o constantes), por ejemplo una fecha. A diferencia de otros lenguajes declarados, en JS se asigna automáticamente el tipo de dato cuando se asigna valor al identificador, no es necesario declarar antes el tipo de datos que debe tener la variable.

#### Variables

Las variables son los nombres que ponemos a los lugares donde se ocupa la información. En JS deben empezar con una letra, o un subrayado "`_`", pudiendo además haber dígitos entre los caracteres. No es necesario declarar variables, si no se declaran son de ámbito global, y en caso de declararse, dependerá si están dentro de una función (y serán de ámbito local a esa función), o bien fuera de la función (donde serán de ámbito global).

```js
var x = 10; // variable 'x' (declarada) con valor 10, ámbito global
y = 20; // variable 'y' (no declarada) con valor 20, ámbito global

function contar() {
var m = 1; // variable 'm' (declarada) con valor 1, ámbito local
n = 2; // variable 'n' (no declarada) con valor 2, ámbito local
}
```
!> Leer: [JavaScript ES6+: var, let, or const?](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75)

#### Referencias

#### Vectores y Matrices

### Operadores

#### Op. Aritmétricos

#### Op. de Comparación

#### Op. Lógicos

#### Op. de Asignación

#### Op. Especiales

### Estructuras de Control

#### Condicionales

#### Bucles

#### Manejo de Objetos

### Funciones

## Objetos

### Constructores

### Herencia

### Polimorfismo

## Objetos Predefinidos

### Array

### Date

### Math

### Number

### String

### RegExp

### Boolean

### Function

## Eventos

### Lista de Eventos

### Definir eventos

## Modelo de Objetos del Documento
