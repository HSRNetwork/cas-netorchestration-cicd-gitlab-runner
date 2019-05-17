FROM ubuntu:18.04
MAINTAINER Julian Klaiber <julian.klaiber@ins.hsr.ch>

RUN apt-get update && apt-get -y upgrade

# Install Ansible and Ansible Lint
RUN apt-get -y install \
    python \
    python-pip
RUN pip install \
    ansible \
    ansible-lint

CMD ["bin/bash"]
