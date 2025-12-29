# Clase 2

- Fecha: 27/12/2025

## Resumen

Esta fue una sesión de clase sobre blockchain y criptografía donde C. condujo una revisión detallada de conceptos técnicos. La clase comenzó con un repaso de la estructura de blockchain, explicando cómo se forma una cadena de bloques criptográficamente a través del hash anterior en cada bloque. Se discutieron en detalle las máquinas virtuales de Ethereum, incluyendo la arquitectura EVM, la pila de 256 bits, y conceptos como memoria RAM, storage persistente y logs usando bloom filters. C. explicó la importancia del gas y cómo se calcula, incluyendo el gas base, priority fee y el impacto en el costo de transacciones. La clase también cubrió en profundidad la criptografía asimétrica, cómo se generan claves privadas y públicas, y el proceso de firma utilizada en blockchain. Se instaló Metamask como herramienta práctica para interactuar con la red Ethereum, creando cuentas y configurando la seguridad. Luciano realizó consultas sobre compatibilidad entre diferentes blockchains EVM y recomendaciones para hardware de desarrollo, a lo que C. respondió con sugerencias específicas sobre configuraciones de computadora.

## Tareas

- Luciano: Revisar si la grabación de la primera sesión está disponible y, en caso de no estar, consultar a Camila sobre su publicación.
- Todos los participantes: Repasar los conceptos de EVM, gas, claves criptográficas y firmas, y profundizar en los recursos sugeridos (por ejemplo, videos de Anders Brownworth) para reforzar los conocimientos sobre blockchain y criptografía.
- Todos los participantes: Explorar y documentarse sobre los diferentes tipos de sidechains/layer 2 (optimistic rollups, ZK proofs, etc.) y sus ventajas/desventajas, como referencia para optimizar costos de transacción en el futuro.
- Todos los participantes: Probar la generación y verificación de claves privadas/públicas y firmas utilizando herramientas online, como las mostradas en la sesión, para comprender el proceso de firma y validación en Ethereum.
- Todos los participantes: Revisar el funcionamiento de gas price y su impacto en el costo y prioridad de transacciones, incluyendo la observación de Etherscan o similares para entender el mercado actual de gas.
- Todos los participantes: Instalar Metamask en su navegador y crear una nueva cuenta, asegurándose de guardar las 12 palabras mnemotécnicas en un lugar seguro y no digital.
- Todos los participantes: Generar una cuenta en Alkemy y agregar nodos personalizados (RPC) en Metamask para las redes deseadas, utilizando la información de Chainlist o fuentes oficiales.
- Todos los participantes: Realizar pruebas en redes locales (como Ganache) y posteriormente en testnets (por ejemplo, Sepolia) antes de desplegar contratos o realizar transacciones en Mainnet, para evitar errores costosos.
- Luciano: Evaluar y adquirir una nueva computadora/notebook con al menos 16-32 GB de RAM y SSD, preferentemente con procesador de alta gama, para desarrollo eficiente en blockchain.
- Todos los participantes: Mantener actualizadas las extensiones de billeteras (como Metamask) y hardware wallets para prevenir vulnerabilidades de seguridad.
- Todos los participantes: No compartir ni guardar claves privadas o frases mnemotécnicas en dispositivos o servicios en línea, y evitar la ingeniería social.
- Todos los participantes: En caso de agregar redes personalizadas en Metamask, verificar que el Chain ID y los datos del RPC sean correctos para evitar el envío de fondos a redes incorrectas.
- Todos los participantes: Utilizar herramientas de estimación de gas y programar transacciones en momentos de baja congestión para optimizar costos, especialmente en despliegues de contratos o transacciones masivas.
- Todos los participantes: Realizar pruebas exhaustivas de contratos inteligentes y transacciones en testnets antes de pasar a Mainnet, y considerar auditorías de seguridad para proyectos críticos.
- C.: Enviar 0.1 ether a la primera persona del grupo para iniciar la cadena de transferencias de ether en la testnet Sepolia.
- Luciano: Enviar 0.075 ether al siguiente participante en la cadena de transferencias.
- Diego y otros participantes: Enviar las cantidades acordadas (0.05, 0.025, etc.) al siguiente participante, y finalmente devolver una pequeña cantidad a C., formando una millonada de práctica.
- Todos los participantes: Agregar sus direcciones de MetaMask al grupo para facilitar el envío y recepción de ether en la testnet.
- Todos los participantes: Probar la adición de la red Sepolia (o testnet relevante) en MetaMask siguiendo las instrucciones de C., incluyendo habilitar "mostrar redes de prueba" si es necesario.
- Todos los participantes: Comenzar a programar en Remix IDE siguiendo las instrucciones de C., creando su primer contrato "Hello World" y experimentando con variables, getters y setters.
- C.: Compartir en el chat el link o información sobre faucets funcionales para obtener ether de prueba en Sepolia.
- Luciano y otros interesados: Probar faucets recomendados para obtener fondos de prueba adicionales si es necesario.
- C.: Compartir videos o recursos adicionales sobre cuentas delegadas (smart accounts) y delegación de código en su canal de Youtube, si los participantes lo solicitan.
- Todos los participantes: Realizar pruebas de deploy y llamadas a funciones (lectura/escritura) en Remix IDE, comparando el uso de memory y calldata para optimizar el uso de gas.

