FROM httpd
MAINTAINER manikanta paila
LABEL movie tickets booking
EXPOSE 80
WORKDIR /myproject
ADD index.html /usr/local/apache2/htdocs/
ENV name = manikanta
ENV place = pathapatnam
RUN echo "my name is $name and i am from $place"
