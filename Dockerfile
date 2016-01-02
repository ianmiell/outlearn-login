FROM node
RUN npm install -g phantomjs && npm install -g casperjs && apt-get -y update && apt-get install -y vim && apt-get clean -y                                                    
ADD /login.js login.js                                                                                                                                                        
ADD /run.sh run.sh                                                                                                                                                            

RUN apt-get update
RUN apt-get install -y -qq curl git python-pip
RUN pip install shutit

RUN git clone https://github.com/ianmiell/outlearn-login
RUN cd outlearn-login/bin
RUN shutit build --delivery dockerfile

ENTRYPOINT ["/run.sh"]                                                                                                                                                        
