FROM gitpod/workspace-full as gitpod
                    
USER gitpod

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN sudo apt-get update && sudo apt-get install google-cloud-sdk
RUN gcloud init
RUN gcloud auth configure-docker

FROM marketplace.gcr.io/google/bazel:latest as bazel
# RUN sudo wget -P /tmp "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-286.0.0-linux-x86_64.tar.gz"
# RUN sudo mkdir /google-cloud-sdk
# RUN sudo tar xvzf /tmp/google-cloud-sdk-286.0.0-linux-x86_64.tar.gz -C /google-cloud-sdk
# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
