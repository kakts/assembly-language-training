FROM --platform=linux/x86_64 ubuntu:20.04
RUN apt update
RUN apt install -y bc gcc make
RUN DEBIAN_FRONTEND=noninteractive apt install -y sudo
RUN useradd -ms /bin/bash user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user

USER user


# TODO src mount
WORKDIR /home/user/src