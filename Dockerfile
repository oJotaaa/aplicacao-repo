# 1. Define a imagem base
FROM python:3.10-slim

# 2. Copia o arquivo de dependências
COPY ./requirements.txt .

# 3. Instala as dependências
RUN pip install -r requirements.txt

# 4. Copia o código da aplicação
COPY ./main.py .

# 5. Define o comando para rodar o app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]