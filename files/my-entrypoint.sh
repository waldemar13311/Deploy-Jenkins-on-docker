if [ ! -f ~/.ssh/key/key-for-jenkins-slave ]; then \
    mkdir -p ~/.ssh/key/; \
    ssh-keygen -t rsa -f ~/.ssh/key/key-for-jenkins-slave -q -N ""; \
fi && \
/usr/bin/tini -s -- /usr/local/bin/jenkins.sh