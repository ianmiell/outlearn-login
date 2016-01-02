FROM node
RUN npm install -g phantomjs && npm install -g casperjs && apt-get update && apt-get install vim && apt-get clean
ADD /login.js login.js
ADD /run.sh run.sh
ENTRYPOINT ["/run.sh"]
