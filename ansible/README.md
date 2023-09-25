**_Pre-requisites_**

- Docker installed
- Some hypervisor installed (VirtualBox, VMWare, etc)
- Run a CentOS VM

1. The docker folder contains 2 files.

   - Dockerfile: This file contains the instructions to build the docker image.

   - ansible.cfg: This file contains the configuration for ansible. We added the config file here because if we create the file on the docker build process, we are relying on docker to do it, so if it fails we can troubleshoot better. The other reason to do this is to reduce the image layers during the build.

2. shared folder: is supposed to be shared between the host and the container. This is the folder where we will put the ansible playbooks and the inventory file.

**_Build the image_**

```bash
docker build -t ansible-controller:v4 .
```

**_Run the container_**

```bash
docker run --rm -it -v ~/Documents/GitHub/devops/ansible/shared:/ansible_shared ansible-controller:v4 ansible-playbook -i inventory.ini playbook.yml
```

The previous command will run a temporary container, it will mount the shared folder to the container, and it will run the ansible playbook.


**_Run the container with a name_**

```bash
docker run --rm -it -v ~/Documents/GitHub/devops/ansible/shared:/ansible_shared --name ansible-controller ansible-controller:v4 ansible-playbook -i inventory.ini playbook.yml
```
