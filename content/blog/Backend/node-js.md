---
title: Node.js
weight: 2
toc: true
editURL: "https://github.com/ThiagoRiva/blog.thiagoriva.com/edit/main/content/blog/Backend/node-js.md"
---

## O que é Node.js?

Node.js é um ambiente de execução JavaScript que permite que você execute código JavaScript no lado do servidor. Ele é baseado no motor V8 do Google Chrome e é projetado para ser rápido e eficiente.

## Por que usar Node.js?

Node.js é uma excelente escolha para desenvolvimento backend porque ele é rápido, eficiente e permite que você execute código JavaScript no lado do servidor. Ele também é uma excelente escolha para desenvolvimento frontend porque ele é rápido, eficiente e permite que você execute código JavaScript no lado do cliente.

## Como funciona?

Node.js é baseado no motor V8 do Google Chrome e é projetado para ser rápido e eficiente.

## Como instalar?

#### Ubuntu:

```bash
sudo apt update
sudo apt install nodejs
sudo apt install npm
```

#### Arch Linux:

```bash
sudo pacman -S nodejs npm
```

#### Windows:

```bash

```

#### Mac:

-alternativa 1:

```bash
brew install node
```

-alternativa 2:

```bash

```

## Exemplos

```javascript
console.log("Hello World");
```

```javascript
const http = require("http");

const hostname = "127.0.0.1";
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello World\n");
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
```
