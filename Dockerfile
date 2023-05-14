FROM ubuntu:23.04

RUN apt-get update && apt-get install wget=1.21.* -y \
&& wget --progress=dot:giga -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64 && chmod 777 /bin/hadolint && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 

WORKDIR /home

ENTRYPOINT ["/bin/hadolint"]
CMD ["--help"]
