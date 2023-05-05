FROM prefecthq/prefect:2.10.6-python3.7

RUN apt-get update
RUN apt-get install -y python3-venv

ENV VIRTUAL_ENV=/opt/prefect-env
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir