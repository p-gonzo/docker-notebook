FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--notebook-dir=notebooks" ]