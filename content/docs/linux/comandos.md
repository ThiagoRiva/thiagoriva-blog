---
title: Comandos Essenciais
weight: 1
---

Comandos Linux mais utilizados no dia a dia.

## Navegação de Diretórios

```bash
pwd                 # Mostra diretório atual
ls                  # Lista arquivos
ls -la              # Lista com detalhes e ocultos
cd /caminho         # Muda de diretório
cd ..               # Volta um nível
cd ~                # Vai para home
```

## Manipulação de Arquivos

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

## Visualização de Arquivos

```bash
cat arquivo         # Mostra conteúdo
less arquivo        # Visualiza paginado
head arquivo        # Primeiras 10 linhas
head -n 20 arquivo  # Primeiras 20 linhas
tail arquivo        # Últimas 10 linhas
tail -f arquivo     # Monitora arquivo (logs)
```

## Busca com Find

```bash
find . -name "*.txt"              # Busca por nome
find /var -size +100M             # Arquivos > 100MB
find . -type f -mtime -7          # Modificados nos últimos 7 dias
find . -type d                    # Apenas diretórios
```

## Busca com Grep

```bash
grep "texto" arquivo              # Busca texto em arquivo
grep -r "texto" /caminho          # Busca recursiva
grep -i "texto" arquivo           # Case insensitive
grep -n "texto" arquivo           # Mostra número da linha
grep -v "texto" arquivo           # Linhas que NÃO contêm texto
```

## Usuários e Permissões

```bash
whoami              # Usuário atual
id                  # Info do usuário
sudo comando        # Executa como root
su usuario          # Muda para outro usuário
passwd              # Altera senha
chmod 755 arquivo   # rwxr-xr-x
chmod +x script.sh  # Adiciona permissão de execução
chown user arquivo  # Muda dono
```

## Processos

```bash
ps aux              # Lista todos processos
ps aux | grep nome  # Busca processo
top                 # Monitor de processos
htop                # Monitor interativo (melhor)
kill PID            # Mata processo
kill -9 PID         # Força término
killall nome        # Mata por nome
```

## Sistema

```bash
uname -a            # Info do sistema
df -h               # Espaço em disco
du -sh *            # Tamanho de arquivos/pastas
free -h             # Memória RAM
uptime              # Tempo ligado
```

## Rede

```bash
ping google.com     # Testa conexão
curl url            # Faz requisição HTTP
wget url            # Download de arquivo
ssh user@host       # Conecta via SSH
ip addr             # Info de rede
ss -tulpn           # Portas abertas
```

