FROM python:3.11-alpine

LABEL maintainer="Shubham Roy<roy.shubham601@gmail.com>"

RUN addgroup -g 1000 appuser \
    && adduser -h /code -s /bin/sh -G appuser -D -u 1000 appuser \
    && apk update \
    && mkdir -p /code \
    && chown appuser:appuser /code

COPY requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY --chown=appuser:appuser app /code/app
WORKDIR /code/app
EXPOSE 8080
USER appuser
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]
