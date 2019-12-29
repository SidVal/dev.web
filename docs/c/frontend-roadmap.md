# Frontend Roadmap {docsify-ignore-all}

![Frontend Roadmap](https://roadmap.sh/assets/img/roadmaps/frontend-transparent.png)

<!-- ![Frontend Roadmap 2018](https://cdn-images-1.medium.com/max/1000/1*_EfUP-q18EfebxPgZ6BCbA.png) -->

## Frontend

Imperdible artículo sobre lo que hay que aprender para dominar el frontend de una web: [Modern Frontend Developer](https://medium.com/tech-tajawal/modern-frontend-developer-in-2018-4c2072fa2b9c).

Consejos que se desprenden de éste artículo:

- Aprender lo básico de HTML
  - DOM
- Aprender algo de [CSS](/c/css/)
  - Grid vs. Flexbox
  - Media Queries
  - Responsive Websites
- Aprender lo básico de [JavaScript](/c/js/)
  - Aprender sobre constructores básicos y la sintaxis.
  - Aprender a manipular el DOM
  - Aprender conceptos propios de JS, como _prototype_, _event bubbling_, etc.
  - Aprender AJAX (XHR)
  - Aprender ES6+ y sobre Javascript modular.
- ¿Aprender [Jquery](/c/jquery/)? - _Opcional_
- Gestión de paquetes
  - yarn
  - npm
- Preprocesadores CSS (CSS Preprocessors): agregan funcionalidad en la parte superior del CSS para permitir hacer cosas que con CSS no se podría. Hay que aprender cualquiera de éstos, y ver cómo funcionan:
  - SASS (se recomienda comenzar por éste)
  - PostCSS
  - Less
- CSS Frameworks (si bien no es necesario aprenderlos, es bueno saber que existen y lo que se puede lograr con ellos)
  - [Bootstrap](/c/bootstrap/)
  - Materialize CSS
  - Semantic UI
  - Bulma
- CSS Arquitecture - Si bien hay varias formas para definir la estructura del CSS, y dejar el código más manejable y fácil de mantener, las opciones son:
  - [BEM](/c/css/webs.md#bem) - (_Recomendado_)
  - OOCSS
  - SMACSS
  - SUITCSS
  - Atomic
- Build Tools
  - Linters
    - ESLint
    - JSLint
    - JSHint
    - JSCS
  - Bundlers
    - [Webpack](/c/js/webpack.md) - (_Recomendado para apps_) 
    - Rollup - (_Recomendado para librerías_)
    - Parcel
    - Browserify
  - NPM Scripts
    - Gulp
- Framework (JS)
  - React
    - Redux
    - Mobx
  - Vue
    - Vuex
  - [Angular](/c/angularjs/)
    - TypeScript
    - Rx.js
    - ngrx
  _Curvas de aprendizaje React.js vs Angular_
  ![Curvas de aprendizaje React.js vs Angular](../assets/img/react-vs-angular-learning.jpg)
- Progressive WebApps: [PWA](/c/pwa.md)
- Testing
  - Jest
  - Mocha
  - Karma
  - Enzyme
- Static Type Checkers
  >You don’t need to learn these but they really give you superpowers and can be learnt in a few hours and then you can keep . There is mainly _TypeScript_ and _Flow_.
- Server Side Rendering
- Todo lo que no se ha mencionado y seguir investigando:
  - HTML5 APIs
  - Canvas
  - SVG
  - SourceMaps
  - programación funcional
  - TC39
  - ... _etcetera!_

## Esquema de evolución saludable para un Diseñador web

![Evolución diseñador web](../assets/img/evolucion-frontend.png)
>Fuente: [La evolución del “Diseñador Web a Frontend Developer”](https://es.quora.com/q/avxhpsoljiyyzebk/La-evoluci%C3%B3n-del-Dise%C3%B1ador-Web-a-Frontend-Developer)

## Lecturas

- [La evolución del “Diseñador Web a Frontend Developer”](https://es.quora.com/q/avxhpsoljiyyzebk/La-evoluci%C3%B3n-del-Dise%C3%B1ador-Web-a-Frontend-Developer)
- [Testing Your Frontend Code : Part I (Introduction)](https://hackernoon.com/testing-your-frontend-code-part-i-introduction-7e307eac4446)
- [Beginner’s Web Development Guide Part 1: Frontend](https://medium.com/devtrailsio/beginners-web-development-guide-part-1-frontend-ca59f1877ec5)
   ![Frontend development languages and tools](https://cdn-images-1.medium.com/max/800/1*dTugtD0bF1g4_eEWzYiaxg.png)

## Backend Roadmap

Imperdible la infografía del "[Backend Roadmap](/c/backend-roadmap.md)".

## static-site-generator

En Github se puede encontrar excelentes proyectos donde el front-end lo es todo. Sistemas que permiten documentar, ya sea información funcional o técnica. He llevado buen tiempo siguiendo algunos proyectos, y listando otros de mi interés, y los expondré en este apartado.

- [Listado de sitios: StaticGen](https://www.staticgen.com/)
- [Listado de Github, ordenado por folks](https://github.com/search?o=desc&q=topic%3Astatic-site-generator&s=forks&type=Repositories&utf8=%E2%9C%93)
- [StaticMan](https://staticman.net/)
- [Slate](https://github.com/slatedocs/slate)
Sirve para documentar información técnica, lo usan principalmente para exponer públicamente documentación sobre APIs. [Ver ejemplos](https://github.com/slatedocs/slate#companies-using-slate)
- [SiteLeaf](https://learn.siteleaf.com/content/)
- [MkDocs](https://github.com/mkdocs/mkdocs)
  - [Mi prueba de MkDocs](https://github.com/SidVal/mkdocs-site)
- [Metalsmith](https://github.com/segmentio/metalsmith)
  - [Mi prueba con MetalSmith](https://github.com/SidVal/metalsmith)
- [Jekyll](https://jekyllrb.com)
  - Arbol de Datos: se me ocurrió que usando los **[Data Files](https://jekyllrb.com/docs/datafiles/)** de Jekyll podría crear árbol de datos. [Leer seguimiento de esta idea](https://github.com/SidVal/SidV/issues/6)
    * [Tree](https://github.com/search?o=desc&q=topic%3Atree&s=updated&type=Repositories)
    Por orden de actualización
    * **EXCELENTE**, ver: http://docs.w3cub.com/dom/ (_[código fuente](https://github.com/icai/docshub)_)
    * http://repetere.github.io/stylie.treeview/
    Muy lindo como se visualiza, _[ver código fuente](https://github.com/typesettin/stylie.treeview)_
    * http://fperucic.github.io/treant-js/
    Directamente IMPRESIONANTE (ver demos en la misma página)
    * https://pioneercode.github.io/pioneer-tree/
    Ver _[código fuente](https://github.com/PioneerCode/pioneer-tree)_. 
    * https://mbraak.github.io/jqTree/
    Ver _[código fuente](https://github.com/mbraak/jqTree/)_. 
    * https://sidval.github.io/SidV/tree.html
    Más básico, _[ver código](https://github.com/SidVal/SidV/blob/master/tree.html)_; fored from _[gistList](https://gist.github.com/1321264) - [autor](https://gist.github.com/mitchellrj)_
    * http://alloyui.com/tutorials/tree/
    Proyecto en github, no me convence., pero es para tener en cuenta
    * https://codepen.io/anon/pen/bRLGvd?editors=1000 
    Muy buen arbol.

## Fuentes

Este increíble trabajo es propiedad de [@kamranahmedse/developer-roadmap](https://github.com/kamranahmedse/developer-roadmap).
