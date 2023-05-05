FROM prefecthq/prefect:2.10.6-python3.7

RUN apt-get update
RUN apt-get install -y python3-venv
RUN cd ~
RUN python3 -m venv prefect-env
RUN source prefect-env/bin/activate

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir