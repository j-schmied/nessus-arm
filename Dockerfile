#
#	Dockerfile for running Nessus on arm based hardware.
#	Author: Jannik Schmied
#	Tested on: Kali Linux 2023.3 VM (Apple Silicon M1 Max Host)
#	
FROM ubuntu:18.04

# Update and install dependencies
RUN apt-get update
RUN apt-get install -y net-tools iputils-ping tzdata curl

# Cleanup
RUN rm -rf /var/lib/apt/lists/*

# Download and Install Nessus
RUN curl --request GET \
  --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.6.1-ubuntu1804_aarch64.deb' \
  --output 'Nessus-10.6.1-ubuntu1804_aarch64.deb'

RUN dpkg -i Nessus-10.6.1-ubuntu1804_aarch64.deb

# Expose Web GUI Port
EXPOSE 8834

ENTRYPOINT ["/opt/nessus/sbin/nessusd"]
