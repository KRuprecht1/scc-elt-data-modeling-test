FROM ghcr.io/dbt-labs/dbt-bigquery:1.3.0

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir