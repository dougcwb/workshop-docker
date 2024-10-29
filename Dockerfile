# A imagem que vamos usar (3.12-slim com 1 GB de espaço)
FROM python:3.12-slim

# O comando a realizar após carregar a imagem
RUN pip install uv

# Copia de-para: o primeiro é o do repositorio, o segundo é na imagem docker
COPY /app /app

# Diretório padrão: Onde vão rodar os próximos comandos
WORKDIR /app

# Roda instalação de dependências do projeto
RUN pip3 install -r requirements.txt

# Abre a porta usada pelo Streamlit
EXPOSE 8501

# Verifica saúde do app
HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

# Roda a aplicação no container
ENTRYPOINT [ "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0" ]