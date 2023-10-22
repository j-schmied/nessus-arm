# Nessus for arm

Docker container for running Tenable Nessus on arm-based Devices such as Apple Silicon.

Tested on: Kali Linux 2023.3 VM (Host: MacBook Pro M1 Max)

## Setup

* Install Docker
* Build the container `docker build -t nessus .`
* Start the container `docker run -p 8834:8834 --restart=always --name nessus nessus`
* Navigate to https://127.0.0.1:8834, setup, enjoy!

