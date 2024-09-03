# Aplicação streamlit usando Dockerfile

Itens usados nesse projeto:
- Docker -> Infra
- Python -> Plataforma
- Poetry -> Orquestrador
- Streamlit -> Aplicação

Para rodar o aplicativo com esse repositório, basta rodar o comando abaixo: \
`docker build -t nome-da-imagem .`

-d = detach\
-p = porta\
`docker run -d -p 8501:8501 --name nome-do-container nome-da-imagem`

`netstat -ano | findstr :8501`