## Repaso Blockchain y Criptografía Técnica
C realizó un repaso de los conceptos de blockchain y criptografía previamente discutidos, explicando cómo se forma la cadena de bloques y la estructura de la máquina virtual de Ethereum. Explicó detalles técnicos sobre la pila de 256 bits, la memoria y el almacenamiento persistente, así como el uso de Bloom Filters para optimizar búsquedas en grandes bases de datos. Freddy confirmó que aunque es nuevo en criptografía, los conceptos estaban claros, y C mencionó que no se profundizaría mucho en criptografía debido a limitaciones de tiempo.

## Optimización Storage y Criptografía
C. explicó las diferencias entre almacenamiento en Storage y otras opciones, señalando que aunque es más barato escribir y persistir datos, no se puede leer después. Discutió la optimización del uso de gas en transacciones, incluyendo la posibilidad de utilizar Asamblea In-Line para reducir costos, especialmente en escenarios con un alto volumen de transacciones diarias. C. también explicó conceptos de criptografía, comparando la criptografía simétrica y asimétrica, y cómo se utilizan las claves privadas y públicas para encriptar y firmar datos, incluyendo ejemplos de WhatsApp y SSH.

## Valores de Operación en Blockchain
C explicó que los valores de operación se repiten en todas las blockchains basadas en Ethereum como Polygon, Binance Smart Chain y Avalanche, ya que son compatibles y funcionan de manera similar. C detalló que el gas price varía según la demanda del mercado y la disponibilidad de nodos, siendo el usuario quien define este precio al enviar transacciones. Ezequiel consultó sobre el impacto del gas price en el tiempo de ejecución y la prioridad de las transacciones, a lo que C respondió que un gas price más bajo puede resultar en que la transacción se ejecute después de muchas otras con precios más altos, quedando en una lista ordenada en la mempool.

## Conceptos de Ethereum y Blockchain
C. explicó el concepto de gas price en blockchain y cómo el costo de transacciones en Ethereum varía según el mercado y el uso. Compartió su experiencia como especialista en Ethereum y mencionó que aunque ha trabajado con otras blockchains como Solana y Tron, su enfoque principal está en Ethereum. C. también explicó el funcionamiento de las claves privadas y públicas en Ethereum, incluyendo cómo se generan y se utilizan para firmar transacciones de manera segura.

