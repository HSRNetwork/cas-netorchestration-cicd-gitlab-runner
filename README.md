# CI/CD - Gitlab Runner
## Prerequisites
```
ins@netorch:~/runner$ sudo mkdir -p /opt/data/git/gitlab-runner/config/
```
## Getting started
Start the service:
```
ins@netorch:~$ docker-compose up -d
```
Find out the container id with the following command:
```
ins@netorch:~$ docker ps
CONTAINER ID        IMAGE                          COMMAND                  CREATED             STATUS              PORTS               NAMES
e1a5004f1474        gitlab/gitlab-runner:v11.5.0   "/usr/bin/dumb-init …"   6 seconds ago       Up 5 seconds                            runner_gitlab-runner_1
```
Enter a bash shell in the container:
```
ins@netorch:~$ docker exec -it e1a5004f1474
```
Register the new runner:  
*You can find your token under Project-Settings-CI/CD-Runners*
```
root@e1a5004f1474:/# gitlab-runner register
Runtime platform                                    arch=amd64 os=linux pid=48 revision=3afdaba6 version=11.5.0
Running in system-mode.                            

Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://10.20.2.10:8443/
Please enter the gitlab-ci token for this runner:
<your_token>
Please enter the gitlab-ci description for this runner:
[e1a5004f1474]: <your_runner_name>
Please enter the gitlab-ci tags for this runner (comma separated):
docker,ansible,ansible-lint
Registering runner... succeeded                     runner=F1DFEKAk
Please enter the executor: ssh, virtualbox, docker-ssh+machine, kubernetes, docker-ssh, shell, docker+machine, docker, parallels:
docker
Please enter the default Docker image (e.g. ruby:2.1):
docker:stable
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
root@e1a5004f1474:/#
```
**Gongratulations** you should now see your runner in GitLab under Project-Settings-CI/CD-Runners
