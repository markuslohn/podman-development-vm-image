# podman-development-vm-image



## Summary

This container image supports the virtualization of a development environment, for example to manage different projects and their technical requirements. The container image is structured in such a way that it can be used like a VM. 

So far, the image has been successfully tested in a Podman environment on a MacOS M2 system.



## Features

- Prepares an "Ubuntu"-environment
- Installs and configures the following tools:
  - git, jq, software-properties-common
  - curl, wget
  - zip, gzip, tar
  - vim
- Installes and configures [Ansible](https://www.ansible.com/)
- Installes and configures an SSH server
  - Due to this use VS Code or IntelliJ with the remote development option
  - creates a user vscdev with public key access (**Note:** It assumes that the key will be available in a podman secret called `vscdev_ssh_key`!)



## Prerequisites

- [Podman](https://podman.io/docs/installation) have to be installed and configured




## Minimal steps for application

- Clone this repository (or download this solution as a .ZIP-file, then unzip it)

- Build the image:
    ```bash
    #> cd podman-development-vm-image
    #> podman build -t ubuntu-dev-vm -f ./Dockerfile.ubuntu
    ```

- Create a container based on the image
    ```bash
    #> podman run --interactive --tty -d --name testvm -p 2022:22 ubuntu-dev-vm
    ```

