# Clase 5

>11 de Mayo

?> Este archivo necesita ediciones para completar todo lo que se puede hacer con ARRAYS, en esta clase se vieron muy rápidamente las funciones, métodos y propiedades con Arrays.

## Arrays (Arreglos)

Alojar valores dentro de una variable
Colección de datos agrupados en una misma estructura.
Es el contenedor de muchos valores, en una misma variable.

Array: colección de datos agrupados en una misma estructura. Básicamente es un contenedor de muchos valores a la vez bajo la misma variable.

Caracteristicas:

- Pueden almacenar cualquier tipo de dato
- Una propiedad principal de esto es la longitud (length) que es igual a la cantidad de elementos
- Cada elemento del array ocupa una posición (índice). Las posiciones inician a contar en 0.

### Array con mismo tipo de dato

```js
var dias= ["Lunes","Martes","Miercoles","Jueves","Viernes","Sábado","Domingo"];
```

### Array con distintos tipos de datos

```js
var prueba = [1, "Lunes", {}, ["Juan", "Paula"],true, false];
```

### Sobreescribir un valor dentro del array

```js
var productos = ["Tv", "Notebook", "Impresora", "Plancha", "Lavarropas","Secador de Pelo", "Smartphone", "Aire Acondicionado", "Tablet"];
productos[2] = "Monitor";
```

## Funciones con Arrays

### Agregar un valor al array conociendo el índice

```js
productos[8] = "Cafetera";
```

### Agrega un valor a la primer posición

- Método unshift

```js
productos.unshift("Licuadora");
```

### Agregar un valor a la última posición

- Método Push

```js
productos.push("Tostadora");
```

### Elimina el primer valor

- Método shift

```js
productos.shift();
```

### Elimina el último valor

- Método Pop

```js
productos.pop();
```

### Extraer un rango de valores

- Método slice

```js
var productosExtraidos= productos.slice(3,6);
```

### Se definen variables a cada elemento de un array

```js
var frutas = ["manzana", "pera","naranja"];
var [f1,f2,f3] = frutas;
```

### Ordenar valores de inicio a fin

- Método sort

```js
var letras = ["x", "a", "y", "n", "z"];
letras.sort();
```

### Ordenar valores de fin a inicio

- Método reverse

```js
letras.reverse();
```

### Convierte un array a un string

```js
var numeros = [34, 56, 94, 983, 1045];
numeros.join (',');
```

### Convertir un string en un array

```js
var textos = "texto1, texto2, texto3";
textos.split(",");
```

### Concatenación

```js
var numeros2 = [90, 98, 0, 5000, 94];
var concatFinal= numeros.concat(numeros2);
```

### Encontrar la posición de un valor

```js
concatFinal.indexOf(98);
```

## Métodos de Array

### Utilizando métodos para recorrer arrays

- for loop (manera que se fue trabajando hasta ahora)

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
for(var i=0; i<nombres.length;i++){
document.write(nombres[i]+ "<br>");
}
```

- for of

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
for(var nombre of nombres){
document.write(nombre + "<br>");
}  
// Declaro un elemento, nombre, que es la que va a iterar cada elemento del array.
```

- `.forEach`: es un método que nos permitirá acceder a cada elemento de un array a través de una función que recibe el elemento, la posición del elemento y el array que se está recorriendo

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
nombres.forEach (nombre => document.write(nombre+ "<br>"));
```

- `.some()`: se utiliza cuando se quiere saber si algunos de los elementos cumple con una condición

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
nombres.some( elemento => elemento=== "Juana");
```

- `.every()`: se utiliza cuando se quiere saber si todos cumplen con la condición  

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
nombres.every(elemento => elemento.length>=4);
```

- `.filter()`: filtra los elementos que cumpla con una condición

```js
var numeros= [2, 20, 30, 45, 3, -10, 120, 5, 200];
var arrayFilter = numeros.filter(elemento => elemento >10 && elemento<50)
console.log(arrayFilter);
```

- `find()`: es un método de búsqueda sobre el array que sirve para saber si un elemento existe dentro de él o no.

```js
var nombres= ["Luis", "José","Mariana", "Antonia", "Juana"];
var elemento= nombres.find(elemento => elemento == 'Mariana');
console.log(elemento);
```

### Reduce()

El método reduce() ejecuta una función reductora sobre cada elemento de un array, devolviendo como resultado un único valor.

La función reductora recibe cuatro argumentos:

- Acumulador (acc)
- Valor Actual (cur)
- Índice Actual (idx)
- Array (src)

El valor devuelto de la función reductora se asigna al acumulador, cuyo valor se recuerda en cada iteración de la matriz y, en última instancia, se convierte en el valor final, único y resultante.

?>Más información [developer.mozilla.org/.../Array/reduce](https://developer.mozilla.org/es/docs/Web/JavaScript/Referencia/Objetos_globales/Array/reduce)

***

## Función Length

```js
console.log(dias.length); //longitud exacta del array (cantidad de valores)
```

## Propiedad Push

Agrega valor a un array.

## Propiedad Pop

Quita valor de un array.

## Propiedad Shift

Ver qué hace =)

## Propiedad Slice

Para extraer valores en pantalla (no elimina del array)

## Método Sort()

Ordena el valor de los valores dentro de un array.

## Mérodo Reverse()

Revierte el orden de los valores a como están dentro del array.

## Join()

Devuelve valores como string.
Si dentro del paréntesis, coloco un signo, podemos separar los valores del array con ese signo o símbolo.

## Método concat()

## Método split()

## Método indexOf()

Para extraer la posición de un valor.
En qué posición está el valor "x" dentro de un array.

## Método some()

Busca un valor determinado dentro del array, si lo encuentra devuelve true

```js

```

## Método every()

## Método filter()

## Método find()

## Tarea

Enlazar a [`www`](https://sidval.github.io/www/curso/ns/claseJS5.html)
