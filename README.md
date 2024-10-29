# Aplicação streamlit usando Dockerfile

Itens usados nesse projeto:
- Docker -> Infra
- Python -> Plataforma
- Poetry -> Orquestrador
- Streamlit -> Aplicação

## O que é um Dockerfile?
O Dockerfile é um arquivo de texto que contém todas as instruções para criar uma imagem Docker. É como uma receita: você define os ingredientes (imagens base, pacotes) e os passos (instalações, configurações) para construir sua imagem final.

## Como funciona?
1. **Base da imagem:** Você escolhe uma imagem base (e.g., Ubuntu, Node.js) para começar.
2. **Camadas:** Cada instrução no Dockerfile cria uma nova camada na imagem. Essas camadas são imutáveis, o que otimiza o armazenamento.
3. **Instruções comuns:**
   * `FROM`: Define a imagem base.
   * `RUN`: Executa comandos dentro da imagem (e.g., instalar pacotes).
   * `COPY`: Copia arquivos do seu computador para a imagem.
   * `WORKDIR`: Define o diretório de trabalho.
   * `EXPOSE`: Expor as portas que a aplicação irá utilizar.
   * `CMD`: Define o comando padrão para executar quando o container é iniciado.
   * `ENTRYPOINT`: Similar ao CMD, mas com um comportamento diferente.

## Exemplo
```dockerfile
# Utiliza a imagem oficial do Node.js como base
FROM node:16-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos da aplicação para a imagem
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos da aplicação
COPY . .

# Executa a aplicação
CMD ["npm", "start"]
```


## Para criar a imagem com o aplicativo desse repositório
`docker build -t nome-da-imagem .`

## Para rodar a aplicação no container
`docker run -d -p 8501:8501 --name nome-do-container nome-da-imagem`

- `-d` = detachment
- `-p` = port
- `--name` = Nome container


## Características do Dockerfile

- Reprodutibilidade: Garante que a aplicação seja executada em qualquer ambiente com o Docker instalado, da mesma forma.
- Isolamento: Cada container tem seu próprio sistema de arquivos e recursos, evitando conflitos entre diferentes aplicações.
- Eficiência: As camadas da imagem permitem que o Docker reutilize partes comuns, tornando as imagens mais leves e rápidas de construir.
- Facilidade de compartilhamento: As imagens podem ser compartilhadas em registries como o Docker Hub.

## Em resumo

O Dockerfile é uma ferramenta poderosa para criar ambientes de desenvolvimento e produção consistentes e portáteis. Ao entender como funciona, você poderá criar imagens personalizadas para suas aplicações de forma eficiente e segura.