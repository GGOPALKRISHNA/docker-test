FROM ubuntu 

RUN apt-get update
RUN apt-get install -y curl 
RUN curl --fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs npm    

COPY package.json package-lock.json ./

RUN npm install

COPY index.js .

EXPOSE 3000

ENTRYPOINT ["node", "index.js"] 