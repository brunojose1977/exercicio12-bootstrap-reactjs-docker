#!/bin/bash
clear

path_aplicacao_host=/home/brunojose/devops/curso4-docker/exercicio12-bootstrap-reactjs-docker
path_pasta_site_reactjs=./site-reactjs
nome_arquivo_compactado=aplicacao.tar.gz

echo "Preparação e execução do ambiente de conteiner Docker da aplicação de exemplo Bootstrap (Reacj.js)."
echo " "
echo "Instalação e Execução"
echo "----------------------"
echo " "
echo "Após a compactação da aplicação, conforme Dockerfile, será realizado o build da imagem do conteiner e o arquivo $nome_arquivo_compactado será copiado da máquina host "
echo "para dentro do conteiner para a pasta definida no workdir /app, e algumas atualizações de Linux serão feitas."
echo " "
echo "Então o outro script [2-descompactar-configurar-rodar-conteiner.sh] vai finalizar a instalação, fazendo a descompactação e execução dos comandos,"
echo "npm install, build, que vão deixar a aplicação e suas dependencias instaladas, configuradas. Logo ficará pronta para a chamada de execução do ENTRYPOINT."
echo " "
echo "Chamada de execução do ENTRYPOINT do Dockerfile: (rnp run start)."
echo " "

sleep 10

cd $path_aplicacao_host
tar czf $nome_arquivo_compactado $path_pasta_site_reactjs
echo " "
echo "Compactação finalizada."
echo " "
ls -la $nome_arquivo_compactado
echo " "
echo "Agora será executado o comando de geração da imagem e também da criação e execução do conteiner : sudo docker compose up"
echo " "
echo " Ao final dessa execução para testar no browser do host http://0.0.0.0:8080"
echo " " 
sudo docker compose up