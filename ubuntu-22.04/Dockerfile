FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    binutils \
    elfutils \
    curl \
    ca-certificates

WORKDIR /workdir

RUN curl -q https://platform.activestate.com/dl/cli/w19880m01/install.sh -o install.sh && \
    sh install.sh && \
    rm install.sh

COPY .. /scripts/deploy /root/.local/bin/
RUN chmod +x /root/.local/bin/deploy

ENV PATH="/root/.local/bin:$PATH"

CMD ["/bin/bash"]
