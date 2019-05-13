# CI/CD - Gitlab Runner
## Prerequisites
```
ins@netorch:~/runner$ mkdir -p /opt/data/git/gitlab-runner/config/
ins@netorch:~/runner$ cp ./gitlab-runner/config/config.toml.tmpl /opt/data/git/gitlab-runner/config/config.toml
ins@netorch:~/runner$ chmod 400 /opt/data/git/gitlab-runner/config/config.toml
```
## Getting started
Start the service:
```
ins@netorch:~/runner$ docker-compose up -d
```
Find out the container id with the following command:
```
ins@netorch:~/runner$ docker ps
CONTAINER ID        IMAGE                          COMMAND                  CREATED             STATUS              PORTS               NAMES
635e9f1eaa72        gitlab/gitlab-runner:v11.5.0   "/usr/bin/dumb-init …"   6 seconds ago       Up 5 seconds                            runner_gitlab-runner_1
```
Enter a bash shell in the container:
```
ins@netorch:~/runner$ docker exec -it 635e9f1eaa72
```
Register the new runner:
```
root@635e9f1eaa72:/# sudo gitlab-runner register
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://10.20.2.10:8443/
Please enter the gitlab-ci token for this runner:
<your token>
Please enter the gitlab-ci description for this runner:
[635e9f1eaa72]: myrunnername
...
```
