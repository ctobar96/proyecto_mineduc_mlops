# proyecto_mineduc_mlops


proyecto_mineduc_mlops/
├── .github/                   # Pipelines de CI/CD
├── data/                      # 🗄️ ARCHIVOS FÍSICOS (Ignorado por Git)
│   ├── raw/                   # Aquí pegas los .rar y .csv originales de 3.16 GB
│   ├── bronze/                # Spark guarda aquí los datos crudos en formato Parquet/Delta
│   ├── silver/                # Spark guarda aquí los datos limpios (notas corregidas)
│   └── gold/                  # Spark guarda aquí las tablas finales listas para BI y ML
├── data_engineering/          # ⚙️ CÓDIGO DE PROCESAMIENTO (Trackeado por Git)
│   ├── notebooks/             # Análisis exploratorio (EDA)
│   ├── src/
│   │   ├── ingest/            # Scripts Python para descargar/mover a data/raw/
│   │   ├── bronze/            # Scripts PySpark que leen de raw/ y escriben en data/bronze/
│   │   ├── silver/            # Scripts PySpark que leen de bronze/ y escriben en data/silver/
│   │   └── gold/              # Scripts PySpark que leen de silver/ y escriben en data/gold/
│   └── tests/                 # Pruebas unitarias para validar limpieza
├── mlops/                     # 🧠 MODELADO Y EXPERIMENTOS
│   ├── training/              # Scripts de Spark MLlib para entrenar el modelo
│   ├── security/              # Scripts para inyección de ruido (privacidad diferencial)
│   └── mlflow/                # Configuración del servidor de tracking local
├── deployment/                # 🚀 DESPLIEGUE Y SERVICIO
│   ├── api/                   # Código de FastAPI para exponer el modelo empaquetado
│   ├── Dockerfile             # Receta para construir el contenedor del modelo
│   └── docker-compose.yml     # Orquesta la API, la app y mlflow en contenedores
├── app/                       # 🖥️ FRONTEND INTERACTIVO
│   ├── components/            # Gráficos y módulos visuales
│   ├── main.py                # Script principal de Streamlit
│   └── Dockerfile             # Contenedor para Streamlit
├── bi/                        # 📊 BUSINESS INTELLIGENCE
│   └── mineduc_dashboard.pbix # Dashboard de Power BI conectado a data/gold/
├── .gitignore                 # Reglas de ignorado (incluye la carpeta data/ y .env)
├── Makefile                   # Comandos rápidos de terminal
└── requirements.txt           # Dependencias (PySpark, MLflow, FastAPI, numpy, etc.)