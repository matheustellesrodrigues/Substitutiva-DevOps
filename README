# Spring PetClinic Containerizado com Docker

## Identificação

* Nome: Matheus De Castro Telles Rodrigues
* RM: 98413

---

# Descrição

Projeto baseado no Spring PetClinic, containerizado utilizando Docker e Docker Compose.

A solução utiliza:

* Container da aplicação Spring PetClinic
* Container PostgreSQL
* Rede Docker dedicada
* Volume nomeado para persistência de dados
* Variáveis de ambiente para configuração da aplicação e banco

---

# Arquitetura

```text
                +------------------+
                |  Navegador Web   |
                | localhost:8080   |
                +--------+---------+
                         |
                         v
            +------------------------+
            | PetClinic Container    |
            | petclinic-98413        |
            | Porta 8080             |
            +-----------+------------+
                        |
                Rede Docker
                        |
                        v
            +------------------------+
            | PostgreSQL Container   |
            | postgres-98413         |
            | Porta 5432             |
            +-----------+------------+
                        |
                        v
              Volume Nomeado
              petclinic-data
```

---

# Tecnologias Utilizadas

* Java 17
* Spring Boot
* Spring PetClinic
* Docker
* Docker Compose
* PostgreSQL 16

---

# Construção e Execução

Executar o comando abaixo na raiz do projeto:

```bash
docker compose up -d --build
```

Verificar containers em execução:

```bash
docker ps
```

---

# Verificações Solicitadas

Verificar usuário do container:

```bash
docker exec -it petclinic-98413 whoami
```

Resultado esperado:

```text
petclinic
```

Verificar diretório de trabalho:

```bash
docker exec -it petclinic-98413 pwd
```

Resultado esperado:

```text
/app
```

Listar arquivos:

```bash
docker exec -it petclinic-98413 ls -l
```

---

# Conexão com Banco de Dados

Entrar no PostgreSQL:

```bash
docker exec -it postgres-98413 psql -U petclinic -d petclinic
```

Executar consulta:

```sql
SELECT NOW();
```

Exemplo:

```text
2026-06-18 10:00:00
```

---

# Variáveis de Ambiente

Aplicação:

```text
SPRING_DATASOURCE_URL=jdbc:postgresql://postgres-98413:5432/petclinic
SPRING_DATASOURCE_USERNAME=petclinic
SPRING_DATASOURCE_PASSWORD=petclinic
```

Banco:

```text
POSTGRES_DB=petclinic
POSTGRES_USER=petclinic
POSTGRES_PASSWORD=petclinic
```

---

# Rede Docker

Rede utilizada:

```text
petclinic-net
```

---

# Volume Nomeado

Volume utilizado para persistência:

```text
petclinic-data
```
