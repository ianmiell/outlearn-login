FROM node
RUN npm install -g phantomjs && npm install -g casperjs
ADD /login.js login.js
ADD /run.sh run.sh
ENTRYPOINT ["/run.sh"]
