FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl 
RUN curl --fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs   

COPY package.json package-lock.json ./

RUN npm install

COPY index.js .

ENTRYPOINT ["node", "index.js"] 