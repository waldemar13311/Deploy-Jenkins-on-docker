# Deploy-Jenkins-on-docker
Playbook for deploy jenkins on docker.

### Usage
1. First, run `Make-the-node-an-agent.ansible.yaml` for the Jenkins agent node.
2. Second, run `Deploy-jenkins-on-docker.ansible.yaml` for the Jenkins controller node.
3. Then, run these commands again on the controller:
```bash
# go to container:
$ docker exec -it jenkins bash

$ ssh-copy-id -i /var/jenkins_home/.ssh/key/key-for-jenkins-slave.pub jenkins-agent-user@jenkins-agent-server.local

# Copy this private key for SSH credential
$ cat /var/jenkins_home/.ssh/key/key-for-jenkins-slave

# and copy administrator password to unlock first enter in Jenkins
$ cat /var/jenkins_home/secrets/initialAdminPassword
```

Go to browser, unlock Jenkins, install and in the web interface, create an SSH credential(SSH Username with private key) and add the agent node.