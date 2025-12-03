---
title: Linux Cheatsheet
weight: 1
---

Referência rápida dos comandos Linux mais utilizados.

## Navegação e Arquivos

| Comando | Descrição |
|---------|-----------|
| `pwd` | Mostra diretório atual |
| `ls -la` | Lista com detalhes e ocultos |
| `cd /caminho` | Muda de diretório |
| `cd ..` | Volta um nível |
| `cd ~` | Vai para home |

## Manipulação de Arquivos

| Comando | Descrição |
|---------|-----------|
| `touch arquivo` | Cria arquivo vazio |
| `cp origem destino` | Copia arquivo |
| `cp -r dir1 dir2` | Copia diretório |
| `mv origem destino` | Move/renomeia |
| `rm arquivo` | Remove arquivo |
| `rm -rf dir` | Remove diretório (cuidado!) |
| `mkdir pasta` | Cria diretório |

## Visualização

| Comando | Descrição |
|---------|-----------|
| `cat arquivo` | Mostra conteúdo |
| `less arquivo` | Visualiza paginado |
| `head -n 20 arquivo` | Primeiras 20 linhas |
| `tail -f arquivo` | Monitora arquivo (logs) |

## Busca

| Comando | Descrição |
|---------|-----------|
| `find . -name "*.txt"` | Busca por nome |
| `find /var -size +100M` | Arquivos > 100MB |
| `grep "texto" arquivo` | Busca texto |
| `grep -r "texto" /path` | Busca recursiva |
| `grep -i "texto" arquivo` | Case insensitive |

## Permissões

| Comando | Descrição |
|---------|-----------|
| `chmod 755 arquivo` | rwxr-xr-x |
| `chmod +x script.sh` | Adiciona execução |
| `chown user arquivo` | Muda dono |
| `chown user:group arquivo` | Muda dono e grupo |

## Processos

| Comando | Descrição |
|---------|-----------|
| `ps aux` | Lista processos |
| `top` / `htop` | Monitor de processos |
| `kill PID` | Mata processo |
| `kill -9 PID` | Força término |
| `killall nome` | Mata por nome |

## Sistema

| Comando | Descrição |
|---------|-----------|
| `df -h` | Espaço em disco |
| `du -sh *` | Tamanho de arquivos |
| `free -h` | Memória RAM |
| `uname -a` | Info do sistema |

## Rede

| Comando | Descrição |
|---------|-----------|
| `ping host` | Testa conexão |
| `curl url` | Requisição HTTP |
| `wget url` | Download |
| `ssh user@host` | Conecta SSH |
| `ip addr` | Info de rede |
| `ss -tulpn` | Portas abertas |

## Pacotes (Debian/Ubuntu)

| Comando | Descrição |
|---------|-----------|
| `apt update` | Atualiza lista |
| `apt upgrade` | Atualiza pacotes |
| `apt install pacote` | Instala |
| `apt remove pacote` | Remove |

## Pacotes (Arch)

| Comando | Descrição |
|---------|-----------|
| `pacman -Syu` | Atualiza sistema |
| `pacman -S pacote` | Instala |
| `pacman -R pacote` | Remove |
| `pacman -Ss nome` | Busca |

## Compressão

| Comando | Descrição |
|---------|-----------|
| `tar -czf arquivo.tar.gz pasta` | Compacta |
| `tar -xzf arquivo.tar.gz` | Descompacta |
| `zip -r arquivo.zip pasta` | Cria zip |
| `unzip arquivo.zip` | Extrai zip |

## Atalhos de Teclado

| Atalho | Ação |
|--------|------|
| `Ctrl + C` | Cancela comando |
| `Ctrl + Z` | Suspende processo |
| `Ctrl + D` | EOF / Logout |
| `Ctrl + L` | Limpa tela |
| `Ctrl + R` | Busca histórico |
| `Tab` | Auto-completar |

## Histórico

| Comando | Descrição |
|---------|-----------|
| `history` | Lista comandos |
| `!numero` | Executa do histórico |
| `!!` | Repete último comando |
| `!$` | Último argumento anterior |

