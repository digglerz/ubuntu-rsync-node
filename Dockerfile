FROM node:latest

RUN apt update -y
RUN apt install -y openssh-client rsync

# Set Timezone
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
