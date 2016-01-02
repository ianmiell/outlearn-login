FROM node
RUN npm install -g phantomjs && npm install -g casperjs && apt-get -y update && apt-get install -y vim && apt-get clean -y
ADD /login.js login.js
ADD /run.sh run.sh
ENTRYPOINT ["/run.sh"]
