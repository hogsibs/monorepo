FROM gitpod/workspace-dotnet as gitpod
                    
USER gitpod

# Add Bazel distro URI
RUN sudo apt install curl
RUN curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list

# Install / update Bazel
RUN sudo apt update && sudo apt install bazel

# RUN sudo wget -P /tmp "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-286.0.0-linux-x86_64.tar.gz"
# RUN sudo mkdir /google-cloud-sdk
# RUN sudo tar xvzf /tmp/google-cloud-sdk-286.0.0-linux-x86_64.tar.gz -C /google-cloud-sdk
# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
