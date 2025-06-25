FROM hashicorp/terraform:1.8.4

# Install AWS CLI
RUN apk add --no-cache python3 py3-pip bash curl unzip && \
    pip3 install awscli && \
    terraform version && \
    aws --version

WORKDIR /app

COPY . /app
