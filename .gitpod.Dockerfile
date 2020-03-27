FROM gitpod/workspace-full as gitpod
                    
USER gitpod

RUN sudo wget -P /workspace "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-286.0.0-linux-x86_64.tar.gz" && sudo tar xvzf google-cloud-sdk-286.0.0-linux-x86_64.tar.gz -C /google-cloud-sdk
# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
