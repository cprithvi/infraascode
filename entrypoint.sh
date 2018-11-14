#!/bin/bash

# create web root home and copy web pages to that.

echo "*** Creating web root as /home/cprithvi/www and copy web pages to it ***"

sudo mkdir -p /home/cprithvi/www

cp www/Home.html /home/cprithvi/www/
cp www/HelloWorld.html /home/cprithvi/www/

echo "*** Step 1 Done. ***"

# run the terraform

echo "***Applying Terraform now ***"

terraform init > /dev/null 2>&2
terraform apply

echo "*********** Step 2 done ****************"

# test the web app

echo "************* Testing the Webapp now *****************"


b=$(ifconfig eth0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
c="/Home.html"

curl http://$b$c | head -1 > /dev/null 2>&2

a="The Webapp is available at "
echo "$a$b$c"


