# Simple Tips

!>Simple Tips es una recopilación de tips, y artículos sobre diseño. Cosas que hay que tener en cuenta cuando uno se sienta a tocar el diseño de un sitio web.

Índice de artículos que componen esta recopilación:

- [7 Practical Tips for Cheating at Design](/c/css/simple-tips.md#use-color-and-weight-to-create-hierarchy-instead-of-size)
- [Designing as a developer in 2018](/c/css/simple-tips.md#first-impressions-are-everything)
- [50 Things You -Probably- Forgot To Design](/c/css/simple-tips.md#50-things-you--probably--forgot-to-design)

***

?> Tips del artículo: [7 Practical Tips for Cheating at Design](https://medium.com/refactoring-ui/7-practical-tips-for-cheating-at-design-40c736799886)

## Use color and weight to create hierarchy instead of size 

Las imágenes hablarán por mil palabras, es muy simple el concepto que se persigue:

![](https://cdn-images-1.medium.com/max/1000/1*KYZikUrx9F02cJU9kpn_gQ.png)

En vez de agrandar la letra para darle importancia, se recomienda darle color "negrita". O en el caso del texto secundario, en vez de hacerlo más pequeño, usar propiedades de color para hacerlo menos llamativo.

![](https://cdn-images-1.medium.com/max/800/1*2YuCOOCjdMEJxg-Lb6G2FA.png)

En esta imagen se ven los colores y las propiedades CSS para lograr el efecto deseado.

![](https://cdn-images-1.medium.com/max/800/1*AHrVF0vTtj-yoyhmBNHNLA.png)

Aquí se visualiza el tamaño de letra que podría usarse:

* A normal font weight (400 or 500 depending on the font) for most text
* A heavier font weight (600 or 700) for text you want to emphasize

## Don’t use grey text on colored backgrounds

![grey text on colored backgrounds](https://cdn-images-1.medium.com/max/800/1*ajjrhpp-l3GDG7ne7Am8fw.png)

Convertir el texto en un gris más claro es una gran manera de quitarle importancia a los fondos blancos, pero no se ve tan bien en los fondos de color. Esto se debe a que el efecto que realmente estamos viendo con gris en blanco es un contraste reducido.

Hacer que el texto esté más cerca del color de fondo es lo que realmente ayuda a crear una jerarquía, sin que sea gris claro.

![](https://cdn-images-1.medium.com/max/800/1*CNaej5BrPr9lWTMAfllfdw.png)

## Offset your shadows

![Offset your shadows](https://cdn-images-1.medium.com/max/1000/1*LisFGBtYOvR-3cwFTzTDUw.png)

En lugar de utilizar grandes difuminados y valores de dispersión para hacer que las sombras de las cajas sean más perceptibles, agregue un desplazamiento vertical.

## Use fewer borders

![Use fewer borders](https://cdn-images-1.medium.com/max/1000/1*fNm6hXxnBvIcHGp9DQRdRQ.png)

* Use a box shadow
* Use two different background colors
* Add extra spacing

## Don’t blow up icons that are meant to be small

![](https://cdn-images-1.medium.com/max/1000/1*57g05Gl-FjDtcCUtaPPOLw.png)

## Use accent borders to add color to a bland design

![](https://cdn-images-1.medium.com/max/1000/1*uwsVo34TWzKM91Gyqsh88Q.png)

## Not every button needs a background color

![](https://cdn-images-1.medium.com/max/1000/1*SIfuJd-3ZFYyA_W1Nme1Yw.png)


***

?>Tips del artículo: [Designing as a developer in 2018](https://blog.logrocket.com/designing-as-a-developer-in-2018-eca1ab5bff2)

## First impressions are everything

Principio de Diseño: Semi-Skeuomorphism

Skeuomorphism is a design principle where shadows, gradients, and textures are used to create elements representative of real-world elements. Texture and light are the two primary ingredients in **skeuomorphic design**, and from 2007–2013, they seemed to appear everywhere.

et by 2012, a slow migration had begun towards a much **flatter design system**. Driven by the emergence of design languages like [Metro UI](https://en.wikipedia.org/wiki/Metro_%28design_language%29) and [Material Design](https://en.wikipedia.org/wiki/Material_Design), flat design introduced softer and more uniform color palettes, thinner typefaces, and the use of shadows as tools of systematic hierarchy as opposed to the reinforcement of hyper-realism (referred to by Google as [“Elevation Hierarchy”](https://material.io/design/environment/elevation.html#elevation-hierarchy)).

So, **Semiskeu is a design principle** that combines the colorful gradients and use of shadows found in skeuomorphic design with many of the principles found in flat design. In semiskeu, shadows and gradients are not only used to imply light, but are used to accent, amplify, or bring attention to notable elements on the page. While semiskeu maintains the geometric simplicity found in flat design, an increasing number of websites utilize unconventional shapes and curved divs in order to the page as a fluid entity, as opposed to a page divided into clear horizontal sections.

## Colores

Elija su paleta de colores cuidadosamente.

Reglas Generales:

- El fondo del contenido de su sitio nunca debe ser más que un tono de gris; Use blanco, gris claro o gris oscuro.
- Solo use fondos de colores o degradados en secciones diseñadas para llamar la atención del usuario; por ejemplo _headers_, _heroes_, secciones _call to action_, etc.
- En la mayoría de los casos, use texto blanco en cualquier imagen, color o fondo degradado; además, una sombra ligera puede ayudar a promover la prominencia del texto.
- **Nunca usar negros absolutos**. El negro puro y opaco (#000) suele ser demasiado duro para la mayoría de las páginas web. Usar `opacity` de al menos un 84%.
- Asegúrese de que los componentes coloreados no estén bordeados entre sí. A menos que los colores sean complementos muy fuertes el uno del otro, a menudo el contraste de dos colores vecinos puede crear una sensación de polarización y división que interrumpe el flujo de la página. 

### Recursos de color

- [Flat UI Colors](https://flatuicolors.com/)
- [Flat UI Color Picker](http://www.flatuicolorpicker.com/)
- [Adobe Color](http://color.adobe.com/)
- [Coolors](https://coolors.co/)

## Luz

Si bien el color sirve para muchos propósitos, también se puede usar para dar luz a través del uso de degradados. En _semiskeu_, esta práctica es increíblemente común.

Reglas Generales:

- Ensure consistency across all components. Once you’ve defined a light source for your page, ensure that all shadows follow its direction. If light is “hitting” your page at `135` degrees, then every shadow and gradient should fall at `135` degrees.
- Use shadows as a tool to present hierarchy or state. Shadows should be used to either highlight page components, provide page structure, or depict state. For example, you can depict a button is pressed by lowering its elevation as opposed to changing its color. Too many shadows can present too much dimensionality, so be careful (e.g. don’t create a site with 18 unique elevations).
- Your shadow’s offset should equal roughly half of its blur radius. For example, a shadow with an `x / y` offset of `10px` should have a blur radius of roughly `20px`. This approach renders the most authentic shadow.
- Always keep the opacity of shadows to under `25%`. Err on the side of subtlety so not to detract from your design. If you are using a dark background, in some cases you may need to bump up the opacity of your shadow in order to ensure its visibility.
- Shadows don’t always need to be black. When using shadows on colored surfaces, it is often advantageous to use a very dark or dulled variant of the background color to improve the shadow’s blend.

### Recursos de luz

- [CSSGradient](https://cssgradient.io/gradient-backgrounds/?ref=producthunt)
- [Gradient Hunt](https://gradienthunt.com/)
- [Web Gradients](https://webgradients.com/)
- [Elevation Hierarchy Guidelines](https://material.io/design/environment/elevation.html#depicting-elevation)

## Tipografía

La tipografía que está de moda en sitios como Medium, Spotify, o Airbnb, es la denominada: `Circular`.

The Circular font stems from a sans-serif font family called geometric sans. Geo-sans features clean geometric shapes and offers modernist flair, making it one of the most popular font families among modern designers. You can never go wrong using a geo-sans font on your webpage. Among the most popular are:

- [Open Sans](https://fonts.google.com/specimen/Open+Sans), [Lato](https://fonts.google.com/specimen/Lato), and [Montserrat](https://fonts.google.com/specimen/Montserrat) (free)
- [Museo Sans](https://typekit.com/fonts/museo-sans), [Proxima Nova](https://typekit.com/fonts/proxima-nova), and [Myriad](https://typekit.com/fonts/myriad) (starting at $60 / year)
- [Circular](https://lineto.com/The+Fonts/Font+Categories/Text+Fonts/Circular/), [Avenir Next](https://www.fonts.com/font/linotype/avenir-next), and [Gotham](https://www.typography.com/fonts/gotham/overview/) (pricey)

Reglas Generales:

- Never use more than two typefaces. The majority of webpages stick to a single typeface, however, occasionally you will see different typefaces used to denote between headers and body text. Take Medium for example. You’ll notice the menu of this page, as well as every header, is a sans-serif font, while the body remains serif.
- Reserve stylistic fonts for logo use only. This rule is kind of broad, as there are always edge cases, but in general you should stick to using stylistic fonts (any kind of curly, curvy, or novelty font) for logos only. Take Linguistic for example, which uses Lily Script One for its logo but uses Lato / Proxima Nova in for all other text.
- Maintain a consistent type hierarchy. You should only ever be using a handful of font sizes and one or two font weights to develop type hierarchy. Think of the HTML header tags h1, h2, h3, etc. You should have distinct visual styles for at least four of them, using variations in brightness, size, and weight to denote the importance of text. For a terrific example of type hierarchy, check out Apple’s Human Interface Guidelines.
- Keep your body text a normal weight and well-spaced. Text should always be legible, so reserve light or bold fonts for large headers or cases in which the font weight will have little impact on the legibility of text. Additionally, always keep the line spacing of your body text at 1.15 to 1.5 (depending on size) to maximize legibility. For example, this article has roughly a 1.5 rem line spacing. Justifying your body paragraphs doesn’t hurt, either.

### Recursos de tipografías

- [Google Fonts](https://fonts.google.com/)
- [FontSquirrel](https://www.fontsquirrel.com/)
- [TypeKit](https://typekit.com/)
- [LostType](http://www.losttype.com/)
- [The League of Movable Type](https://www.theleagueofmoveabletype.com/)
- [Identifont](http://www.identifont.com/)
- [WhatTheFont](https://www.myfonts.com/WhatTheFont/)

?> [Ver repo del autor de éste artículo](https://github.com/Nickersoft/design#a-style-guide-for-modernist-design)

***

## 50 Things You -_Probably_- Forgot To Design

Realmente imperdible artículo, pensaba resumirlo, pero justo ahora no tengo tiempo. [50 Things You -_Probably_- Forgot To Design](https://medium.com/ux-power-tools/50-things-you-probably-forgot-to-design-7a288b0ef914)

***

## Más lecturas

- [Creating a Style Guide: One-Stop Place for Your UI Design Team](https://uxplanet.org/creating-a-style-guide-one-stop-place-for-your-ui-design-team-af504d6b7adf)
- [Building a UI Component Design System](https://blog.bitsrc.io/building-a-consistent-ui-design-system-4481fb37470f)
