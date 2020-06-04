# Clase 3

>4 de Mayo - 2020

## Condicional

### SWITCH

Usamos este condicional cuando queremos comparar un valor con una serie de valores (casos).

```js
var metodoPago = prompt('¿Qué método de pago vas a usar?');

switch (metodoPago) {
    case "efectivo":
        console.log("Vas a pagar con " + metodoPago);
        break;

    case "crédito":
        console.log("Vas a pagar con " + metodoPago);
        break;

    case "débito":
        console.log("Vas a pagar con " + metodoPago);
        break;

    case "cheque":
        console.log("Vas a pagar con " + metodoPago);
        break;

    default:
        console.log("Método de pago no válido.");
        break;
}
```

### BUCLE WHILE

Condicional "Mientras"

```js
while (condicion) {
  Ejecuta bloque de instrucciones mientras la condición sea verdadera
  }
```

### Incremento

```js
//Imprimir los números del 1 al 5
let contador = 1;
while (contador < 6) {
    console.log("count es: " + contador);
    contador++;
}

//Mostrar 5 veces un saludo

let mensaje = "hola";
let aux = 0;

while (aux < 5) {
    document.write(mensaje + "<br>");
    aux++;
}

```

### BUCLE DO WHILE 

```js
do{
   Ejecuta bloque de instrucciones 
} 
while(condition);  Evaluamos condición


// Mostrar 5 veces un saludo

let mensaje = "hola";
let aux = 0;

do {
    document.write(mensaje + "<br>");
    aux++;

} while (aux < 5);

```

### BUCLE FOR

```js
for (inicio; condicion; incremento/decremento){
    codigo a repetir mientras la condicion del bucle sea cierta
}

// Mostrar 5 veces un saludo.

let mensaje = "¡Hola!";
for (i = 0; i < 5; i++) {
    document.write(mensaje + "<br>");
}


// Ahora a motrar 10 veces un saludo pero incrementando de a dos.  

let mensaje = "¡Hola!";
for (i = 0; i < 20; i += 2) {
    document.write(mensaje + "<br>");
}
```

## Tarea

Enlazar a [`www`](/www/curso/ns/claseJS3.html)