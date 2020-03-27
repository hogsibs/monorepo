FROM gitpod/workspace-full as gitpod
                    
USER gitpod

RUN gcloud auth configure-docker && docker pull marketplace.gcr.io/google/bazel:latest

FROM marketplace.gcr.io/google/bazel:latest as bazel

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
