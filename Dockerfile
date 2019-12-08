FROM alpine
# official kubectl install instructions from: https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux
# Download the latest release with the command
# RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl
# Make the kubectl binary executable.
RUN chmod +x ./kubectl
# Move the binary in to your PATH
RUN mv ./kubectl /usr/local/bin/kubectl
# Test to ensure the version you installed is up-to-date
RUN kubectl version

#
#-L, --location
#              (HTTP)  If  the  server  reports  that  the requested page has moved to a different location (i
# -O, --remote-name
#              (Only  the file part of the remote file is used, the path is cut