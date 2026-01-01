FROM python:3.10-slim-bullseye

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       gcc \
       libffi-dev \
       libc6-dev \
       ffmpeg \
       aria2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pytube

ENV COOKIES_FILE_PATH="youtube_cookies.txt"

CMD ["sh", "-c", "gunicorn app:app & python3 main.py"]

