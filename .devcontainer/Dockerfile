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
RUN sh -c "$(wget <https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh> -O -)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions --depth=1 

