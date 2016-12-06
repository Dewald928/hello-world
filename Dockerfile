FROM phusion/baseimage:0.9.18

# Run the apt-get update command. Gets the latest apt-get file list
RUN apt-get update

# Download & Install all the Craft CMS requirements.
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y \
    mysql-server \
    php5 apache2 curl unzip \
    php5-cli php5-mysql mysql-client-core-5.5 \
    libapache2-mod-php5 php5-mcrypt php5-curl \
    php5-gd php5-imagick


CMD ["/etc/init.d/apache2", "restart"]

EXPOSE 80
