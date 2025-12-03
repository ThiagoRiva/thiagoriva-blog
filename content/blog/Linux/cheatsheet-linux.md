---
title: Principais Comandos do Linux
type: cheatsheet
weight: 2
date: 2025-12-03
author: Thiago Riva
tags: ["linux", "cheatsheet", "terminal", "comandos"]
toc: true
comments: true
width: normal
editURL: "https://github.com/ThiagoRiva/thiagoriva-blog/edit/main/content/blog/Linux/cheatsheet-linux.md"
---

{{<badge "Linux" >}}
{{<badge "Cheatsheet" >}}
{{<badge "Terminal" >}}
{{<badge "Comandos" >}}
<br>
<br>
Este CheatSheet organiza os comandos Linux mais utilizados por categoria, facilitando a consulta rápida no dia a dia.

## Navegação e Arquivos

> Use quando precisar organizar, criar, mover ou visualizar arquivos e pastas. Comandos essenciais para qualquer tarefa no terminal.

### Navegação de Diretórios

```bash
pwd                 # Mostra diretório atual
ls                  # Lista arquivos
ls -la              # Lista com detalhes e ocultos
cd /caminho         # Muda de diretório
cd ..               # Volta um nível
cd ~                # Vai para home
```

### Manipulação de Arquivos

```bash
touch arquivo.txt   # Cria arquivo vazio
cp origem destino   # Copia arquivo
cp -r dir1 dir2     # Copia diretório
mv origem destino   # Move/renomeia
rm arquivo          # Remove arquivo
rm -rf diretorio    # Remove diretório (cuidado!)
mkdir pasta         # Cria diretório
rmdir pasta         # Remove diretório vazio
```

### Visualização de Arquivos

```bash
cat arquivo         # Mostra conteúdo
less arquivo        # Visualiza paginado
head arquivo        # Primeiras 10 linhas
head -n 20 arquivo  # Primeiras 20 linhas
tail arquivo        # Últimas 10 linhas
tail -f arquivo     # Monitora arquivo (logs)
```

## Busca e Filtros

> Para encontrar arquivos específicos no sistema ou buscar texto dentro de arquivos. Útil em projetos grandes ou quando não sabe onde está algo.

### Find - Buscar Arquivos

```bash
find . -name "*.txt"              # Busca por nome
find /var -size +100M             # Arquivos > 100MB
find . -type f -mtime -7          # Modificados nos últimos 7 dias
find . -type d                    # Apenas diretórios
```

### Grep - Buscar em Conteúdo

```bash
grep "texto" arquivo              # Busca texto em arquivo
grep -r "texto" /caminho          # Busca recursiva
grep -i "texto" arquivo           # Case insensitive
grep -n "texto" arquivo           # Mostra número da linha
grep -v "texto" arquivo           # Linhas que NÃO contêm texto
```

## Usuários e Permissões

> Necessário ao configurar servidores, gerenciar acessos ou ajustar permissões de arquivos. Crucial para segurança e administração.

### Gerenciamento de Usuários

```bash
whoami              # Usuário atual
id                  # Info do usuário
sudo comando        # Executa como root
su usuario          # Muda para outro usuário
passwd              # Altera senha
useradd nome        # Cria usuário
userdel nome        # Remove usuário
```

### Permissões

```bash
chmod 755 arquivo   # rwxr-xr-x
chmod +x script.sh  # Adiciona permissão de execução
chmod -R 644 dir    # Recursivo
chown user arquivo  # Muda dono
chown user:group    # Muda dono e grupo
```

## Processos e Sistema

> Monitore recursos (CPU, RAM, disco), identifique processos travados e obtenha informações do sistema. Essencial para troubleshooting.

### Processos

```bash
ps aux              # Lista todos processos
ps aux | grep nome  # Busca processo
top                 # Monitor de processos
htop                # Monitor interativo (melhor)
kill PID            # Mata processo
kill -9 PID         # Força término
killall nome        # Mata por nome
jobs                # Lista jobs em background
bg                  # Coloca job em background
fg                  # Traz job para foreground
```

### Sistema

```bash
uname -a            # Info do sistema
df -h               # Espaço em disco
du -sh *            # Tamanho de arquivos/pastas
free -h             # Memória RAM
uptime              # Tempo ligado
date                # Data/hora
hostname            # Nome do host
```

