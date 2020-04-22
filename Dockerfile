FROM phusion/baseimage:0.11 as builder
LABEL maintainer "drew@commonwealth.im"
LABEL description="This image contains tools for setting up a secure substrate validator."

################################
# Install Yarn & dependencies
################################

# Must have packages
RUN apt-get update && apt-get install -y vim wget curl git sudo unzip

# Add none root user
USER root

# install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN nvm install node

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt update && sudo apt install yarn -y

RUN sudo apt-get install -y python3-pip
RUN ln -s /usr/bin/python3 python
RUN pip3 install --upgrade pip
RUN python3 -V
RUN pip --version
RUN pip install ansible

################################
# Install gcloud
################################

# Downloading gcloud package
RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz

# Installing the package
RUN mkdir -p /usr/local/gcloud \
  && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
  && /usr/local/gcloud/google-cloud-sdk/install.sh

# Adding the package path to local
ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin

################################
# Install Terraform
################################

# Download terraform for linux
RUN wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip

# Unzip
RUN unzip terraform_0.12.24_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin/
# Check that it's installed
RUN terraform --version 

################################
# Clone secure validator
################################

RUN git clone https://github.com/hicommonwealth/edgeware-secure-validator.git ~/edgeware-secure-validator
RUN eval `ssh-agent -s`