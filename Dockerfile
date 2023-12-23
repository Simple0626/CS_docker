FROM adoptopenjdk/openjdk11-openj9

COPY . /data

RUN chmod +x ./Server/teamserver

WORKDIR /data/Server

CMD ["bash","-c","./teamserver $(cat /etc/hosts|awk 'END { print $1 }') 123456"]


