---
title: Git Cheatsheet
weight: 2
---

Referência rápida dos comandos Git mais utilizados.

## Configuração Inicial

| Comando | Descrição |
|---------|-----------|
| `git config --global user.name "Nome"` | Define nome |
| `git config --global user.email "email"` | Define email |
| `git config --list` | Lista configurações |

## Básico

| Comando | Descrição |
|---------|-----------|
| `git init` | Inicializa repositório |
| `git clone url` | Clona repositório |
| `git status` | Status do repositório |
| `git add arquivo` | Adiciona ao staging |
| `git add .` | Adiciona tudo |
| `git commit -m "msg"` | Cria commit |
| `git commit -am "msg"` | Add + commit (tracked) |

## Branches

| Comando | Descrição |
|---------|-----------|
| `git branch` | Lista branches |
| `git branch nome` | Cria branch |
| `git checkout nome` | Muda de branch |
| `git checkout -b nome` | Cria e muda |
| `git switch nome` | Muda de branch (novo) |
| `git switch -c nome` | Cria e muda (novo) |
| `git branch -d nome` | Deleta branch |
| `git branch -D nome` | Força deleção |

## Merge e Rebase

| Comando | Descrição |
|---------|-----------|
| `git merge branch` | Merge branch atual |
| `git rebase branch` | Rebase na branch |
| `git rebase -i HEAD~3` | Rebase interativo |
| `git merge --abort` | Cancela merge |
| `git rebase --abort` | Cancela rebase |

## Remoto

| Comando | Descrição |
|---------|-----------|
| `git remote -v` | Lista remotos |
| `git remote add origin url` | Adiciona remoto |
| `git push origin branch` | Envia para remoto |
| `git push -u origin branch` | Push + tracking |
| `git pull` | Atualiza do remoto |
| `git fetch` | Baixa sem merge |

## Histórico

| Comando | Descrição |
|---------|-----------|
| `git log` | Histórico de commits |
| `git log --oneline` | Histórico resumido |
| `git log --graph` | Histórico com gráfico |
| `git show commit` | Detalhes do commit |
| `git diff` | Diferenças |
| `git diff --staged` | Diff do staging |

## Desfazer

| Comando | Descrição |
|---------|-----------|
| `git restore arquivo` | Descarta mudanças |
| `git restore --staged arquivo` | Remove do staging |
| `git reset HEAD~1` | Desfaz último commit (mantém) |
| `git reset --hard HEAD~1` | Desfaz commit (perde) |
| `git revert commit` | Reverte commit (novo commit) |

## Stash

| Comando | Descrição |
|---------|-----------|
| `git stash` | Guarda mudanças |
| `git stash list` | Lista stashes |
| `git stash pop` | Aplica e remove |
| `git stash apply` | Aplica sem remover |
| `git stash drop` | Remove stash |

## Tags

| Comando | Descrição |
|---------|-----------|
| `git tag` | Lista tags |
| `git tag v1.0` | Cria tag leve |
| `git tag -a v1.0 -m "msg"` | Tag anotada |
| `git push origin --tags` | Push de tags |

## Úteis

| Comando | Descrição |
|---------|-----------|
| `git cherry-pick commit` | Aplica commit específico |
| `git blame arquivo` | Quem alterou cada linha |
| `git bisect` | Busca binária de bugs |
| `git clean -fd` | Remove untracked |

