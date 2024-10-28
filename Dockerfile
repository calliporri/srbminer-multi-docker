FROM ubuntu:24.04

LABEL maintainer="Bored Mates Crypto Club <info@boredmates.com>"
LABEL org.opencontainers.image.source="https://github.com/boredmates/srbminer-multi-docker"
LABEL org.opencontainers.image.description="SRBMiner-Multi CPU & AMD GPU & NVIDIA GPU & INTEL GPU cryptocurrency miner on Docker and Kubernetes"
LABEL org.opencontainers.image.licenses="MIT"

ARG SRBMINER_VERSION=2.6.9
ARG VERSION_LABEL=2-6-9

RUN set -xe; \
    mkdir /srbminer; \
    apt-get update; \
    apt-get --no-install-recommends --yes install wget ca-certificates; \
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/${SRBMINER_VERSION}/SRBMiner-Multi-${VERSION_LABEL}-Linux.tar.gz; \
    tar -xf SRBMiner-Multi-${VERSION_LABEL}-Linux.tar.gz; \
    mv SRBMiner-Multi-${VERSION_LABEL}/SRBMiner-MULTI /srbminer; \
    chown root:root /srbminer/*; \
    rm -rf SRBMiner-Multi-${VERSION_LABEL}-Linux.tar.gz; \
    rm -rf SRBMiner-Multi-${VERSION_LABEL}; \
    rm -rf /var/lib/apt/lists/*

WORKDIR /srbminer
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

EXPOSE 21550

ENTRYPOINT ["/srbminer/entrypoint.sh"]