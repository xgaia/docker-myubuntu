from ubuntu:16.04
MAINTAINER Xavier Garnier 'xavier.garnier@irisa.fr'

# Install packages, and change the default shell to zsh
RUN apt update && \
    apt upgrade -y && \
    apt install -y wget zsh curl htop vim git most python3 python3-venv python3-pip ipython3 && \
    echo $(which zsh) | chsh

COPY zshrc.sh /root/.zshrc
COPY gitconfig /root/.gitconfig

WORKDIR /root

CMD ["zsh"]