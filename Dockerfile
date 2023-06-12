FROM kalilinux/kali-rolling

LABEL maintainer="Asher Carneiro"

# Update the package lists and install the headless packages
RUN apt-get update && apt-get install -y \
    kali-linux-headless \
    wget \
    curl \
    telnet \
    git \
    iputils-tracepath \
    net-tools \
    build-essential \
    tmux \
    tmate \
    xterm \
    zsh \
    zstd \
    ltrace \
    strace \
    vim \
    less \
    colordiff \
    colortail \
    unzip \
    unrar \
    python3-setuptools \
    python3-pip \
    bash-completion \
    nodejs \
    npm \
    yarn

# Install Oh My Git
RUN git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git && \
    echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc

# Expose ports 80, 3000, and 21
EXPOSE 80 3000 21

CMD ["bash"]
