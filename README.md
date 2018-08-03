# trex-macOS

This repository implements trex (https://github.com/fredpy/trex2-agent) and europa (https://github.com/zepinto/europa) in a Docker container on top of macOS.

The method presented here has been tested on macOS High Sierra Version 10.13.5.

## Host Prerequisites
  * Install [XQuartz](https://www.xquartz.org/) and enable "Allow connections from network clients" under Preferences ->       Security.
  * Install [Docker for Mac](https://docs.docker.com/docker-for-mac/) and create your Docker account.

## Installation
  * Open a terminal and check Docker installation:
  ```
  docker run hello-world
  ```
  Docker will first try to find the image locally, then it will pull the image from Docker server.
  You can check the IMAGE_ID with:
  ```
  docker images
  ```
  As Docker works fine, remove the pulled image as it won't be needed:
  ```
  docker rmi -f IMAGE_ID
  ```
  * Login with your docker credentials:
  ```
  docker login
  ```
  * Navigate to the cloned repo and generate the environment variables:
  ```
  cd ~/trex-macOS
  source env.sh
  ```
  * Build the image:
  ```
  bash build.sh
  ```
  * Run it:
  ```
  bash run.sh $VERSION
  ```
  * Once inside the container, run the install file:
  ```
  bash install.sh
  ```
  * Source the bashrc file:
  ```
  source .bashrc
  ```
  * Test trex installation:
  ```
  sim sample
  ```
