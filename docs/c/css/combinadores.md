# Combinadores CSS

Un combinador es algo que explica la relación entre los selectores.

Un selector CSS puede contener más de un selector simple. Entre los selectores simples, podemos incluir un combinador. 

Hay cuatro diferentes combinadores en CSS:

* selector descendiente (espacio) 
* selector de hijos (>) 
* selector de hermanos adyacentes (+) 
* selector general de hermanos (~)

### Selector Descendiente

El selector descendiente coincide con todos los elementos que son descendientes de un elemento especificado. 

El siguiente ejemplo selecciona todos los elementos <p> dentro de elementos <div>:

```css
div p {
    background-color: yellow;
}
```

### Selector de Hijos

Este selector `>` indica que la regla CSS aplicará al elemento de la derecha cuando el elemento de la izquierda sea el _padre_ de éste.

Por ejemplo:

```css
div.clase2 > p.parrafo9 {
    color: red;
}
```

### Selector de Hermanos Adyacentes

Este selector `+` indica que la regla CSS aplicará al elemento de la derecha cuando sea inmediatamente precedido por el elemento de la izquierda. Ambos elementos deben compartir el mismo padre, es decir es el hijo que sigue inmediatamente al padre especificado.

Ejemplo:

```css
div.clase2 + p {
    color: red;
}
```

### Selector General de Hermanos

Este selector `~` indica que la regla CSS aplicará al elemento de la derecha sin importar si está precedido o no por el elemento de la izquierda.

## Referencias

* [Unidad 2](/u/unidad2.md#nuevos-selectores)
* [W3Schools: CSS Combinators](https://www.w3schools.com/css/css_combinators.asp)
