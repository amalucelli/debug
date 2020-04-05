# alpine is the smaller as possible image
FROM alpine:3.11

# install rakyll/hey for http load test
ADD https://storage.googleapis.com/hey-release/hey_linux_amd64 /usr/bin/hey

# install common tools
RUN apk update --quiet && \
    apk add --quiet --no-cache \
      bash \
      bind-tools \
      busybox-extras \
      curl \
      ethtool \
      git \
      iperf \
      jq \
      mtr \
      openssl \
      tcpdump \
      vim \
      wget && \
    chmod +x /usr/bin/hey

# bash is better for history cmd support
CMD ["/bin/bash"]
