# Blockchain

[<img width="840" height="551" alt="image" src="https://github.com/user-attachments/assets/9f1c9fd6-6d16-424e-b75b-f41edba038c0" />](https://roadmap.sh/blockchain?rc=68d3f09dd7b6adb66d8e14e3)


## Por qué

Breve historia: 

> A través de telegram se me acercó una persona con una duda, me pasó captura de su billetera web3 de Bitget. Tenía dentro más de 500 USDT pero no podía sacarlos ya que corrían en TRON y no tenía Gas de TRX. O sea, tenía pero muy poco. Investigando el caso en profundidad, encontré que la cuenta que el sujeto tenía, estaba extraña. En la blockchain se notaba que había demasiados movimientos desde y hacia su cuenta.
>
> ... _[seguir leyendo](https://github.com/SidVal/dev.web/wiki/Blockchain#historia)_.

!> Este repo será más enfocado al sector programación, si necesitas la teoría sobre Blockchain y el universo de las criptomonedas, podes consultar [mi curso gratuito de LocademiaCripto.com](https://curso.locademiacripto.com)

## Básico

Imaginate que blockchain es como usar Netflix o WhatsApp. Vos no necesitás entender cómo funcionan los servidores, la programación o la tecnología que hay detrás - simplemente los usás y listo.

Lo mismo pasa con blockchain para los programadores:

Todas las partes complicadas (como el "minado", los códigos secretos súper seguros, las redes de computadoras conectadas) son como el "motor" de un auto. Vos como programador no necesitás ser mecánico para manejar el auto. Solo necesitás saber qué puede hacer blockchain (como guardar información de forma súper segura que nadie puede cambiar)

En pocas palabras: Blockchain tiene muchas partes técnicas complicadas, pero para usarlo solo necesitás entender QUÉ hace, no CÓMO lo hace. Es como usar cualquier herramienta de programación - te enfocás en los resultados, no en toda la ingeniería que hay detrás.

### Transacciones

Imaginá blockchain como un cuaderno gigante que todo el mundo puede leer, pero que está repartido en miles de copias por todo el mundo.

Las reglas del cuaderno son:

- Cualquiera puede leer lo que está escrito (como ver cuánta plata tiene cada persona)
- Para escribir algo nuevo tenés que pedirle permiso a TODOS los que tienen una copia del cuaderno - si la mayoría dice "sí", se escribe
- Todo o nada: Si querés transferir $100 de Juan a María, O se hace completo (Juan pierde $100 Y María gana $100) O no se hace nada. Nunca puede pasar que Juan pierda la plata pero María no la reciba.
- Firma digital: Es como si cada persona tuviera una firma súper especial que nadie puede copiar. Solo vos podés mover TU plata porque solo vos tenés tu "firma digital".

Ejemplo concreto: Si Juan quiere mandarle $50 a María, toda la red verifica que Juan realmente tenga $50, que sea realmente Juan quien lo pide (por su firma), y solo entonces se hace el cambio en TODAS las copias del cuaderno al mismo tiempo.

### Bloques

Imaginá que dos personas al mismo tiempo quieren comprar el último chocolate en una máquina expendedora con la misma moneda. **¿Quién llega primero?**

**El problema:**
En internet no existe el "primero" - es como si miles de personas estuvieran mirando desde diferentes lugares y cada uno dice "¡yo vi que Juan llegó primero!" o "¡no, María llegó primero!"

**La solución de blockchain:**
1. **Se hace una fila ordenada** - todas las transacciones se ponen en "bloques" (como cajas)
2. **Un solo orden para todos** - toda la red se pone de acuerdo en qué orden pasaron las cosas
3. **Si hay conflicto** - la transacción que queda segunda se rechaza (como decir "sorry, ya no hay chocolate")

**¿Por qué se llama "cadena de bloques"?**
Los bloques se van apilando uno tras otro como una cadena: Bloque 1 → Bloque 2 → Bloque 3...

**Importante:** A veces los últimos bloques pueden "deshacerse" (como borrar con goma), pero mientras más bloques se agreguen encima del tuyo, más seguro está. Es como cemento que se va endureciendo - al principio está blando, pero después de un rato ya no se puede cambiar.

**En pocas palabras:** Blockchain resuelve el problema de "quién llegó primero" poniendo todo en orden y haciendo que todos estén de acuerdo.

#### Nota

**El problema:**
Cuando enviás una transacción (como "quiero mandar $10 a mi amigo"), NO podés elegir cuándo se va a procesar exactamente.

**¿Por qué?**
Porque vos **no decidís** - son los "mineros" (las personas con computadoras que procesan las transacciones) quienes eligen qué transacciones poner en cada bloque.

**Ejemplo:**
Es como mandar una carta por correo:
- Vos la ponés en el buzón
- Pero el cartero decide cuándo la va a buscar y entregar
- Puede ser mañana, puede ser pasado mañana
- No está garantizado que sea "en el próximo viaje"

**Si necesitás algo programado para el futuro:**
Podés usar herramientas especiales llamadas:
- **Smart contract automation** (automatización de contratos inteligentes)
- **Oracle services** (servicios de información externa)

Estas son como "despertadores automáticos" que ejecutan cosas en momentos específicos.

**En pocas palabras:** Vos mandás la transacción, pero no controlás cuándo se procesa. Si necesitás algo programado para una fecha específica, tenés que usar herramientas especiales.

