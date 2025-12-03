# 📚 ThiagoRiva - Base de Conhecimento

Meu repositório pessoal de estudos sobre desenvolvimento de software.

🌐 **Site:** [blog.thiagoriva.com](https://blog.thiagoriva.com)

## 📁 Estrutura

```
content/
├── docs/                    # Base de Conhecimento
│   ├── linguagens/          # Linguagens de programação
│   │   ├── golang/          # Go: fundamentos e patterns
│   │   └── nodejs/          # Node.js: fundamentos
│   ├── linux/               # Linux e terminal
│   │   ├── comandos.md      # Comandos essenciais
│   │   └── shell-scripts.md # Automação com Bash
│   └── cheatsheets/         # Referência rápida
│       ├── linux.md         # Comandos Linux
│       └── git.md           # Comandos Git
└── blog/                    # Posts e reflexões
```

## 🛠️ Tecnologias

- **[Hugo](https://gohugo.io/)** - Gerador de sites estáticos
- **[Hextra](https://github.com/imfing/hextra)** - Tema de documentação
- **[Netlify](https://www.netlify.com/)** - Hospedagem

## 🚀 Desenvolvimento Local

### Pré-requisitos

- [Hugo Extended](https://gohugo.io/installation/) (v0.112.0+)
- [Go](https://golang.org/doc/install) (v1.21+)
- [Git](https://git-scm.com)

### Executar

```bash
# Clonar repositório
git clone https://github.com/ThiagoRiva/thiagoriva-blog.git
cd thiagoriva-blog

# Instalar dependências do tema
hugo mod tidy

# Iniciar servidor de desenvolvimento
hugo server
```

Acesse `http://localhost:1313`

## 📝 Adicionar Conteúdo

### Novo documento de estudo

```bash
hugo new docs/linguagens/python/fundamentos.md
```

### Novo post no blog

```bash
hugo new blog/meu-post.md
```

## 🔄 Atualizar Tema

```bash
hugo mod get -u
hugo mod tidy
```

## 📦 Build para Produção

```bash
hugo --minify
```

Os arquivos serão gerados em `public/`.

## 📖 Tópicos de Estudo

### Linguagens
- [x] Golang - Fundamentos e Patterns
- [x] Node.js - Fundamentos
- [ ] Python
- [ ] TypeScript

### DevOps
- [ ] Docker
- [ ] Kubernetes
- [ ] CI/CD

### Banco de Dados
- [ ] PostgreSQL
- [ ] Redis
- [ ] MongoDB

---

Feito com ☕ por [Thiago Riva](https://github.com/ThiagoRiva)
