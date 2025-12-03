---
title: Node.js
weight: 1
date: 2025-12-02
author: Thiago Riva
tags: ["nodejs", "javascript", "backend", "full-stack", "performance"]
toc: true
comments: true
editURL: "https://github.com/ThiagoRiva/thiagoriva-blog/edit/main/content/blog/Backend/node-js.md"
---

{{< badge "JavaScript" >}}
{{< badge "Backend" >}}
{{< badge "Full-Stack" >}}
{{< badge "Performance" >}}
{{< badge content="Releases" link="https://github.com/nodejs/node/releases" icon="github" >}}

## O que é Node.js?

Node.js é um ambiente de execução JavaScript criado em 2009 por Ryan Dahl que permite que você execute código JavaScript no lado do servidor. Ele é baseado no motor V8 do Google Chrome e é projetado para ser rápido e eficiente. Node.js usa um modelo de I/O não-blocante orientado a eventos que o torna leve e eficiente, perfeito para aplicações de dados intensivos que rodam em dispositivos distribuídos.

## Por que usar Node.js?

Node.js é uma excelente escolha para desenvolvimento backend porque:

- **Performance**: É rápido e eficiente graças ao motor V8
- **JavaScript Full-Stack**: Permite usar JavaScript tanto no frontend quanto no backend
- **NPM**: Possui o maior ecossistema de bibliotecas open source do mundo
- **Escalabilidade**: Modelo event-driven facilita criação de aplicações escaláveis
- **Comunidade**: Grande comunidade ativa e muitos recursos de aprendizado

## Como funciona?

Node.js é baseado no motor V8 do Google Chrome e utiliza uma arquitetura orientada a eventos com operações assíncronas. Isso significa que Node.js pode lidar com milhares de conexões simultâneas sem bloqueio, tornando-o ideal para aplicações real-time como chats, APIs, e microserviços.

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
