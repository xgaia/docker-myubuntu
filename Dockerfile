from ubuntu:18.04
MAINTAINER Xavier Garnier 'xavier.garnier@irisa.fr'

# Copy dotfiles and startup script
COPY zshrc.sh /root/.zshrc
COPY gitconfig /root/.gitconfig
COPY startup.sh /start.sh

# Install packages, and change the default shell to zsh, and run a startup script if it exist
RUN apt update && \
    apt upgrade -y && \
    apt install -y wget zsh curl tree htop vim git zip ncdu man cmake most python3 python3-venv python3-pip python3-dev ipython3 openjdk-8-jdk scala nodejs npm && \
    chmod +x /start.sh

WORKDIR /root

# Expose some port
EXPOSE 80
EXPOSE 8080
EXPOSE 8800

CMD ["/start.sh"]