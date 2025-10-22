# syntax=docker/dockerfile:1

ARG IMAGE=rockylinux/rockylinux:9.6
#ARG IMAGE=fedora:42

FROM ${IMAGE}

RUN dnf -y install unzip bzip2 xz autoconf gcc make libtool file gcc-c++ which patch openssl-devel libffi-devel bzip2-devel ncurses-devel sqlite-devel expat-devel gmp-devel xz-devel tk-devel libzstd-devel glibc-devel.i686 glibc-devel.x86_64 diffutils bc libuuid-devel binutils flex bison elfutils-libelf-devel && \
    dnf clean all && rm -rf /var/cache/dnf

WORKDIR /src

RUN curl -SLO https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.4.tar.xz

COPY ./bench-run.sh .
COPY ./kernel.config .

RUN chmod a+x /src/bench-run.sh

CMD [ "/bin/bash", "-c", "./bench-run.sh" ]
