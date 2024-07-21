#!/bin/bash

path_aplicacao_descompactada=/app/app/site-reactjs
nome_arquivo_compactado=aplicacao.tar.gz

echo "Deploy da aplicação de exemplo Botstrap React.js na imagem que será usada no instanciamento do coiteiner Docker."
echo " "
echo "2 - Descompactando o projeto no container"
echo "----------------------------------------------------"
echo " "
echo " "
echo "O Tudo pronto, conforme previsto no Dockerfile o arquivo $nome_arquivo_compactado gerado na máquina host e copiado "
echo "para dentro do conteiner para a pasta web: $path_aplicacao_container."
echo "Então depois de descompactar serão realizados os comandos: npm install, build e run."
echo " "

#Rodando comandos a partir do WORKDIR definido no Dockerfile para onde esse script foi copiado no conteiner.

tar xzf $nome_arquivo_compactado .
cd $path_aplicacao_descompactada

#Iniciando os comandos de instalação, compilação. 
#OBS: A execução da aplicação (npm run start) será executado no ENTRYPOINT do Dockerfile
npm i startbootstrap-one-page-wonder
npm run build 

echo "Finalizada a instalação da aplicação Bootstrap React.js."
echo " "