# Use Alpine Linux as the base image
FROM alpine:latest
# Install required packages

RUN apk add --update --no-cache \
    bash \
    curl \
    unzip \
    python3 \
    py3-pip \
    && pip3 install pip\
    && pip3 install awscli

# Accept AWS Ceds as build arg
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_DEFAULT_REGION

RUN aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID \
    && aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY \
    && aws configure set default.region $AWS_DEFAULT_REGION \
    && aws configure set output json

# Download and install Terraform
RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip && \
unzip terraform.zip && \
    mv terraform /usr/local/bin/terraform && \
rm terraform.zip

# Set the working directory


# Copy your Terraform configuration files into the container
COPY . .

# Entrypoint command to run Terraform apply

RUN pwd

RUN terraform init

RUN terraform validate


RUN terraform show

# CMD [ "terraform", "validate" ]