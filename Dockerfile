FROM manjarolinux/base:latest

COPY mirrorlist /etc/pacman.d/mirrorlist

RUN pacman -Syyuu --noconfirm --needed \
    base-devel \
    shadow \
    git \
    git-lfs \
    cmake \
    libseccomp \
    libtool \
    intltool \
    gcc \
    make \
    linux \
    linux-firmware \
    sudo && \
    rm -f /var/cache/pacman/pkg/*
