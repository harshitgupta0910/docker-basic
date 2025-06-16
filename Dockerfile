FROM ubuntu

RUN apt-get update && apt-get install -y curl
RUN curl -SL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y    
RUN apt-get install -y nodejs

COPY package.json package.json 
COPY package-lock.json package-lock.json 
COPY main.js main.js

RUN npm install

ENTRYPOINT ["node", "main.js"]
# Expose the port the app runs on