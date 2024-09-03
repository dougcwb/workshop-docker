# Aplicação streamlit usando Dockerfile

Itens usados nesse projeto:
- Docker -> Infra
- Python -> Plataforma
- Poetry -> Orquestrador
- Streamlit -> Aplicação

## Para criar a imagem com o aplicativo desse repositório
`docker build -t nome-da-imagem .`

## Para rodar a aplicação no container
`docker run -d -p 8501:8501 --name nome-do-container nome-da-imagem`

## EXTRA: Verificar portas usadas
`netstat -ano | findstr :8501`