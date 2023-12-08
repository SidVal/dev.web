# JavaScript

* Javascript surgió para extender las capacidades de HTML.
* Javascript en sí mismo no es un lenguaje de programación, es un lenguaje script u orientado a documento, como podría ser un lenguaje de _macro_ que tienen muchos procesadores de texto.

## Comentarios

Para comentar en JS debemos usar `//` si el comentario está en una línea, o bien: `/*` al inicio, y para cerrar el comentario `*/` en el caso de que el comentario tenga muchas líneas.

## Linterales

Se le llama _literal_ al valor que asume una variable o una constante. Los valores numéricos o booleanos no necesitan comillas (ni simples, ni dobles).

## Carácteres Especiales

* `\n`: Salto de línea
* `\t`: Tabulador
* `\'`: Comilla simple
* `\"`: Comilla doble
* `\\`: Barra invertida
* `\xA9`: Simbolo de "marca registrada"
* `\999`: El número ASCII (Según la codificación Latin-1) del carácter en hexadecimal

## Sentencias y bloques

Las sentencias en JS se separan a través de puntos y comas `;` y se agrupan a través de llaves `{` y `}`.

Ejemplo:

```js
function HolaMundo() {
alert("¡Hola Mundo!");
}
```

## Tipos de Datos

Los tipos de datos es la clase de valor que puede tomar un identificador (variables, o constantes), por ejemplo una fecha. A diferencia de otros lenguajes declarados, en JS se asigna automáticamente el tipo de dato cuando se asigna valor al identificador, no es necesario declarar antes el tipo de datos que debe tener la variable.

En JavaScript, existen distintos tipos de datos que podemos utilizar para almacenar información. A continuación, presentamos una descripción de los más populares:

### **Numbers**

Los números son un tipo de dato que representa valores numéricos. **En JavaScript**, **no existe un tipo de dato específico para representar números enteros o números con decimales**, todos los números son tratados de la misma manera.

Podemos crear números utilizando la notación numérica, que incluye dígitos y puede incluir un punto decimal para representar números con decimales.

Ejemplo:

    let edad = 30;
    let salario = 1500.50;
    const PI = 3.14;
    

También podemos utilizar la notación científica para representar números muy grandes o muy pequeños.

Ejemplo:

    const numeroGrande = 1e6; // 1 millón
    const numeroPequeño = 1e-6; // 0.000001
    

### **Strings**

Las cadenas de texto (strings) son un tipo de dato que representa una secuencia de caracteres. En JavaScript, podemos crear strings utilizando comillas simples o comillas dobles.

Ejemplo:

    const nombre = "Platzi";
    const apellido = 'Academy';
    

Podemos concatenar dos strings utilizando el operador **`+`**:

    console.log("Hola, " + nombre + " " + apellido + "!"); // "Hola, Platzi Academy!"
    

También podemos utilizar la notación **`template literal`** para crear strings que incluyen variables y expresiones:

    console.log(`Hola, ${nombre}${apellido}!`); // "Hola, Platzi Academy!"
    

JavaScript proporciona una serie de métodos para manipular strings. Algunos de los métodos más comunes son:

*   **`length`**: Devuelve la longitud de un string.
*   **`toUpperCase()`**: Devuelve el string en mayúsculas.
*   **`toLowerCase()`**: Devuelve el string en minúsculas.
*   **`substring()`**: Devuelve una parte del string.

    const nombre = "Platzi";
    console.log(nombre.length) // 6
    console.log(nombre.toUpperCase()) // PLATZI
    console.log(nombre.toLowerCase()) // platzi
    console.log(nombre.substring(0, 5)) // Platz
    

### **Objects**

Los objetos son estructuras de datos que nos permiten almacenar un conjunto de **pares clave-valor**. Estos pares son conocidos como **propiedades del objeto**.

Para crear un objeto, debemos utilizar las llaves **`{}`** y especificar las propiedades del objeto mediante la sintaxis **`nombrePropiedad: valorPropiedad`**. Los valores de las propiedades pueden ser de cualquier tipo de dato, incluyendo otros objetos.

Ejemplo:

    const persona = {
     nombre: "Fulanita",
     platziRank: 9567,
    cursoFavorito: {
    nombre: "Básico de JavaScript",
    clases: 30,
    duración: "2 horas"
    }
    };
    

Para acceder a las propiedades de un objeto, podemos utilizar el operador **`.`** o la notación de corchetes **`[]`**.

