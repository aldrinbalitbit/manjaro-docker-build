FROM manjarolinux/base:latest

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

RUN git clone git://aur.archlinux.org/yay.git && \
    cd yay && \
    makepkg -si -Syyuu --asroot --noconfirm && \
    cd .. && \
    rm -f yay
