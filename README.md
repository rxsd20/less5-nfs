Mounts the NSF share and outputs the result at the end of the deployment nfss and nfsc
==============
## Descriptions
This vagrant creates a vm, installs installs nfs server and client version 3 and mounts with udp protocol installs nfs server and client version 3 and mounts with udp protocol. Create and boot virtual box.
## Setup and run
* **Step 1**: Using Command Terminal, download and install: ```git clone https://github.com/rxsd20/less5-nfs.git```
* **Step 2**: Go to the directory with command: ```cd less5-nfs```
* **Step 3**: Run the command: ```vagrant up```
* **Step 4**: Go in VM command: ```vagrant ssh nfsc```
* **Step 5**: Enter command: ```df -h```
* **Step 6**: Exit VM: ```exit```
## Vagrant Commands
* **Start VM**: ```vagrant up```
* **Hibernate VM**: ```vagrant suspend```
* **Restart VM**: ```vagrant reload```
* **Destroy VM**: ```vagrant destroy```
#### SSH Info
* User: vagrant
* Password: vagrant
