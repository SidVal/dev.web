# Ganache

¿Qué es Ganache y por qué lo recomiendan?
- Ganache es una cadena de bloques local (un "blockchain simulator") creada por Truffle Suite para desarrollo y pruebas.  
- Permite crear rápidamente una red Ethereum local con cuentas prefinanciadas para:
  - Desarrollar y probar smart contracts sin gastar ETH real ni pagar gas real.
  - Ejecutar pruebas unitarias y de integración de forma determinista (puedes usar una misma semilla/mnemonic para devolver siempre las mismas cuentas).
  - Hacer instant reset, snapshots/revert para pruebas rápidas.
  - Ver y depurar transacciones y estados con más facilidad (especialmente la GUI).
- Ventajas frente a usar Mainnet/Testnets: velocidad, coste cero, control total (minado instantáneo, bloqueo de tiempo, forkeo de mainnet para pruebas).
- Por eso los cursos lo recomiendan: simplifica el flujo de desarrollo y las pruebas antes de desplegar en testnet/mainnet.

## Ganache en Mac (iOS)

¿Puedo instalarlo en Mac?
Sí. Ganache tiene versiones para macOS: una aplicación con interfaz gráfica (GUI) y una versión de línea de comandos (CLI). También hay alternativas modernas (Hardhat Network, Anvil/Foundry) si te interesa comparar.

Cómo instalar en macOS
1) Requisitos (opcional, para la CLI)
   - Node.js + npm (si vas a usar la versión CLI con npm). Puedes instalar Node con Homebrew:
     - brew install node

2) Ganache (GUI)
   - Descargar la app (dmg) desde la web oficial: https://www.trufflesuite.com/ganache
   - O instalar con Homebrew Cask (si está disponible en tu sistema):
     - brew install --cask ganache
   - Abres la app, te levanta una red local y te muestra RPC URL, cuentas y puerto (fácil para conectar MetaMask).

3) Ganache (CLI) — útil para scripts CI o terminal
   - Usando npm:
     - npm install -g ganache
     - o sin instalar globalmente: npx ganache@latest
   - Ejemplos de uso:
     - ganache                       (arranca la RPC en el puerto por defecto)
     - npx ganache --deterministic   (misma mnemonic cada vez)
     - npx ganache --port 8545       (especificar puerto)
     - npx ganache --fork <RPC_URL>  (forkear mainnet usando un proveedor como Infura/Alchemy)
   - Comprueba en la salida qué puerto y chainId usa (históricamente puertos comunes: 8545 o 7545; chainId suele ser 1337 o configurable).

Conectar MetaMask u otras herramientas
- En MetaMask agrega una red RPC personalizada con la URL que te da Ganache (ej. http://127.0.0.1:7545 o http://127.0.0.1:8545), el chainId que muestre Ganache y listo.
- Ganache proporciona cuentas con claves privadas que puedes importar en MetaMask para firmar transacciones.

Cosas importantes a tener en cuenta
- Ganache es solo para desarrollo/pruebas. No usar en producción.
- Si tienes Mac Apple Silicon (M1/M2), la GUI suele tener builds compatibles; si tu versión es antigua quizá haga falta Rosetta, pero las descargas oficiales ya suelen incluir soporte.
- Alternativas: Hardhat (muy popular en JS/TS), Anvil/Foundry (rápido, en Rust) — todas ofrecen redes locales y features parecidos.
