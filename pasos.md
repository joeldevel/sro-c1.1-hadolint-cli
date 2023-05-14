# Pasos

## crear la imagen

```bash

 docker build -t desafio/hadolint:1.0.0 .


```

## Ejecutar 

pasarle un Dockerfile 

```bash

docker run --rm  -it  -v $(pwd):/home desafio/hadolint:1.0.0 Dockerfile

```

La salida si hay recomendaciones es algo así:

```

Dockerfile:3 DL3015 info: Avoid additional packages by specifying `--no-install-recommends`


```
