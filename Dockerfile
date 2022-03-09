FROM ghcr.io/arkadiuminc/az:main

WORKDIR /usr/local/bin

RUN curl -sSL https://get.helm.sh/helm-v3.8.0-linux-amd64.tar.gz -o helm.tar.gz && \
    tar -xvf helm.tar.gz && \
    chmod +x ./helm

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl

