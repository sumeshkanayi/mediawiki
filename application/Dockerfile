FROM centos:7
RUN yum -y install centos-release-scl wget httpd24-httpd rh-php73 rh-php73-php rh-php73-php-mbstring rh-php73-php-mysqlnd rh-php73-php-gd rh-php73-php-xml httpd
RUN wget --no-check-certificate https://releases.wikimedia.org/mediawiki/1.39/mediawiki-1.39.2.tar.gz
# Download the GPG signature for the tarball and verify the tarball's integrity:
RUN wget --no-check-certificate https://releases.wikimedia.org/mediawiki/1.39/mediawiki-1.39.2.tar.gz.sig 
#RUN gpg --verify mediawiki-1.39.2.tar.gz.sig mediawiki-1.39.2.tar.gz
#RUN mkdir -p /var/www 
RUN cd /var/www && tar -zxf /mediawiki-1.39.2.tar.gz && ln -s mediawiki-1.39.2/ mediawiki
EXPOSE 80
CMD ["/usr/sbin/httpd","-DFOREGROUND"] 
