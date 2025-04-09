FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl 
RUN curl --fsSL https//deb.nodesource.com/setup_lts.x | sudo -E bash -
RUN apt-get install -y nodejs   

COPY index.js index.js
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

ENTRYPOINT ["node", "index.js"] 