## Rede

> Configure conexões, teste conectividade, faça downloads ou conecte-se remotamente via SSH. Indispensável para DevOps e administração de servidores.

### Conectividade

```bash
ping google.com     # Testa conexão
curl url            # Faz requisição HTTP
wget url            # Download de arquivo
ssh user@host       # Conecta via SSH
scp arquivo user@host:/path  # Copia via SSH
```

### Informações de Rede

```bash
ifconfig            # Info de rede (deprecated)
ip addr             # Info de rede (novo)
ip route            # Rotas
netstat -tulpn      # Portas abertas
ss -tulpn           # Portas abertas (novo)
nslookup domain     # DNS lookup
```

## Pacotes

> Instale, atualize ou remova software. Cada distribuição tem seu gerenciador (apt no Ubuntu, pacman no Arch).

### (Ubuntu/Debian)

```bash
sudo apt update                 # Atualiza lista
sudo apt upgrade                # Atualiza pacotes
sudo apt install pacote         # Instala
sudo apt remove pacote          # Remove
sudo apt autoremove             # Remove não usados
sudo apt search nome            # Busca pacote
dpkg -l                         # Lista instalados
```

### (Arch Linux)

```bash
sudo pacman -Syu                # Atualiza sistema completo
sudo pacman -S pacote           # Instala pacote
sudo pacman -R pacote           # Remove pacote
sudo pacman -Rs pacote          # Remove com dependências
sudo pacman -Ss nome            # Busca pacote
sudo pacman -Q                  # Lista instalados
sudo pacman -Qe                 # Lista explicitamente instalados
sudo pacman -Sc                 # Limpa cache
yay -S pacote                   # Instala do AUR (com yay)
```

## Compressão

> Compacte/descompacte arquivos para economizar espaço ou transferir múltiplos arquivos. Comum em backups e deploys.

```bash
tar -czf arquivo.tar.gz pasta   # Compacta
tar -xzf arquivo.tar.gz         # Descompacta
zip -r arquivo.zip pasta        # Cria zip
unzip arquivo.zip               # Extrai zip
gzip arquivo                    # Comprime com gzip
gunzip arquivo.gz               # Descomprime gzip
```

## Edição de Texto

> Edite arquivos de configuração diretamente no terminal. Nano para iniciantes, Vim para usuários avançados.

```bash
nano arquivo        # Editor simples
vim arquivo         # Editor avançado
vi arquivo          # Editor clássico
echo "texto" > arquivo        # Sobrescreve
echo "texto" >> arquivo       # Adiciona ao final
```

## Links e Pipes

> Combine comandos de forma poderosa com pipes (`|`) ou crie atalhos com links simbólicos. Aumenta produtividade.

### Links

```bash
ln -s origem link   # Link simbólico
ln origem link      # Hard link
```

### Pipes e Redirecionamento

```bash
comando1 | comando2         # Pipe output
comando > arquivo           # Redireciona output
comando >> arquivo          # Append output
comando 2> erros.log        # Redireciona erros
comando &> saida.log        # Output + erros
```

## SSH e Chaves

> Acesse servidores remotos com segurança. Essencial para desenvolvimento web, cloud e administração remota.

```bash
ssh-keygen                  # Gera par de chaves
ssh-copy-id user@host       # Copia chave pública
ssh -i chave.pem user@host  # Conecta com chave específica
```

## Dicas Úteis

> Atalhos e truques para trabalhar mais rápido no terminal e evitar repetir comandos.

### Atalhos de Teclado

- `Ctrl + C` - Cancela comando
- `Ctrl + Z` - Suspende processo
- `Ctrl + D` - EOF / Logout
- `Ctrl + L` - Limpa tela (ou `clear`)
- `Ctrl + R` - Busca no histórico
- `Tab` - Auto-completar

### Histórico

```bash
history             # Lista comandos
!numero             # Executa comando do histórico
!!                  # Repete último comando
!$                  # Último argumento do comando anterior
```

### Aliases Úteis

```bash
alias ll='ls -la'
alias ..='cd ..'
alias update='sudo apt update && sudo apt upgrade'
```
