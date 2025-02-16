ARG FEDORA_VERSION=38

# Use Fedora as the base image
FROM registry.fedoraproject.org/fedora:${FEDORA_VERSION}

# Install runtime dependencies
RUN dnf -y install \
    podman \
    && dnf clean all

# Install Distrobox Scripts
COPY ./distrobox ./distrobox-* /usr/bin/
