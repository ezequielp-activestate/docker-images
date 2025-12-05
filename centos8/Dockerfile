FROM almalinux:8

ARG CHANNEL=release

RUN dnf install -y epel-release && \
    dnf makecache && dnf install -y \
    binutils \
    elfutils \
    patchelf \
    vim-minimal \
    curl \
    ca-certificates

WORKDIR /workdir

RUN curl -q https://platform.activestate.com/dl/cli/w19880m01/install.sh -o install.sh && \
    sed -i "/^CHANNEL=/s/\"release\"/\"$CHANNEL\"/" install.sh && \
    sh install.sh && \
    rm install.sh

COPY .. /scripts/deploy /root/.local/bin/
RUN chmod +x /root/.local/bin/deploy

ENV PATH="/root/.local/bin:$PATH"

CMD ["/bin/bash"]
