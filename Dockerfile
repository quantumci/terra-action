# Use Alpine Linux as the base image
FROM alpine:latest
# Install required packages

RUN apk add --update --no-cache \
    bash \
    curl \
    unzip 


# Download and install Terraform
# RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip && \
# unzip terraform.zip && \
#     mv terraform /usr/local/bin/terraform && \
# rm terraform.zip

# Set the working directory


# Copy your Terraform configuration files into the container
COPY . .

# Entrypoint command to run Terraform apply

RUN pwd

RUN chmod +x Entrypoint.sh

RUN  bash Entrypoint.sh
# RUN terraform init

RUN echo "$acess_key"
# RUN terraform validate


# RUN terraform show

CMD [ "sh", "-c", "echo "$acess_key"" ]