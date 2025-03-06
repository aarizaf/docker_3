#!/bin/bash/hola

echo "Ingresa la ruta y nombre del archivo fuente:"
read SOURCE_FILE
EXTENSION="${SOURCE_FILE##*.}"
START_TIME=$(date +%s%3N)

case "$EXTENSION" in
  "py")
    docker run --rm -v "$(pwd)":/app python:3.9 bash -c "cd /app && python $SOURCE_FILE"
    ;;
  "java")
    docker run --rm -v "$(pwd)":/app openjdk:latest bash -c "cd /app && javac $SOURCE_FILE && java ${SOURCE_FILE%.*}"
    ;;
  "cpp"|"cc")
    docker run --rm -v "$(pwd)":/app gcc:latest bash -c "cd /app && g++ $SOURCE_FILE -o program && ./program"
    ;;
  "js")
    docker run --rm -v "$(pwd)":/app node:latest bash -c "cd /app && node $SOURCE_FILE"
    ;;
  "rb")
    docker run --rm -v "$(pwd)":/app ruby:latest bash -c "cd /app && ruby $SOURCE_FILE"
    ;;
  *)
    echo "Extensión no soportada."
    exit 1
    ;;
esac

END_TIME=$(date +%s%3N)
ELAPSED=$((END_TIME - START_TIME))
echo "Tiempo de ejecución: ${ELAPSED} ms"