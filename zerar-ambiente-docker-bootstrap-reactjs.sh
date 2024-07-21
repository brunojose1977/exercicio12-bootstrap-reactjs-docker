#! /bin/bash
clear

echo "Excluindo o conteiner [demo-bootstrap-reactjs] da aplicação de exemplo Botstrap React.js... PARA CANCELAR CTRL + C"
echo " "
sleep 5
sudo docker rm demo-bootstrap-reactjs --force
echo " "
echo "Excluindo a imagem da aplicação [demo-bootstrap-reactjs], brunojose1977/exercicio12-bootstrap-reactjs-docker:1.0...  PARA CANCELAR CTRL + C"
echo " "
sleep 5
sudo docker rmi brunojose1977/exercicio12-bootstrap-reactjs-docker:1.0
echo " "
echo "O conteiner [demo-bootstrap-reactjs] e a imagem brunojose1977/exercicio12-bootstrap-reactjs-docker:1.0 do projeto Bootstrap com React.js foram apagados."
echo " "
sleep 3
sudo clear && sudo docker ps -a && sudo docker images
echo " "
echo "Para recriar tudo execute: ./1-pacote-imagem-conteiner.sh"
echo " "
