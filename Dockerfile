FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir pylint

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./stitching_detailed.py" ]
