# Automação Linux DevOps - 

Este repositório contém scripts simples de automação para tarefas comuns em sistemas Linux.  
O objetivo é servir como **exemplo de automação DevOps nível júnior**, podendo ser usado em laboratórios, testes e como portfólio.

---

## 📂 Estrutura do repositório

**scripts/**  
├── **backup.sh** – Script para criar backup de arquivos/pastas  
├── **system.info.sh** – Script para exibir informações do sistema  
└── **update.system.sh** – Script para atualizar o sistema Linux



## ⚡ Requisitos

- Sistema Linux (Debian, Ubuntu ou derivados)
- Permissões de sudo para rodar `update.system.sh` e, se necessário, `backup.sh`
## 🐳 Executando em um ambiente Docker (recomendado)

Para testar os scripts sem afetar sua máquina física, você pode usar um container Debian:

```bash
docker run -it --rm debian:latest bash
```
Dentro do container, atualize os repositórios e instale ferramentas básicas:

```bash
apt update && apt install -y sudo git curl
```
---

## ⚡ Como executar os scripts

### 1️⃣ Clone o repositório

```bash
git clone https://github.com/Wesbonf/automacao-linux-devops.git
cd automacao-linux-devops
```

### 2️⃣ Entre na pasta scripts e dê permissão de execução

```bash
cd scripts
chmod +x *.sh
```

### 3️⃣ Execute os scripts individualmente

#### 📊 Exibir informações do sistema

```bash
./system.info.sh
```

**O que faz:** Exibe informações básicas do sistema (hostname, kernel, memória, disco, IP).

---

#### 🔄 Atualizar sistema e instalar ferramentas

```bash
./update.system.sh
```

**O que faz:** Atualiza os repositórios do APT e instala ferramentas essenciais como `git`, `curl`, `vim`, `wget`, `htop`, `tree` e `net-tools`.

**⚠️ Requer permissões sudo.**

---

#### 💾 Criar backup de uma pasta

Antes de executar, edite o script `backup.sh` e configure as variáveis:
- `ORIGEM`: pasta que deseja fazer backup (padrão: `$HOME/teste`)
- `DESTINO`: pasta onde o backup será salvo (padrão: `$HOME/backups`)

```bash
./backup.sh
```

**O que faz:** Cria um arquivo `.tar.gz` compactado da pasta configurada, com data e hora no nome do arquivo.

**Exemplo de saída:**
```
Backup de /home/usuario/teste criado em /home/usuario/backups/backup_2025-12-09_14-30-45.tar.gz
```

---

## 🧪 Testando os scripts

Para testar rapidamente todos os scripts em sequência:

```bash
cd scripts
./system.info.sh
sudo ./update.system.sh
./backup.sh
```

---

## 📝 Observações

- Os scripts foram criados para ambientes **Debian/Ubuntu**
- Sempre revise o conteúdo dos scripts antes de executá-los
- Para ambientes de produção, adapte os scripts conforme suas necessidades
- Use Docker para testes sem afetar seu sistema principal

---

## 📜 Licença

Este projeto é de código aberto e está disponível para fins educacionais.
