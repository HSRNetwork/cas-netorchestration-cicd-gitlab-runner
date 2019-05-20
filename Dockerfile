FROM ubuntu:18.04
MAINTAINER Julian Klaiber <julian.klaiber@ins.hsr.ch>

RUN apt-get update && apt-get -y upgrade

# Install Ansible and Ansible Lint
RUN apt-get -y install \
    python \
    python-pip \
    git
RUN pip install \
    ansible \
    ansible-lint

RUN mkdir /napalm-ansible
RUN cd /napalm-ansible
RUN git clone https://github.com/napalm-automation/napalm-ansible.git

CMD ["bin/bash"]
