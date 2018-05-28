# Unidad 3

Antes de seguir deberías tener:

1. Conocimiento medio de HTML5 y CSS3. [_Repasar Uniodad 2_](/u/unidad2.md).
1. Tener a mano la [documentación de Bootstrap](https://getbootstrap.com/docs/4.1/getting-started/introduction/). (Prestar atención a la versión a utilizar)
1. Conocimiento medio del depurador de tu navegador web. (Preferentemente Google Chrome)

## Bootstrap

Es un framework Responsive Design diseñado para ayudar a diseñadores y desarrolladores en el proceso de creación de sitios web y aplicaciones de una manera rápida y fácil controlando la parte _front_ de los sitios web. Bootstrap es un proyecto Open Source (de código abierto) que podemos visualizar en [GitHub: Bootstrap](https://github.com/twbs/bootstrap). 

A finales del 2012, se lanzó la versión 3 (-[_ver en GitHub_](https://github.com/twbs/bootstrap/pull/6342#issue-3439584)) que consistía en una versión más ambiciosa: Bootstrap 3 será primero para dispositivos móviles. En Agosto del 2015, Bootstrap lanzaba el _[prerelease](https://github.com/twbs/bootstrap/releases/tag/v4.0.0-alpha)_ de la versión 4, pero recién en Enero del 2018 se lanza la [versión 4.00](https://github.com/twbs/bootstrap/releases/tag/v4.0.0). 

### Desactivar Responsive

En la documentación de clase explica que si queremos quitar la propiedad responsive (para que la página web re-adapte el diseño cuando cambia el tamaño de la pantalla que muestra el contenido web), podemos realizar éstos pasos:

1. Quitar el meta tag "viewport"
1. Aplicar un `max-width:none !important;` en todas las páginas donde está Bootstrap funcionando. 
1. Si utilizamos menus y barras de navegación, hay que analizar todas las reglas que hacen referencia a dichos elementos para eliminar el comportamiento que hará que se compriman cuando se cambia el tamaño de la pantalla.
1. Utilizar clases `.col-xs-*` (_xs = extra small_)

?>No queda claro por qué el documento de clase explica tal secuencia, si Bootstrap es un framework "pensado" para diseño responsive. Mi duda aquí, sería: ¿para qué usaríamos Bootstrap en una página donde no queremos que re-adapte ante cambios del tamaño de pantalla? :thinking: 

## DOCTYPE

Bootstrap necesita que el código que usemos en nuestra web sea HTML5, por lo tanto, es obligatorio declarar el tipo de documento a través del `<!DOCTYPE html>`

## Responsive Meta

`<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">`

Los meta tags Viewport que usan `width=device-width` causarán que la página se escale (hacia abajo) para ajustarse a los contenidos que sobresalen de los límites del _viewport_. Puedes anular este comportamiento añadiendo `shrink-to-fit=no`. El valor añadido prevendrá que la página se escale para ajustarse al _viewport_.

Si agregamos `user-scalable=no` al meta tag anterior, haremos que la página web que tiene dicho meta tag no permita que el usuario haga _**zoom**_ con el dispositivo móvil.

## Imágenes 

La documentación del curso especifica que debemos usar determinadas clases para que las imágenes sean o no responsives, y aquí tenemos un problema en cuanto a versiones, pues según observo el PDF del curso está escrito para la versión 3 de Bootstrap, y mientras redacto este documento ya estamos en la versión 4 del framework.

### Responsive Images

La clase `img-responsive` está disponible en [versión 3](https://getbootstrap.com/docs/3.3/css/#images). Mientras que para la [versión 4](http://getbootstrap.com/docs/4.1/content/images/#responsive-images), se puede usar la clase `img-fluid`.

Si la imagen es una miniatura, con la versión 4 se puede aplicar la clase: `img-thumbnail` que agrega bordes redondeados a la imagen. 

### Alinear elementos

Para centrar elementos, en Bootstrap 3 se recomienda usar la clase `center-block`, mientras que en la versión 4: `text-center`.

Referencias:

* [Bootstrap4: Text Alignment](http://getbootstrap.com/docs/4.1/utilities/text/#text-alignment)
* [Bootstrap4: Aligning Images](http://getbootstrap.com/docs/4.1/content/images/#aligning-images)
* [Bootstrap3: Center](https://getbootstrap.com/docs/3.3/css/#helper-classes-center)
* [Bootstrap3: Type Alignment](https://getbootstrap.com/docs/3.3/css/#type-alignment)

## Modelo de Rejilla

_12 columnas_

!> Habrá que ver cómo se da en clase este tema.

## Encabezados

<script async src="//jsfiddle.net/Waldo/7g53vxvp/embed/html,result/"></script>

