# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ docker build -t edp-2023-ci-tp-generador .
$ docker run -it -v ./output/:/tmp/output/ edp-2023-ci-tp-generador
```

## usuario

```
$ cd 02-usuario/
$ docker build -t edp-2023-ci-tp-usuario .
$ docker run -it -v ./output/:/tmp/output/ edp-2023-ci-tp-usuario
```
