FROM docker.io/golang:1.22

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    git \
    zsh \
    vim \
    && rm -rf /var/lib/apt/lists/* \
    && chsh -s /bin/zsh\
    && curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh\
    && echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.zshrc\
    && echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc


WORKDIR /app

CMD ["zsh"]
