---
title: Golang
weight: 2
toc: true
editURL: "https://github.com/ThiagoRiva/thiagoriva-blog/edit/main/content/blog/Backend/golang.md"
---

## O que é Golang?

Golang é uma linguagem de programação criada pela Google em 2007 por Robert Griesemer, Ken Thompson e Rob Pike. Ela foi projetada para ser rápida, simples e eficiente, e é usada para criar aplicações web, servidores, e outras aplicações de backend.

## Por que usar Golang?

Golang é uma excelente escolha para desenvolvimento backend porque ele é rápido, eficiente e permite que você execute código Go no lado do servidor.

## Como instalar?

Ubuntu:

```bash
sudo apt update
sudo apt install golang
```

Arch Linux:

```bash
sudo pacman -S golang
```

Windows:

```bash
choco install golang
```

Mac:

```bash
brew install golang
```

## Exemplos

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello World")
}
```

## Padrões (Patterns) mais utilizados em Go

### 1. Error Handling Pattern

Go não usa exceções. O idioma é retornar erros como valores:

```go
func divide(a, b float64) (float64, error) {
    if b == 0 {
        return 0, fmt.Errorf("divisão por zero")
    }
    return a / b, nil
}

// Uso
result, err := divide(10, 0)
if err != nil {
    log.Fatal(err)
}
fmt.Println(result)
```

### 2. Worker Pool Pattern

Padrão para processar tarefas concorrentemente com um número limitado de workers:

```go
func worker(id int, jobs <-chan int, results chan<- int) {
    for j := range jobs {
        fmt.Printf("Worker %d processando job %d\n", id, j)
        time.Sleep(time.Second)
        results <- j * 2
    }
}

func main() {
    jobs := make(chan int, 100)
    results := make(chan int, 100)

    // Inicia 3 workers
    for w := 1; w <= 3; w++ {
        go worker(w, jobs, results)
    }

    // Envia 5 jobs
    for j := 1; j <= 5; j++ {
        jobs <- j
    }
    close(jobs)

    // Coleta resultados
    for a := 1; a <= 5; a++ {
        <-results
    }
}
```

### 3. Singleton Pattern

Garantir que uma struct tenha apenas uma instância:

```go
package main

import "sync"

type singleton struct {
    count int
}

var instance *singleton
var once sync.Once

func GetInstance() *singleton {
    once.Do(func() {
        instance = &singleton{}
    })
    return instance
}
```

### 4. Factory Pattern

Criar objetos sem especificar a classe exata:

```go
type Animal interface {
    Speak() string
}

type Dog struct{}
func (d Dog) Speak() string { return "Woof!" }

type Cat struct{}
func (c Cat) Speak() string { return "Meow!" }

func NewAnimal(animalType string) Animal {
    switch animalType {
    case "dog":
        return Dog{}
    case "cat":
        return Cat{}
    default:
        return nil
    }
}

// Uso
animal := NewAnimal("dog")
fmt.Println(animal.Speak()) // Woof!
```

### 5. Options Pattern

Padrão para configurações flexíveis de structs:

```go
type Server struct {
    host string
    port int
    timeout time.Duration
}

type Option func(*Server)

func WithHost(host string) Option {
    return func(s *Server) {
        s.host = host
    }
}

func WithPort(port int) Option {
    return func(s *Server) {
        s.port = port
    }
}

func NewServer(opts ...Option) *Server {
    s := &Server{
        host: "localhost",
        port: 8080,
        timeout: 30 * time.Second,
    }

    for _, opt := range opts {
        opt(s)
    }

    return s
}

// Uso
server := NewServer(
    WithHost("0.0.0.0"),
    WithPort(3000),
)
```

### 6. Context Pattern

Para cancelamento e timeout de operações:

```go
func longRunningTask(ctx context.Context) error {
    for {
        select {
        case <-ctx.Done():
            return ctx.Err() // Cancelado ou timeout
        default:
            // Faz o trabalho
            time.Sleep(100 * time.Millisecond)
        }
    }
}

// Uso
ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
defer cancel()

if err := longRunningTask(ctx); err != nil {
    log.Println("Erro:", err)
}
```

### 7. Interface Segregation

Interfaces pequenas e específicas:

```go
// Ruim - interface muito grande
type Animal interface {
    Eat()
    Sleep()
    Fly()
    Swim()
}

// Bom - interfaces segregadas
type Eater interface {
    Eat()
}

type Sleeper interface {
    Sleep()
}

type Flyer interface {
    Fly()
}

type Bird struct{}
func (b Bird) Eat() {}
func (b Bird) Sleep() {}
func (b Bird) Fly() {}
```

### 8. Defer Pattern

Garantir limpeza de recursos:

```go
func readFile(filename string) error {
    file, err := os.Open(filename)
    if err != nil {
        return err
    }
    defer file.Close() // Sempre fecha o arquivo

    // Processa o arquivo
    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
        fmt.Println(scanner.Text())
    }

    return scanner.Err()
}
```
