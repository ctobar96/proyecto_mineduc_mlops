# Usar imagen base de python
FROM python:3.9-slim

#Instalar dependencias del sistema
RUN apt-get update && apt-get install -y unrar wget curl && rm -rf /var/lib/apt/lists/*

# Crear y definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instalar los requerimientos de Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código de tu API y el modelo empaquetado
COPY deployment/api/ /app/api/
# Si necesitas cargar el modelo directamente aquí, también copiarías esa ruta
# COPY mlops/mlflow/artifacts/ /app/model/

# Exponer el puerto en el que correrá FastAPI
EXPOSE 8000

# Comando para arrancar el servidor
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8000"]