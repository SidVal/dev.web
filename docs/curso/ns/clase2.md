# Clase 2

>29 de Abril 2020

## Operadores

Antes de ingresar al concepto de "condicional" es importante tener en cuenta los tipos de datos booleanos ya que a través de ciertos operadores que usarás en el condicional devolverá un valor "true" o "false".

### OPERADORES DE COMPARACIÓN

* mayor que         -->     100 `>` 10
* menor que         -->     10 `<` 100
* menor igual       -->     10 `<=` 100
* mayor igual       -->     100 `>=` 10
* igual que         -->     10 `==` 10
* totalmente igual  -->     10 `===` 10
* distinto de       -->     100 `!=` 10

### OPERADORES LÓGICOS

* `&&`  --> and 
* `||`  --> or
* `!`   --> not

Por otro lado también tene en cuenta que los string y los números positivos darán un valor "true" pero el cero, null, undefined y NaN devuelven un valor "false".

Verificar en la consola haciendo:

True:

`!!`"probando"
`!!`20  

False:

`!!`0
`!!`null
`!!`undefined
`!!`NaN

## Condicionales

### CONDICIONAL IF, ELSE

```js
    if (condición){
    instrucciones si se da la condición.

    } else {
    instrucciones si no se da la condición.
    }
```

### CONDICIONAL IF, ELSE IF y ELSE

>(Donde tenemos dos condiciones verdaderas)

```js
  if (condición) {
    instrucciones si se da la condición
    }
   else if (condición) {
   }
  else {
    instrucciones si no se da la condición.
  }
```


### Operador Ternario

>Revisé el tema en "[Developer.Mozilla: Operador Ternario](https://developer.mozilla.org/es/docs/Learn/JavaScript/Building_blocks/conditionals#Operador_Ternario)", muy interesante, no conocía este operador.

#### Ejemplo

```js
var edad= parseInt(prompt("Ingresa edad"));
var nombre= prompt("Ingresa tu nombre");

edad>=18 ? console.log("Bienvenido/a." + nombre) : console.log("No podes ingresar.");
```

### Función `.toLowerCase()`

Muy útil cuando tenemos un `promt();` que carga valores que pueden venir en mayusculas o primera letra en mayuscula, y queremos comparar en un operador logístico el valor que introdujo el usuario. Comparamos siempre con un valor escrito todo en minusculas y con esta función, sea cual sea el valor que escriba el usuario (con variedad de mayusculas), el sistema lo traerá a la variable del `promt()` en minúsculas siempre.

## Tarea

1. COMPARANDO

    * Usá la consola para escribir una expresión que compare dos strings y produzca un valor TRUE.
    * Escribí una expresión comparando dos strings que devuelva FALSE.
    * Escribí una expresión que involucre un string y un número y retorne FALSE.
    * Escribí una expresión que involucre un string y un número y retorne TRUE

2. Se le pedirá al usuario ingresar tres números y se le mostrará en pantalla cuál es el mayor de ellos.

3. Mostrarle al usuario por pantalla un “Hola” y su nombre cuando se le pregunte cómo se llama.

4. EJERCICIO: CLUB
    Crea las variables `name`, `age`, `gender`, `isMember`, `thirsty` y `drink Name`. Utilizando _prompts_ irás preguntando a medida que lo necesites para darle valor a las variables.

    Escribir en código lo siguiente:
    * Si no son un miembro o si son menores de 21 años, dirígete a ellos como señor o señora, según corresponda y en tono de disculpa niégales el acceso al club.
    * Si no, saludalos como el señor o la señora (en su caso por género) y su nombre, y dales la bienvenida. Si tienen sed, pregúntale la bebida que les gustaría tomar.
    * Si su bebida favorita es cualquier cosa menos "Café Descafeinado", dice "sí" (nombre) "un" (drinkName) " viniendo!". Si piden un descafeinado, echalos del bar.

5. ¿Qué obtenemos en las siguientes expresiones? ¿True o False?
    Justificar la respuesta. (Investigar que es el `%`)

```js
// 1era expresion

    var x = 20;
    var y = "a";

    y === "b" || x >= 20

// 2da expresión

    var x = 5;
    var y = 8;

    !(x == "5" || x === y) && !(y != 8 && x <= y)

// 3er expresión

    x = 8;
    (x % 3 != 0 && x % 5 != 0)
```

Enlazar a [`www`](/www/curso/ns/claseJS2.html)