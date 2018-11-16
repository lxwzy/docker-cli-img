FROM ubuntu
RUN apt-get update && apt-get install apt-transport-https ca-certificates curl software-properties-common \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
&& dd-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" \
&& apt-get update && apt install docker-ce-cli
CMD ["docker"]
