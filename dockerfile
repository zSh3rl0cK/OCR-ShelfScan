FROM python:3.13-slim

# Instala o Tesseract e o pacote de idioma português
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-por \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Instala dependências Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código fonte
COPY src/ ./src/
COPY samples/ ./samples/

CMD ["python", "src/testes.py"]