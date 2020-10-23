FROM zzzcat/dispshell:node12

WORKDIR /home/app

# install
RUN npm install -g @vue/cli -y && \
    npm install @auth0/auth0-spa-js && \
    #vue create my-app -d && \
    #cd my-app && \
    mkdir my-app && \
    #vue add router
    echo "OK"

# Install modules
#RUN npm install @auth0/auth0-spa-js

ADD ./01-Login/ /home/app/my-app
ADD ./auth_config.json /home/app/my-app/
WORKDIR /home/app/my-app
RUN npm install
CMD PORT=3000 npm run serve
#CMD bash

EXPOSE 3000
