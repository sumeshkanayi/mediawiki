# MediaWiki
## How to?
-  clone the repo
-  run make all

## Things to do
- Templating k8 definitions and Using helm
- Testing images
- Using storage classes/EBS volumes etc for maria DB
- Using secret manager integration with passwords (Maria DB and mediawiki)
- Linking both mediawiki and mariadb (Needs customization of mediawiki docker image itself.Needs custom entrypoit scripts to modify mediawiki configuration file to point to the cluster IP of maria DB)
- Good to have a mysql cluster (stateful set)
- Certificates using Lets encrypt ot certificate manager
- 





