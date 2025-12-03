---
title: Shell Scripts
weight: 2
---

Fundamentos de automação com Bash.

## Estrutura Básica

```bash
#!/bin/bash
# Meu primeiro script

echo "Hello World"
```

## Variáveis

```bash
#!/bin/bash

nome="Thiago"
idade=25

echo "Nome: $nome"
echo "Idade: $idade"
```

## Condicionais

```bash
#!/bin/bash

if [ $1 -gt 10 ]; then
    echo "Maior que 10"
elif [ $1 -eq 10 ]; then
    echo "Igual a 10"
else
    echo "Menor que 10"
fi
```

## Loops

### For

```bash
#!/bin/bash

for i in 1 2 3 4 5; do
    echo "Número: $i"
done

# Iterando em arquivos
for arquivo in *.txt; do
    echo "Arquivo: $arquivo"
done
```

### While

```bash
#!/bin/bash

contador=0
while [ $contador -lt 5 ]; do
    echo "Contador: $contador"
    ((contador++))
done
```

## Funções

```bash
#!/bin/bash

saudacao() {
    echo "Olá, $1!"
}

saudacao "Mundo"
saudacao "Thiago"
```

## Argumentos

```bash
#!/bin/bash

echo "Script: $0"
echo "Primeiro argumento: $1"
echo "Segundo argumento: $2"
echo "Todos os argumentos: $@"
echo "Número de argumentos: $#"
```

## Leitura de Input

```bash
#!/bin/bash

echo "Digite seu nome:"
read nome
echo "Olá, $nome!"
```

## Redirecionamento

```bash
# Salvar output em arquivo
ls -la > lista.txt

# Append em arquivo
echo "nova linha" >> arquivo.txt

# Redirecionar erros
comando 2> erros.log

# Output e erros
comando &> saida.log
```

