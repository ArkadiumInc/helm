FROM ghcr.io/arkadiuminc/az:main

WORKDIR /usr/local/bin

RUN curl -L https://get.helm.sh/helm-v3.8.0-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm helm && \
    rm -rf linux-amd64 && \
    chmod +x ./helm

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl

