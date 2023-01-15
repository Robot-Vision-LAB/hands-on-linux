FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y \
    git \
    zsh \
    curl \
    wget \
    vim \
    && apt-get autoremove -y \
    && apt-get clean -y

# zsh install.
RUN chsh -s $(which zsh)

# oh-my-zsh setting.
RUN curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -p git \
    -p ssh-agent \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions

COPY .zshrc ~/.zshrc