## Ethereum y Seguridad de Billeteras
C. explicó la criptografía asimétrica y el funcionamiento de las billeteras en Ethereum, destacando la importancia de las claves privadas y públicas para firmar transacciones. Se discutieron diferentes tipos de billeteras (hot wallet, cold wallet, paper wallet, hardware wallet y web wallet) y sus niveles de seguridad, así como la importancia de nunca compartir la clave privada. C. también explicó los conceptos de redes Ethereum (Mainnet, Testnet y redes locales), la instalación de MetaMask, la creación de cuentas y la importancia de la seguridad en la gestión de claves, incluyendo el uso de mnemónicos y claves extendidas (XPUB).

## Conceptos Fundamentales del Gas Ethereum
C. explicó los conceptos fundamentales del gas en Ethereum, incluyendo cómo se calcula el precio del gas usando valores base y de prioridad, y las implicaciones de exceder los límites de gas. Se discutieron las propiedades de las transacciones, incluyendo el hash, destino, valor y tiempo de generación, así como la importancia de las confirmaciones para validar transacciones. C. también cubrió los diferentes tipos de nodos Ethereum, desde Go Ethereum hasta Open Ethereum, y explicó el uso de testnets como Ganache y Hardhat para pruebas y simulaciones. La sesión concluyó con planes de instalar Metamask después del descanso.

## Recomendaciones de Equipos y Metamask
Luciano consultó sobre la recomendación de equipos para desarrollo, específicamente sobre notebooks y procesadores, considerando su presupuesto y necesidades para programar. C. sugirió un mínimo de 16 GB de RAM y recomendó una Mac con procesador M1, aunque mencionó que los procesadores de alta gama también se han vuelto costosos. Posteriormente, C. guio a Luciano y otros participantes en la instalación de Metamask, explicando cómo crear una nueva cuenta, la importancia de guardar las palabras de recuperación en un lugar seguro, y cómo utilizar la billetera para diferentes blockchains.

## Configuración de Redes en Metamask
C. explicó el proceso de configuración de redes en Metamask, incluyendo cómo agregar nodos y configurar cadenas como Ethereum y Zenium. Demostró el proceso de conexión a redes públicas y privadas, y mostró cómo realizar transacciones entre cuentas utilizando diferentes configuraciones de redes. Luciano preguntó sobre la seguridad de agregar redes manualmente, y C. aclaró que no hay mayor riesgo, aunque recomendó usar nodos privados para mayor seguridad si es necesario.

## Configuración Entorno Desarrollo Blockchain
El equipo discutió la configuración de redes y direcciones de wallet para un proyecto de blockchain, donde C explicó cómo configurar las direcciones de Ethereum y el uso de faucets para obtener fondos de prueba. Luciano y C trabajaron en la configuración del entorno de desarrollo Remix, donde C demostró cómo crear un nuevo workspace y explicó las configuraciones de Solidity, incluyendo las diferentes versiones de EVM (Oslo, Prague, Cancun) y su impacto en el compilación del código. La sesión se centró en establecer el entorno de desarrollo antes de proceder con el desarrollo de smart contracts, con C proporcionando orientación técnica sobre las configuraciones necesarias.

## Conceptos de Contratos Inteligentes Ethereum
C. explicó conceptos básicos sobre contratos inteligentes en Ethereum, incluyendo la delegación de código y las ventajas de usar cuentas con clave privada versus cuentas de contrato. Luego demostró cómo usar Remix para crear un contrato "Hello World" en Solidity, mostrando los pasos para configurar el compilador, escribir el código del contrato con variables y funciones getter, y resolver errores comunes como el tipo de datos memory versus calldata.

## Eficacia de calldata en Solidity
C. explicó la diferencia entre utilizar memory y calldata en Solidity, demostrando que calldata es más eficiente en términos de gas cuando se trata de variables que no se modifican, ahorrando aproximadamente 463 unidades de gas en el ejemplo. También mostró el proceso completo de despliegue de contratos en Remix, desde la compilación hasta la interacción con la blockchain real usando MetaMask, y cómo verificar contratos en Etherscan. La sesión concluyó con C. compartiendo la dirección del contrato desplegado para que los participantes pudieran interactuar con él.
