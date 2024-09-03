# o que vamos usar
FROM python:3.12.5
# o comando a realizar
RUN pip install poetry 
# onde vai ser salvo
COPY . /src
# muda pra pasta
WORKDIR /src
# roda instalação de td
RUN poetry install 
# abre a porta usada no app
EXPOSE 8501
# roda a aplicação
ENTRYPOINT [ "poetry", "run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0" ]