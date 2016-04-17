# Vagrant and Docker Quickstart Project

Some Vagrantfile and docker templates for bootstrapping new projects.

# Vagrant

## Basic vagrant commands

* `vagrant up` - Creates and configures a Vagrant guest VM using the Vagrantfile. The provisioners only run the first time it is run.
* `vagrant halt` - Shuts down the running Vagrant VM.
* `vagrant reload` - Runs a halt then an up to reload the Vagrant VM.
* `vagrant reload --provision` - Restarts the Vagrant VM, skipping the initial import step and forcing the provisioners to run.
* `vagrant suspend` - Saves the current state of the VM and stops it.
* `vagrant destroy` - Removes all traces of the VM from the host machine.
* `vagrant ssh` - SSH onto the Vagrant VM.
* `vagrant box` - commands for managing boxes. 
* `vagrant package` - Packages the running Vagrant VM into a reusable box (currently only for VirtualBox).
* `vagrant provision` - Runs configured provisioners against the Vagrant VM.

## When is provisioning run?
* The first time `vagrant up` is run to create the environment (but not on subsequent `vagrant up`s.
* When `vagrant provision` is used.
* When `vagrant reload --provision` is used.

## Failed to mount folders in Linux guest

If you get an error message similar to "Failed to mount folders in Linux guest" then run this command on the host: 

`vagrant plugin install vagrant-vbguest`

# Docker

## Basic docker and docker-compose commands

* `docker ps -a` - List all containers.
* `docker start <containername>` - Start the named container.
* `docker stop <containername>` - Stop the named container.
* `docker rm <containername>` - Delete the named container.
* `docker commit <containername> <newname>` - Commit a container to a new image.
* `docker run <image>` - Run a command in a new container using the given image.  
* `docker exec -it <containername> /bin/bash` - Start an interactive bash session on the container.
* `docker stats $(docker ps -q)` - Monitor status of running containers. 
* `docker-compose logs` - To see all the logs for the project.
* `docker-compose restart <containername>` - To quickly redeploy changes.
* `docker volume ls` - List local volumes.
* `docker volume create --name=<volumename>` - Create a new volume.
* `docker volume inspect <volumename>` - Inspect the given volume.
* `docker volume rm <volumename>` - Delete the given volume.

## Useful docker images 

Use `docker pull <imagename>`

* centos:7
* centos:6
* mongo
* nginx
* redis
