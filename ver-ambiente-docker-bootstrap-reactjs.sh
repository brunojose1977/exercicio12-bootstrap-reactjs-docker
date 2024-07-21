#! /bin/bash
clear

echo "Ambiente Docker da aplicação Bootstrap React.js."
echo "Conteiner: "
echo " "
sudo docker ps -a | grep demo-bootstrap-reactjs
echo " "
echo " "
echo "Imagem:"
echo " "
sudo docker images | grep brunojose1977/exercicio12-bootstrap-reactjs-docker
echo " "
echo " "
echo " "
echo "- Para zerar o ambiente: ./zerar-ambiente-docker-bootstrap-reactjs.sh"
echo "- Para recriar todo o ambiente: ./1-pacote-imagem-conteiner.sh"
echo "- Para testar, no seu browser da máquina host: http://0.0.0.0:8080"
echo " "