FROM fedora:38

RUN dnf -y install gcc make pkg-config \
    autoconf automake libtool autoconf-archive \
    tpm2-tss-devel openssl-devel tpm2-abrmd \
    openssl tpm2-tools dbus-daemon procps-ng git \
    && mkdir build \
    && chmod go+w /usr/share/doc \
    && chmod go+w /usr/share/licenses \
    && chmod go+w /usr/lib64 \
    && chmod go+w /usr/lib64/ossl-modules

# podman build -f Containerfile --tag tpm2-openssl-build
# podman run -it --name tpm2-openssl-1 -v "$(pwd):/build:Z" --rm --userns=keep-id localhost/tpm2-openssl-build /bin/bash
