​
2
Mounts the NSF share and outputs the result at the end of the deployment nfss and nfsc
3
==============
4
## Descriptions
5
This vagrant creates a vm, installs installs nfs server and client version 3 and mounts with udp protocol installs nfs server and client version 3 and mounts with udp protocol. Create and boot virtual box.
6
​
7
## Setup and run
8
* **Step 1**: Using Command Terminal, download and install: ```git clone https://github.com/rxsd20/less5-nfs.git```
9
​
10
* **Step 2**: Go to the directory with command: ```cd less5-nfs```
11
​
12
* **Step 3**: Run the command: ```vagrant up```
13
​
14
* **Step 4**: Go in VM command: ```vagrant ssh nfsc```
15
​
16
* **Step 5**: Enter command: ```df -h```
17
​
18
* **Step 6**: Exit VM: ```exit```
19
​
20
​
21
## Vagrant Commands
22
* **Start VM**: ```vagrant up```
23
* **Hibernate VM**: ```vagrant suspend```
24
* **Restart VM**: ```vagrant reload```
25
* **Destroy VM**: ```vagrant destroy```
​
28
#### SSH Info
29
* User: vagrant
30
* Password: vagrant
31
