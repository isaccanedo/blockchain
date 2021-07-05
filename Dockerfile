FROM       node:alpine 

MAINTAINER https://github.com/isaccanedo/blockchain

EXPOSE     3000

WORKDIR    /blockchain-demo 

COPY       package.json /blockchain

RUN        npm install

COPY       . /blockchain

CMD        ["node", "bin/www"]