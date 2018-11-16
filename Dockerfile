FROM ubuntu
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl software-properties-common \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
&& dd-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" \
&& apt-get update && apt install -y docker-ce-cli
CMD ["docker"]
