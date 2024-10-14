# Deploy-Jenkins-on-docker
Playbook for deploy jenkins on docker.

## Command to get the administrator password to unlock Jenkins
```bash
$ docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```