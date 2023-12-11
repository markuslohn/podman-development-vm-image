# podman-development-vm-image

This container image recreates a VM that can serve as the basis for a development environment. The image has so far been tested in a podman environment on a MacOS M2 system.

All important tools, e.g. git, wget, vim etc. are installed and configured. 

In addition, an SSH server is installed and configured to enable remote development with corresponding IDEs, e.g. VS Code, to enable remote development. A user ```vscdev``` is set up for access to the SSH server. For this user a key is configured for logging in. The image assumes that in a Podman environment the public key is stored in a secret with the name ```vscdev_ssh_key```.


## Build Image

To create the image for podman, execute the following command in the root directory:

```bash
#> cd podman-development-vm-image
#> podman build -t ubuntu-dev-vm -f ./Dockerfile.ubuntu
```

