FROM ubuntu
WORKDIR /app

RUN apt update -y
RUN apt-get update -y
RUN apt-get install -y tree
RUN apt-get install -y curl
RUN apt-get install -y nano
RUN apt-get update --fix-missing
RUN apt install -y npm

# Pré-requsito para a execução da imagem:
# Antes da execução desse build, é necessário que fase de compactação tenha ocorrido com sucesso no script 1-pacote-imagem-conteiner.sh.
# Esse script vai gerar o arquivo: aplicacao.tar.gz 

# Agora vou copiar o arquivo compactado do site React.js e o script shell de descompactação e instalação da aplicação
COPY aplicacao.tar.gz .
COPY 2-descompactar-configurar-rodar-conteiner.sh .

# Agora rodar o o script de descompactação
RUN ./2-descompactar-configurar-rodar-conteiner.sh

ENTRYPOINT cd /app/site-reactjs && npm run start && sleep 10d
#ENTRYPOINT sleep 10d 