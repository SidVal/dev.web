# Clase 6

!> **Pospuesta para el lunes 18**, era el día Miercoles 13 de Mayo, pero la profe se sentía mal.

>Clase 18 de Mayo

## Anuncios de la clase

* 1ero de junio, final de las clases.
* Proyecto Final: aprovechar la clase para empezar el proyecto
  * Hasta el 8 de junio para entregar proyecto final.
* Cambio de profesor --> Ahora se suma una profesora nueva
  * Noe no va a dar las clases de ahora en más.

## DOM

Manipulación del DOM (Document Object Model)

* [Enlace Práctico](https:keen-wilson-691412.netlify.app/)

El DOM dá una representación del documento html como un grupo de nodos y objetos, de manera que los lenguajes de programación puedan acceder para modificar tanto su estructura, estilo y contenido. 

## ¿De qué manera se accede al DOM?

Se accedé a través de la palabra reservada: `document`

(Si colocamos en la consola del navegador `console.dir(document)`, nos percatararemos que eso trae la estructura de html en forma de objeto)

Para manipular los elementos del DOM, se deben cumplir 2 pasos:

* Obtener el elemento: selectores CSS
* Manipular el elemento una vez obtenido

### Paso 1: Obtener el elemento: selectores CSS `(.class,#id,*,p,h1)`

* `document.querySelector('.nombreClass')`
Obtiene un solo elemento a través de un selector
* `document.querySelectorAll('#nombreId')`
Obtiene un grupo de elementos a través de un selector y me regresa un array...
* `document.getElementById('nombreID')`
Obtiene un solo elemento unicamente a través de su ID

### Paso 2: Manipular el elemento una vez obtenido

* camelCase backgroundColor
* CSS ===> `elemento.style.propiedadCss` (De esta forma podemos cambiamos cualquier propiedad css de nuestro `*` elemento)
* CSS ====> `elemento.classList.add("clase")` - agregará la clase a nuestro elemento
* CSS ====> `elemento.classList.remove("clase")` - eliminará la clase a nuestro elemento
* CSS ====> `elemento.classList.toggle("clase")` - se fijará si el elemento tiene o no esa clase. Si la tiene se la quitará, y si no la tiene la agregará.
* HTML ===> `elemento.textContent` (representa el texto dentro de un elemento html/etiqueta)
* HTML ===> `elemento.innerHTML` (devuelve o establece la sintaxis HTML es decir etiqueta y texto)
* HTML ===> `elemento.value` (Obtiene y modifica el dato que ingresa el usurio en un input/campo de formulario)

## Tarea

Enlazar a [`www`](/www/curso/ns/claseJS6.html)