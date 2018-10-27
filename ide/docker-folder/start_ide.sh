#!/bin/bash

cd /home

git clone https://github.com/farshadahmadi/koodain.git code

cd code

git checkout newui-revertSiotadCommits

# chnage the mongodb url from localhost to mongodb (name of the mongo db service host in the network) in config file so that ide can access mongodb service
sed -i '8s/localhost/mongodb/' server/config/environment/farshad.js

npm install

bower install --allow-root

NODE_ENV=farshad grunt serve --force

# this is just for development to keep the container running
# tail -f /dev/null
