FROM mereghost/nodejs
MAINTAINER Marcello "mereghost" Rocha <marcello.rocha@gmail.com>

RUN npm i grunt-cli coffee-script -g
ADD rubyconf.tar.gz /root/

WORKDIR /root/rubyconf
CMD ["grunt", "serve"]

EXPOSE 8080
