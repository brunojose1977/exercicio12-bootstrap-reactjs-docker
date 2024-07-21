#Exercicio 12

Aqui vamos criar o conteiner utilizando o Docker Compose + Dockerfile.

O Docker compose vai executar um build considerando de uma aplicação exemplo de Bootstrap feita com React.js;
O repositório no GIT é o : https://github.com/brunojose1977/exercicio12-bootstrap-reactjs-docker.git

Passo a passo
-------------
1) execute:
    
./1-pacote-imagem-conteiner.sh

OBS:
O script 2-descompactar-configurar-rodar-conteiner.sh será executado automaticamente dentro do conteiner no momento da sua criação conforme definicao feita na imagem (definição no Dockerfile).

## CI/CD
- foi utilizado o Github action e foi configurado o arquivo workflow-ci-node.js.yml com o gatilho de pull-request, quando então são executados comandos NPM:

- install
- build
- test