Ejemplo:

    console.log(persona.nombre); // "Fulanita"
    console.log(persona.cursoFavorito.nombre); // "Básico de JavaScript"
    console.log(persona["platziRank"]); // 9567
    

### **Booleanos**

[Los valores booleanos](https://platzi.com/clases/8617-javascript-fundamentos/66446-conversion-a-booleanos/) (boolean) son un tipo de dato que representa un valor **`verdadero`** o **`falso`**. En JavaScript, podemos utilizar la palabra clave **`true`** para representar el valor verdadero y **`false`** para representar el valor falso.

Ejemplo:

    let cursoCompletado = true;
    let lecturaCompletada = false;
    

> No pasa nada si no recuerdas el tipo de dato con el que estás trabajando, dentro de JavaScript existe la instrucción `typeof` la cual te dirá el nombre del tipo de dato con el que estás trabajando

Ejemplo:

    typeof"#PlatziChallenge"// "string"
    typeof30// number
    typeoftrue// boolean
    typeof {} // "object"
    // 👀 con los arrays nos devuelve que son un objeto
    // Más adelante descubriremos la razón
    typeof [] // "object"

### **Null**

El valor **`null`** es un tipo de dato que representa un valor vacío o nulo. En JavaScript, podemos utilizar la palabra clave **`null`** para representar [el valor nulo](https://platzi.com/clases/8617-javascript-fundamentos/66447-tipos-de-datos-primitivos-null-undefined-symbol-y/). A menudo, utilizamos **`null`** para representar un valor que aún no ha sido inicializado o para representar un valor que no tiene sentido en el contexto actual.

Ejemplo:

    const nombre = null;
    console.log(nombre); // imprime "null"
    

**Undefined**
-------------

El valor **`undefined`** es un tipo de dato que representa un valor que aún no ha sido asignado o que no tiene un valor válido. En JavaScript, podemos utilizar la palabra clave **`undefined`** para representar el valor **`undefined`**.

Ejemplo:

    let nombre;
    console.log(nombre); // imprime "undefined"
    

### Diferencias entre Null y Undefined

Es importante tener en cuenta que **`null`** y **`undefined`** son valores diferentes en JavaScript. **`null`** representa un valor intencionalmente vacío, mientras que **`undefined`** representa un valor que aún no ha sido asignado o que no tiene un valor válido.

Por ejemplo, podríamos utilizar **`null`** para representar que un gatito aún no tiene dueño:

    let gatito = {
     nombre: "Michi",
     edad: 3,
     dueño: null
    };
    console.log(gatito.dueño); // "null"
    

Por otro lado, podríamos utilizar **`undefined`** para representar que un gato aún no ha sido adoptado:

    let gato;
    console.log(gato); // "undefined"
    

Es importante tener en cuenta que **`null`** y **`undefined`** son valores diferentes en JavaScript y deben ser tratados de manera diferente.

Symbol
------

Los símbolos son un tipo de dato único en JavaScript que se utiliza para crear identificadores únicos. Cada vez que se crea un símbolo, se genera un nuevo identificador único, lo que lo hace ideal para usar como claves de objetos o para identificar elementos de manera única en una aplicación.

Ejemplo:

    const simbolo = Symbol();
    let perrito = {
     nombre: "Firulais",
     edad: 3,
     [simbolo]: "Identificador único"
    };
    console.log(perrito[simbolo]); // "Identificador único"
    

También puedes proporcionar una descripción opcional al crear un símbolo, lo que puede ser útil para depurar y mantener el código:

    const simbolo = Symbol("Identificador único de gatitos");
    

Es importante tener en cuenta que los símbolos son valores únicos, lo que significa que dos símbolos creados de manera independiente nunca serán iguales, incluso si tienen la misma descripción. Esto hace que los símbolos sean ideales para usar como identificadores únicos en tus futuras aplicaciones.

BigInt
------

Los bigint son un nuevo tipo de dato en JavaScript que se usa para representar números enteros de un tamaño mayor al que puede manejar JavaScript de manera nativa. Los bigint se escriben con el sufijo **`n`**, por ejemplo: **`12345678901234567890n`**.

Aquí tienes un ejemplo de cómo usar bigint en JavaScript:

    const numeroGrande = 12345678901234567890n;
    console.log(numeroGrande + 1n); // 12345678901234567891n
    console.log(numeroGrande * 2n); // 2469135780246913578n
    console.log(numeroGrande / 3n); // 411218936707805260n
    

Es importante tener en cuenta que los bigint solo pueden ser usados para operaciones matemáticas y no pueden ser usados con operadores de comparación, como **`==`** o **`===`**. En su lugar, debes usar los métodos **`BigInt.asIntN`** y **`BigInt.asUintN`** para hacer comparaciones entre bigint y números normales.

También es importante tener en cuenta que los bigInt no son compatibles con todas las funciones y métodos de JavaScript que aceptan números, por lo que debes asegurarte de verificar la documentación de la función o método que quieres usar antes de intentar usar bigInt con ellos.

### Variables

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

Las [**variables**](https://platzi.com/clases/8617-javascript-fundamentos/66438-anatomia-de-una-variable/) son ubicaciones de almacenamiento en la memoria de la computadora que se utilizan para guardar valores que se pueden utilizar más tarde en el programa. En JavaScript, existen 3 formas de declarar variables: `var`, `let` y `const`.

Las variables declaradas con `var` y `let` pueden cambiar su valor a lo largo del tiempo, mientras que las variables declaradas con `const` son constantes y no pueden cambiar su valor una vez asignado.

Y en **JavaScript** las puedes usar de la siguiente forma:

    // Variables que pueden cambiar con el tiempo
    var edad = 30
    let hora = 12
    // Constante que no pueden cambiar
    const nombre = "Platzi"
    

En el ejemplo anterior declaramos e inicializamos todas las variables ¿Que quiere decir esto?

Básicamente el proceso de **declarar** una variable es especificar su nombre sin asignarle ningún valor, esto solo se puede hacer con variables (`let` y `var`) debido a que `const` al no poder cambiar su valor, no podremos inicializarla sin declararla al mismo tiempo.

    // Declaración
    var edad
    let hora
    

Mientras que el inicializar una variable es el asignarles cualquier valor.

    // Declaración
    var edad
    let hora
    // Inicialización
    edad = 30
    hora = 12
    // Declaración & inicialización
    const name = "Platzi"
    

Como te habrás dado cuenta, en **JavaScript**, no es necesario declarar explícitamente el tipo de datos de una variable al asignarle un valor. En su lugar, el lenguaje determina el tipo de datos de la variable en tiempo de ejecución basándose en el valor que se le asigna. Esto hace que JavaScript sea un lenguaje débilmente tipado.

Es importante tener cuidado al trabajar con variables débilmente tipadas, ya que pueden traer problemas si no mantienes las variables del tipo que esperas que sean. Por ejemplo, si intentas realizar una operación matemática con una variable que contiene un valor de texto en lugar de un número, obtendrás un error. Por lo tanto, es importante asegurarse de que las variables contengan los valores adecuados para el tipo de operación que se está realizando.

**Funciones**
-------------

Las [funciones](https://platzi.com/clases/8617-javascript-fundamentos/66451-anatomia-de-una-funcion/) son una de las características **más importantes** y **poderosas** de JavaScript. Una función es un bloque de código que se puede reutilizar en diferentes partes de un programa.

Las funciones se usan para realizar una tarea específica y pueden recibir uno o más argumentos (también conocidos como parámetros dependiendo la situación) y pueden devolver un valor como resultado.

Para declarar una función en JavaScript, se utiliza la palabra clave `function`, seguida del nombre de la función y una lista de parámetros entre paréntesis. El cuerpo de la función se escribe entre llaves y contiene el código que se ejecutará cuando se llame a la función.

    functionmiFuncion(parametro1, parametro2) {
     // Código de la función
    }
    

Para llamar a una función, simplemente escribes su nombre seguido de paréntesis.

    miFuncion(valor1, valor2);
    

Las funciones también pueden devolver un valor como resultado usando la palabra clave `return`. El valor devuelto se puede asignar a una variable o utilizar en una expresión.

    functionsuma(a, b) {
     return a + b;
    }
    let resultado = suma(2, 3);
    console.log(resultado); // Imprime 5
    

Aunque esta es la forma tradicional que se le conoce como “Function declaration”en JavaScript existen otras 3 [formas de hacer uso de funciones](https://platzi.com/clases/8617-javascript-fundamentos/66451-anatomia-de-una-funcion/).

1.  **IIFE (Immediately Invoked Function Expression):** una función que se autoejecuta inmediatamente después de ser definida. Esta función es anónima y no se puede reutilizar.

    (function () {
     console.log("Soy una IIFE");
    })();
    

1.  **Función expresión**: una función que se define como una expresión y puede ser asignada a una variable. Esta función también puede ser llamada y reutilizada.

    let saluda = function () {
     console.log("Hola");
    };
    saluda();
    

1.  **Arrow function**: una función que se define utilizando la sintaxis `() =>`. Esta función es una forma más concisa de escribir funciones y es útil para funciones de una sola línea.

    let saluda = () => console.log("Hola");
    saluda();
    

**Sintaxis básica**
-------------------

Ya que conoces este par de conceptos de JavaScript es importante que tomes en cuenta los siguientes aspectos para no tener typos en tu código o errores comunes.

### **Punto y coma ;**

El uso de punto y coma es totalmente opcional, a excepción de algunos casos especiales como en ciclos o cuando se quiere separar declaraciones en una misma línea.

Un código así 👇

    const saludo = "Hola"
    const nombre = "Platzi"
    const saludoCompleto = saludo + " " + nombre
    console.log(saludoCompleto) // "Hola Platzi"
    

Hace exactamente lo mismo que el siguiente 👇

    const saludo = "Hola";
    const nombre = "Platzi";
    const saludoCompleto = saludo + " " + nombre;
    console.log(saludoCompleto); // "Hola Platzi"
    

Como consejo, si vas a usar el punto y coma desde un inicio trata de mantenerlo en cada linea para que por cuestiones de legibilidad se vea bien.

### **Corchetes o llaves {}**

Las llaves `{}` se utilizan para encapsular bloques de código, funciones, bucles y otros elementos en JavaScript. También se utilizan para declarar objetos, un tipo de dato que veremos en la siguiente clase.

    const carro = {
     color: "rojo",
     llantas: 4,
     marca: "Audi"
    }
    

Es importante tener cuidado al trabajar con punto y coma y llaves en JavaScript, ya que el olvido o el uso incorrecto de estos elementos puede llevar a errores en el código.

## Referencias

## Vectores y Matrices

## Operadores

Los [operadores](https://platzi.com/clases/8617-javascript-fundamentos/66445-tipo-de-dato-primitivo-number/) son elementos de lenguaje que nos permiten realizar cálculos y comparaciones en JavaScript. Aquí hay una lista de los operadores más comunes:

### **Operadores aritméticos**

Los operadores aritméticos nos permiten realizar operaciones matemáticas básicas, como la suma, la resta, la multiplicación y la división.

    // Suma
    console.log(1 + 2); // 3
    // Resta
    console.log(5 - 2); // 3
    // Multiplicación
    console.log(3 * 4); // 12
    // División
    console.log(10 / 2); // 5
    // Módulo (devuelve el resto de una división)
    console.log(10 % 3); // 1
    

### **Operadores de asignación**

Los operadores de asignación nos permiten asignar valores a variables.

    let x = 10;
    x += 5; // x = x + 5
    console.log(x); // 15
    x -= 3; // x = x - 3
    console.log(x); // 12
    x *= 2; // x = x * 2
    console.log(x); // 24
    x /= 4; // x = x / 4
    console.log(x); // 6
    

### **Operadores de comparación**

Los [operadores de comparación](https://platzi.com/clases/8617-javascript-fundamentos/66425-operadores-logicos/) nos permiten comparar valores y nos devuelven **`true`** o **`false`** según el resultado de la comparación.

    console.log(1 < 2); // true
    console.log(2 > 1); // true
    console.log(1 <= 2); // true
    console.log(2 >= 1); // true
    console.log(1 !== 2); // true
    

Entre estos existen 2 operadores de igualdad los cuales son `==` y `===`. El primero realiza una comparación de valor y el segundo, además de comparar el valor, también verifica el tipo de dato. Es recomendable utilizar siempre **`===`** ya que, en un lenguaje como JavaScript, que es debilmente tipado, comparar solo el valor puede llevar a resultados inesperados.

Ejemplo

    console.log(1 == "1") // true
    console.log(1 === "1") // false
    

En el primer caso, **`1 == "1"`** devuelve **`true`** ya que solo se está comparando el valor y no el tipo de dato. Sin embargo, en el segundo caso, **`1 === "1"`** devuelve **`false`** ya que está comparando tanto el valor como el tipo de dato y, aunque ambos son iguales, uno es de tipo número y el otro de tipo string.

### Operadores lógicos

Los [operadores lógicos](https://platzi.com/clases/8617-javascript-fundamentos/66425-operadores-logicos/)son aquellos que nos permiten realizar operaciones lógicas, es decir, comparaciones y evaluaciones. En JavaScript tenemos disponibles los siguientes operadores lógicos:

1.  **AND (&&)**: Este operador lógico evalúa si ambas expresiones son verdaderas. Si ambas expresiones son verdaderas, devuelve **`true`**, de lo contrario, devuelve **`false`**. Por ejemplo:

    let edad = 25;
    let mayorDeEdad = edad >= 18;
    if (edad >= 18 && mayorDeEdad) {
     console.log("Eres mayor de edad");
    } else {
     console.log("Aún eres menor de edad");
    }
    

1.  **OR (||)**: Este operador lógico evalúa si al menos una de las expresiones es verdadera. Si al menos una de las expresiones es verdadera, devuelve **`true`**, de lo contrario, devuelve **`false`**. Por ejemplo:

    Copy code
    let edad = 25;
    let tieneIdentificacion = true;
    if (edad >= 18 || tieneIdentificacion) {
     console.log("Puedes entrar al bar");
    } else {
     console.log("No tienes la edad o la identificación suficiente para entrar al bar");
    }
    

1.  **NOT (!)**: Este operador lógico invierte el valor de la expresión. Si la expresión es verdadera, devuelve **`false`**, de lo contrario, devuelve **`true`**. Por ejemplo:

    let esFinDeSemana = true;
    if (!esFinDeSemana) {
     console.log("A trabajar");
    } else {
     console.log("A disfrutar del fin de semana");
    }

## Estructuras de Control

### Condicionales

### Bucles

### Manejo de Objetos

## Funciones

## Objetos

## Constructores

## Herencia

## Polimorfismo

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

## Hoisting y coerción

!>OJO! ++El hoisting en JavaScript mueve las declaraciones de variables y funciones al inicio del codigo, pero no mueve las asignaciones,++ entonces la variable se mueve al inicio pero sin tener ningun valor asignado, por eso da Undefined. Si el hosting no la llevara al inicio daria un error de variable no declarada. Cuando se ejecuta la linea console.log(x), la variable x esta declarada pero no tiene valor, el cual se asigna en la siguiente linea.

El [hoisting](https://platzi.com/clases/1814-basico-javascript/26297-hoisting/) es un comportamiento de JavaScript en el que las declaraciones de variables y funciones son movidas al comienzo del ámbito actual antes de que cualquier otro código sea ejecutado. Esto significa que las declaraciones de variables y funciones pueden ser utilizadas antes de haber sido declaradas en el código.

Por ejemplo, si tenemos el siguiente código:

    console.log(x);
    var x = 5;
    

JavaScript interpreta este código como si estuviera escrito de la siguiente manera:

    var x;
    console.log(x);
    x = 5;
    

Esto significa que cuando se ejecuta el código, el valor de x será `undefined` en la primera línea, ya que la declaración de x ha sido movida al comienzo del ámbito.

Sin embargo, es importante tener en cuenta que las asignaciones no son movidas al comienzo del ámbito, sólo las declaraciones. Esto significa que el siguiente código dará un error:

    console.log(x);
    x = 5;
    

Por otro lado, [coercion](https://platzi.com/clases/1814-basico-javascript/26298-coercion/) es el proceso en el cual JavaScript intenta convertir automáticamente un valor de un tipo a otro, para que puedan ser comparados o operados. Esto puede dar lugar a algunos resultados inesperados si no se tiene en cuenta.

Por ejemplo, si comparamos un número con un string:

    console.log(1 == "1")
    

El resultado sería verdadero, ya que JavaScript intenta convertir el string “1” en el número 1 antes de compararlos.

Otro ejemplo es el siguiente:

    console.log(true == 1)
    

Aquí, el valor booleano true es convertido en el número 1 antes de compararlos, dando como resultado verdadero.

Es importante tener en cuenta estos comportamientos de JavaScript y asegurarse de que los valores estén en el tipo correcto antes de realizar comparaciones u operaciones. Esto puede ser logrado mediante funciones específicas de tipo o usando el operador estricto `===` en lugar del operador de igualdad `==`.

### Definir eventos

## Modelo de Objetos del Documento
