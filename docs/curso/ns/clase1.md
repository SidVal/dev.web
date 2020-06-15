# Clase 1: introducción

>27 de Abril 2020

## Conceptos

Se envió en clase este archivo: `primerospasos.js`, paso código fuente aquí.

```JS
/*
  JavaScript:
  - es un lenguaje de programación y se caracteriza por ser un lenguaje de scripting e interpretado. Por ende JS no se compila.
  - todos los navegadores soportan este lenguaje ya que tienen el motor necesario para hacerlo
  - este lenguaje sigue las especificaciones (reglas) de ECMAScript. El nuevo estándar fue a partir de ECMAScript 2015 (ES6) y de ahí en adelante en las versiones ES7, ES8 y ES9 (versiones que salen año a año) llegaron con nuevas funciones.
  En estas últimas versiones hay varias funciones que no son compatibles en su totalidad por los diveros navegadores. Para que estas versiones sean compatibles se necesita transformar el código de ES6 a ES5 con la herramienta Babel.
*/

'use strict' /*
- Para que el código JS sea más estricto pudiendo detectar problemas que sin él nose detectarian permitiendo que el código sea ejecutado igualmente sin mostrar errores.
- Se amolda a los últimos estándares del lenguaje.
- Se coloca en la primer línea antes de comenzar a escribir código JS. */

/* --- Funciones de salida de datos, para mostrar resultados. --*/

  alert("Hola"); // Sale una pantalla de alerta en el navegador
  document.write("Buenas noches"); // Se muestra en el documento HTML
  console.log("El resultado es: ");// Se muestra por consola(uso para los programadores, por ej: para validar si nuestro código está ejecutandose bien o no)


/*
  Variable: es el contenedor de un valor. Se define una variable global o local, sin importar el ámbito del bloque.

  Sintaxis
   1-  var nombre_variable = "valor";
   2- var nombre_variable;
      nombre_variable = "valor"
      La 1er opción es la más utilizada.
*/
    var pais="Argentina";
    console.log(pais);
/*
Contamos con 3 variables en total y dos de ella son nuevas de ES6: var, let y const.

  var (ES5) :
  - define una variable global o local, sin importar el ámbito/alcance del bloque (ambito=scope)
  - Se puede redefinir a la variable (cambiarle el valor) llamadola nuevamente por su prefijo.  

  let (ES6):
  - permite declarar variables limitando su alcance al bloque que se está usando.
  - No se puede redefinir a la variable llamadola nuevamente por su prefijo.
  - Se puede asignar la variable y declarar el valor después, tal cual hacemos con var.

  const (ES6):
  - el valor de esta variable es fija, no cambia.  
  - La diferencia con let y var es que no se puede asignar la variable y declarar el valor después ni reescribirlo.
  - Se debe declarar el valor de la variable al instante.
*/

/* ---  Aplicando var --- */

    var nombre= "Noelia";
    console.log(nombre); // se muestra el resultado por la consola.

/*  Reglas a la hora de dar nombre a una variable

  - Comienzan con letras, $ o _
  - Contiene letras, números, $ y _
  - Son case sensitive
  - No puede llevar espacio en blanco cuando hay más de una palabra
  - No se utilizan tildes
  - No se utilizan ñ
  - Se recomienda que sean palabras descriptivas
  - No deber ser palabras reservadas del lenguaje
  - No utilizar mayúsculas en su totalidad

*/  


// Tipo de datos en JS:

    // String = Cadena de texto
      var cadena_de_texto = "Hola a todos";

    // Number = Numérico
      var numero = 25;

    // Boolean = Lógicos
      var verdadero_falso= true;
      var falso_verdadero =false;

    // undefined: cualquier variable no definida toma dicho valor
    // Null: valor nulo o vacío
    // Object: un valor en memoria al que podemos acceder a través de identificador.


/* --- Detectar el tipo de dato con el operador typeof --- */
    var producto = "heladera";
    console.log(typeof producto);


/* ---  Función prompt (Ingresa un dato) ---*/
  var nombre=prompt("Ingresa tu nombre");
  alert(nombre);


/* ---  Función parseInt (toma números enteros)--- */
  var num = parseInt(prompt("Ingrese un número"));
  console.log(num);

  /* --- Función parseFloat (toma números decimales, además de enteros) --- */
  var numero1= parseFloat (prompt("Ingresa tu primer número"));
  var numero2= parseFloat ( prompt("Ingresa tu segundo número para completar la operación"));
  var resultado= parseFloat (numero1/numero2);
  document.write("Tu resultado es: " + resultado);


/* --- Concatenar vs Sumar ---*/

  // Concatenar
    var saludo= "Hola";
    var nombre= prompt("escribí tu nombre");
    var concatenar= saludo + " " + nombre; // Utilizando comillas genero espacios.
    console.log(concatenar);

  // Sumar
    var num1= 20;
    var num2= 30;
    var suma= num1 + num2;
    console.log(suma);

/* Detalle a tener en cuenta...
  Si estamos queriendo realizar una operación matemática y el contenido en vez de ser numérico es un string entonces se les informará por consola que es un valor NaN (Not a Number): número que no se podrá representar.
*/




```

## Ejercicio

_Ejercicios JavaScript - Clase 1_

1. Variables
  a. Declara una variable llamada uno en tu consola y asígnale un número cualquiera.
  b. Declara una variable llamada dos y asígnale como valor la variable uno.
  c. Cambia el valor de la variable uno. ¿Cuál piensas que es ahora el valor de la variable dos? (Pensalo antes de fijarte en la consola).

2. Mensaje con Variables
  a. Declara 5 variables: 'nombre', 'edad', 'ciudad', 'ocupacion' y'hobbie', y asígnales valores que contengan información sobre vos mismo.
  b. Usa console.log para escribir un párrafo sobre vos, usando las variables que creaste para insertar la información correspondiente.
  c. DESAFÍO BONUS: busca si hay alguna manera de crear múltiples variables en una única línea de código.

3. Calculador de Edad.
Se debe preguntar al usuario su edad y calcular en base a surespuesta la cantidad de días que tienen esos años.
Muestra la respuesta a través de una alerta.

4. Pedir al usuario un número y sumarle 5.

Enlazar a [`www`](https://sidval.github.io/www/curso/ns/claseJS1.html)
