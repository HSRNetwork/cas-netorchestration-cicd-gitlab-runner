FROM ubuntu:18.04
MAINTAINER Julian Klaiber <julian.klaiber@ins.hsr.ch>

RUN apt-get update && apt-get -y upgrade

# Install Ansible and Ansible Lint
RUN apt-get -y install \
    python \
    python-pip \
    git
RUN pip install \
    ansible==2.7 \
    ansible-lint \
    napalm-ansible

CMD ["bin/bash"]
