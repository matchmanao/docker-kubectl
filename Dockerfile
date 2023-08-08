FROM alpine:3.18.3
# official kubectl install instructions from: https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux
# official documentation uses CURL. Alpine does not have CURL but wget.
# -----------------------------------------------------------------------
#  todo Antonio: use latest version and tag the image with this version number
#  RUN wget https://storage.googleapis.com/kubernetes-release/release/stable.txt
# -----------------------------------------------------------------------
# Download release 1.16.3
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl
# Make the kubectl binary executable.
RUN chmod +x ./kubectl
# Move the binary in to your PATH
RUN mv ./kubectl /usr/local/bin/kubectl
# RUN kubeadmin init
# Test to ensure the version you installed is up-to-date
# -----------------------------------------------------------------------
#  todo Stefan: how to create a dummy ~/.kube/config file so that the command
#  below does not throw an error (_The connection to the server localhost:8080 was refused - did you specify the right host or port?_)
# RUN kubectl version
# -----------------------------------------------------------------------