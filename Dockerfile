FROM prefecthq/prefect:2.10.6-python3.7

RUN sudo apt-get update
RUN sudo apt-get install -y python3-venv
RUN python3 -m venv prefect-env
RUN source prefect-env/bin/activate

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir