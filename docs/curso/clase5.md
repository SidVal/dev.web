# Clase 5: Bootstrap #2  {docsify-ignore-all}

Temas vistos:

* Tablas en HTML5 (muy básico, solo se mencionó)
* Tablas con Bootstrap 3
  `<table class="table table-bordered table-hover table-condensed table-striped">`
* `img-responsive`
* `img-circle`
* `img-rounded`
* Cómo modificar el _bootstrap.css_ y por qué no modificarlo
* Grillas HTML
  * Concepto
  * Class row
  * Tamaño de col: `col-xs-1 col-sm-1 col-md-1 col-lg-1`
  * 4 tipos de resoluciones (y con la versión 4 se agrega una 5ta resolución)
  * Push y Pull
  * Anidados
  * Clearfix

## Tarea Clase 5

Modificar el blog que vimos en la [clase 3](https://sidval.github.io/www/curso/c3/).

Realizar éstas modificaciones:

* Que sea escalable el contenido, si cambia la resolución, aplicar bootstrap.
* Encolumnado en vez de aside.
  * Que los artículos y el aside estén contenidos en divs con clases row y col de bootstrap.
* El contenido de la columna de la derecha de 8, y el aside en columna de 4.
* Al footer, a las imagenes off-set de 4.
* Agregarle 4 o 5 artículos.
  * Agregar 4 o 5 artículos más, por ejemplo, buscar noticias en sitios web y copiarlas, agregarles una imagen y un ancla
* En el aside, en la parte del "me presento..." haya referencia a los artículos que agregamos
  * Agregar los enlaces a los artículos en el aside.
* Usar propiedad overflow en la parte de los artículos, para que los artículos sean scrobleables
  * Aplicar css override-x: hidden; override-y:scroll; y un height:500px; al div que contiene los artículos para que se vean con un scroll vertical y no estiren la pantalla.
* Que las imágenes estén contenidas en divs con clases row y col de bootstrap.
* En botones sociales meter encolumnado

NOTA: La idea es que al modificar la resolución de la página web el contenido sea responsivo y se puedan ver las distintas entradas de los artículos con tan solo un click en el enlace en el aside.