# Clase 1

- Fecha: 20/12/2025
- Cuando dice "C." es "Cristian", el profesor.

## Resumen

La reunión fue una sesión de bienvenida y introducción al curso de Blockchain de Education Haiti, donde la moderadora Juana presentó las plataformas de aprendizaje y los requisitos administrativos. Se explicó el uso de Alumni para material teórico, Discord para comunicación, y se detallaron los cinco módulos del curso que cubrirán desde fundamentos de blockchain hasta programación de Smart Contracts en Solidity. El profesor Cristian proporcionó una introducción técnica extensa sobre conceptos básicos como hash, cadenas de bloques, minado y validación, usando ejemplos prácticos y referencias a ataques históricos como el de Ronin. Los participantes compartieron sus antecedentes y expectativas, incluyendo Ezequiel-Daniel-Ferreira-Lima quien busca fortalecer sus conocimientos técnicos aplicados, mientras que Osvaldo y Diego tienen experiencia previa en el mundo blockchain. Se discutieron herramientas como Metamask, Remix y se aclararon dudas sobre la seguridad y funcionamiento de las blockchains, concluyendo con una explicación sobre el proceso de validación y confirmaciones en la red.

## Presentación del Curso de Capacitación
Juana presentó el curso y explicó las plataformas que se utilizarán durante la capacitación, incluyendo alumni y Discord. Se detallaron los requisitos para obtener el certificado, como la aprobación de exámenes y el 75% de asistencia, aclarando que las clases grabadas también se consideran para el cálculo de asistencia. Juana proporcionó información sobre cómo acceder a las plataformas, completar los exámenes y participar en encuestas para obtener créditos adicionales.

## Curso de Blockchain y Ethereum
C. presentó un curso de blockchain y Ethereum dividido en 5 módulos que cubrirán conceptos teóricos, programación en Solidity, tipos de contratos, tokens y desarrollo de DApps. Los participantes compartieron sus expectativas y antecedentes, incluyendo experiencias previas con PHP y web development, y C. advirtió sobre ofertas laborales falsas en la industria. Se estableció que el curso se realizará a través del canal oficial de Discord con material teórico, laboratorios adicionales y un proyecto integrador recomendado.

## Requisitos Técnicos del Curso Blockchain
C. explicó los requisitos técnicos para el curso, indicando que solo se necesita instalar Ubuntu para configurar Power Show y que los estudiantes pueden usar soporte técnico de Education a través de Discord. C. detalló que el curso se enfocará en programación blockchain usando Remix en lugar de Ubuntu, y que los elementos desactualizados como ganache y WSL ya no serán necesarios. C. describió el contenido del módulo 1, que incluirá temas como Bitcoin y Ethereum, redes de prueba como Sepolia, y la creación de contratos inteligentes en Solidity, enfatizando la importancia del testing riguroso y las auditorías antes del lanzamiento en producción.

## Ataques a Blockchain y Seguridad
C. explicó varios conceptos sobre ataques a blockchain, usando como ejemplo el ataque a Ronin de Axie Infinity donde se robaron 400 millones de dólares. Explicó que aunque un ataque de 51% es teóricamente posible, es improbable en redes fuertes como Ethereum debido a la gran cantidad de nodos (1 millón) y la inviabilidad económica. C. también detalló cómo Bitcoin resolvió el problema de los generales bizantinos mediante comunicación P2P entre nodos, y explicó el uso de hashes para verificar la integridad de los datos en la blockchain.

## Conceptos de Hash y Blockchain
C. explicó el concepto de colisiones en hash y cómo la blockchain mantiene la integridad de los datos a través de la encriptación y enlace de bloques usando hashes. Se discutió que aunque las colisiones son matemáticamente posibles, son extremadamente improbable debido a la cantidad de bits utilizados (256) y la complejidad computacional requerida. C. también explicó el proceso de validación de bloques, conocido como minar, y cómo cada bloque se vincula con el anterior a través de hashes, lo que hace que modificar datos en bloques anteriores requiera re-minar todos los bloques posteriores, lo que se vuelve económicamente inviable con cada nueva confirmación.

## Dificultades Técnicas en Blockchain
C. explicó las dificultades técnicas para realizar ataques en blockchain, señalando que se necesitan más del 50% de control de nodos y encontrar fallos, lo que hace el proceso improbable pero no imposible. C. detalló cómo las transacciones pueden perder confirmaciones cuando diferentes nodos aceptan información contradictoria, y describió cómo los protocolos como Zen y Chiallink utilizan confirmaciones múltiples (entre 50-250) para prevenir modificaciones y doble gasto de transacciones. La sesión se tomó un receso de cinco minutos para permitir que los participantes se rehidraten.

## Desarrollo de Contratos Inteligentes Blockchain
C. explicó las diferencias entre herramientas de desarrollo de contratos inteligentes, destacando que utilizarán Remix por su simplicidad, mientras que para tareas profesionales se prefieren herramientas más complejas como Visual Studio Code. Describió un proyecto en el que Luca y Amani están desarrollando un revalancer que optimiza ganancias entre diferentes protocolos de blockchain mediante un sistema de rebalanceo automatizado. C. también explicó conceptos técnicos sobre la mineração de Bitcoin, incluyendo el proceso de hash y la dificultad ajustable del sistema, así como la economía de los mineros y las fábricas de ASIC.

## Funcionamiento y Estructura de Blockchain
C. Explicó el funcionamiento de la blockchain, comparando el proof of work con el proof of stake, y detalló cómo se generan bloques y se procesan transacciones en redes como Bitcoin y Ethereum. Se discutió la inmutabilidad de la blockchain, los incentivos para los mineros a través de recompensas de coinbase, y la transición de Ethereum de proof of work a proof of stake. C. También explicó la estructura de la máquina virtual de Ethereum y su capacidad para ejecutar códigos Turing completos.

## Ethereum y Máquinas Virtuales
El instructor explicó el funcionamiento de la máquina virtual de Ethereum, detallando cómo las transacciones se procesan a través de nodos y contratos inteligentes. Se discutió el concepto de gas y su importancia en el sistema de Ethereum, incluyendo cómo se calcula y se utiliza para pagar por las operaciones en la blockchain. El instructor también cubrió temas de criptografía, explicando la diferencia entre criptografía asimétrica y simétrica, y cómo funciona la firma digital en la blockchain. Como próximos pasos, se pidió a los participantes que revisen la guía proporcionada y se preparen para la próxima clase donde trabajarán con MetaMask, creando una wallet de desarrollo separada para evitar riesgos.
