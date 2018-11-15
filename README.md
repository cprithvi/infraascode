# Infra as code

Problem Statement


    Write a configuration management script that will automatically provision a web server (Nginx, Apache, Unicorn) and configures it with a single host
    Write a web application that uses the web server provisioned in previous step that has a single user that authenticates with a username/password and displays "Hello World" 

# Steps:
1. Pre-requisites
Below softwares must be installed for this code to run.
    1. Docker
    2. Terraform
    3. Git
    4. Assume the user as cprithvi OR create a folder /home/cprithvi. As the path /home/cprithvi/www will be NGINX home.

2. Clone this repository `git clone https://github.com/cprithviraj/infraascode.git`
3. Execute `sudo ./entrypoint.sh`
4. Test with http://<server IP>/Home.html
  
A running version is deployed at http://54.166.239.89/Home.html
  
# Installation Guide for Ubuntu 18.x

A) Install Docker- Refer: 
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

B) Install Terraform
```
    wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
    unzip terraform_0.11.10_linux_amd64.zip
    mv terraform /usr/local/bin/
```
D) Install Git
        `sudo apt install git`

C) For Web app 
        `sudo mkdir -p /home/cprithvi/`
