# MediaWiki

## Required softwares

 - kubectl
 - git
 - aws cli

## How to?

- clone the repo
- Set the below environment variables

export DOCKER_LOGIN_PASSWORD="PASSWORD FOR DOCKERHUB"
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=us-west-2

- create aws secret with mysql db username and password

>     aws secretsmanager create-secret \
>     
>     --region us-west-2 \
>     
>     --name mediawiki/mariadb \
>     
>     --secret-string '{"MYSQL_PASSWORD":"password@1234","MYSQL_ROOT_PASSWORD":"password@1234"}'

  

 - set kubeconfig file

  

- run 

> make all

  

## Things to do

  

- Good to have a mysql cluster (stateful set). - Not needed for this current usecase ,mediawiki is not super critical.

- Certificates using Lets encrypt ot certificate manager
- Versioning of docker images
- A config map (I dont think its too important to carry env variables)