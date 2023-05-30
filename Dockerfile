FROM ghcr.io/arkadiuminc/az:v2.46.0

WORKDIR /usr/local/bin

RUN az aks install-cli

RUN curl -L https://get.helm.sh/helm-v3.12.0-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm helm && \
    rm -rf linux-amd64 && \
    chmod +x ./helm

