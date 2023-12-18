# edp-2023-recursado-tp

## generador

```
$ cd 01-generador/
$ docker build -t edp-2023-tp-generador .
$ docker run -it -v ./outputs_generador/:/tmp/outputs/ edp-2023-tp-generador
```

## usuario

```
$ cd 02-usuario/
$ docker build -t edp-2023-tp-usuario .
$ docker run -it -v $(pwd)/../01-generador/outputs/:/tmp/inputs/ -v ./textos/:/tmp/textos/ -v ./outputs_usuario/:/tmp/outputs/ edp-2023-tp-usuario
```
