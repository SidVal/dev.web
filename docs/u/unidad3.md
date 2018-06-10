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

## Encabezados

<script async src="//jsfiddle.net/Waldo/7g53vxvp/embed/html,result/"></script>

## Modelo de Rejilla

Modelo que divide la pantalla en _12 columnas_. Es bastante complejo de entender, ver las prácticas de las clases 5: [Grilla](https://sidval.github.io/www/testing/c5/clase5-grillas.html).

?> Recomiendo leer el modelo desde el sitio oficial de Bootstrap: [Grid System](http://getbootstrap.com/docs/4.1/layout/grid/).

Bootstrap usa [Flexbox](/c/css/flexbox.md) para mejorar el modelo de [Layout CSS Grid](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout).

El modelo de rejilla es un elemento importante de un marco de CSS, ya que la creación de diseños complejos sin un sistema de cuadrícula potente y flexible puede ser una tarea intimidante.

Entre las nuevas características del último sistema de cuadrícula Bootstrap (versión 4), encontramos el punto de corte de la cuadrícula `xl` (extra grande), que corresponde a un tamaño de pantalla extra grande, y el uso de _Flexbox_ en lugar de flotadores como el mecanismo de diseño subyacente.

### Conceptos claves

Lo más importante cuando se piensa en encolumnados (el modelo de rejilla, o CSS Grid) es lo siguiente:

* `.container`
* `.row`
* `.col-*-*`

#### Container

El contenedor es el envoltorio externo para el diseño de la cuadrícula. Es un `div` que tiene o el contenedor de clase para ancho fijo o `.container-fluid` para un ancho completo del 100%.

#### Row

La class `row` hace referencia a una _fila_ y sirve como un contenedor lógico para las columnas.

#### Column

Una columna es lo que hace un bloque en la grilla. Debe estar contenido en una fila.

El sistema de rejilla Bootstrap (o encolumnado) proporciona estas clases de columnas:

* `.col-xs-*`: diseñado para pantallas extrapequeñas de menos de 576px de ancho
* `.col-sm-*`: diseñado para pantallas pequeñas con un ancho igual o superior a 576px
* `.col-md-*`: diseñado para pantallas medianas con un ancho mayor o igual a 768px
* `.col-lg-*`: diseñado para pantallas grandes con ancho mayor o igual a 992px
* `.col-xl-*`: diseñado para pantallas extra grandes que tienen un ancho igual o superior a 1200px

>No es necesario agregar varias clases si se desea especificar el mismo ancho para diferentes tamaños de pantalla; solo agrega la clase con el punto de corte más pequeño. Por ejemplo, en lugar de `.col-sm-6` y `.col-md-6`, solo necesita aplicar `.col-sm-6`.

!>Hay un artículo (en inglés) muy interesante sobre [cómo dominar el modelo rejilla de Bootstrap 4](https://www.sitepoint.com/bootstrap-grid-mastering-flexbox/).

## Media Queries

Las "media queries" de bootstrap son quizás lo más importante junto al encolumnado (el modelo de rejilla). Se utilizan para establecer distintos puntos de ruptura dentro del código, que mostrarán distintos estilos de acuerdo al tamaño establecido de la pantalla que se use para mostrar el contenido.

En la documentación oficial de Bootstrap estas _media queries_ las encontramos como [Responsive breakpoints](https://getbootstrap.com/docs/4.1/layout/overview/#responsive-breakpoints).

```css
// Dispositivos extra pequeños (celulares de menos de 576px)
// No hay consulta de medios para `xs` ya que este es el predeterminado en Bootstrap

// Dispositivos pequeños (celulares apaisados, mayor a 576px)
@media (min-width: 576px) { ... }

// Dispositivos medianos (tabletas, 768px y más)
@media (min-width: 768px) { ... }

// Dispositivos grandes (escritorios, 992px y más)
@media (min-width: 992px) { ... }

// Dispositivos extragrandes (escritorios grandes, 1200px y más)
@media (min-width: 1200px) { ... }
```

## Resetear columnas

Página 21 (PDF2).