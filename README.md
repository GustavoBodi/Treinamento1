# Treinamento 1
## Executando
Para executar o programa, basta clonar com git clone e executar com Docker:
```
$ git clone https://github.com/GustavoBodi/Treinamento1.git
$ cd Treinamento1
$ docker build -t labsec .
$ docker run --ti --name labsec labsec bash
$ cd /home/labsec/
$ make
```
