# vagrant-multimachine-web-mysl
Demo repository with multi machine "web01", "web02" and "mysql" in a single Vagrantfile.

Based on base box from : https://github.com/Galser/packer-ubuntu


# Prerequisites

1. To download the content of this repository you will need **git command-line tools**(recommended) or **Git UI Client**. To install official command-line Git tools please [find here instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for various operation systems. 
2. This box for virtualization uses **VirtualBox**, download the binaries for your [platform here](https://www.virtualbox.org/wiki/Downloads) and then follow [instructions for installation](https://www.virtualbox.org/manual/ch02.html)
3. For managing of VM (virtual machines), we are going to use **Vagrant**. To install **Vagrant** , please follow instructions here : [official Vargant installation manual](https://www.vagrantup.com/docs/installation/)


# How to use

- Download copy of the code (*clone* in Git terminology) - go to the location of your choice (normally some place in home folder) and run in terminal; in case you are using alternative Git Client - please follow appropriate instruction for it and download(*clone*) [this repo](https://github.com/Galser/vagrant-multimachine-web-mysql.git). 
```
git clone https://github.com/Galser/vagrant-multimachine-web-mysql.git
```

- Previous step should create the folder that contains a copy of the repository. Default name is going to be the same as the name of repository e.g. `vagrant-multimachine-web-mysql`. Locate and open it.
 ```
 cd vagrant-multimachine-web-mysql
 ```
- To create and provision virtual machines with Vagrant - execute from command line :
 ```
 vagrant up
 ```
 > This will utilize settings from [Vagrantfile](Vagrantfile) prepared in this repo
 
 First-time start can take some time, as Vagrant need to download and import box image, then you should see : 
 ```
 Bringing machine 'mysql' up with 'virtualbox' provider...
 Bringing machine 'web01' up with 'virtualbox' provider...
 Bringing machine 'web02' up with 'virtualbox' provider...
 ==> mysql: Importing base box 'galser/ubuntu-1804-vbox'...
 ==> mysql: Matching MAC address for NAT networking...
 ```
 
- At this point all 3 VMs already up and running, so you can use SSH client to connect to it. For example for Linux and MacOS, to connect to the only mysql server - execute from command-line : 
 ```
 vagrant ssh mysql
 ```

 You should see Basic Ubuntu greeting something like this : 
 ```
 Welcome to Ubuntu 18.04.3 LTS (GNU/Linux 4.15.0-55-generic x86_64) 

  * Documentation:  https://help.ubuntu.com
  * Management:     https://landscape.canonical.com
  * Support:        https://ubuntu.com/advantage
 ```
 Let's check that we indeed on the correct machine, execute : 
 ```
  vagrant@mysql:~$ hostname
  mysql 
 ```
- Let's check status of all machines in stack, but first - you should exit the current SSH session. Run : 
 ```
 exit
 ```
- Now, to check status of all machines - run from command line : 
 ```
 vagrant status
 ```
 And the output should be : 
 ```
  Current machine states:

  mysql                     running (virtualbox)
  web01                     running (virtualbox)
  web02                     running (virtualbox) 
   
  This environment represents multiple VMs. The VMs are all listed
  above with their current state. For more information about a specific
  VM, run `vagrant status NAME`.
 ```
 As you can see - all 3 machines are up and running.

- Now - to completely destroy above-listed VMs and free up all your system resource (CPU, memory), without need to acknowledge everyt host  - execute from command line :
> WARNING : This will destroy all VMs in stack defined by Vagrantfile without asking any further questions, proceed with caution
 ```
 vagrant destroy -f    
 ``` 

 Output going to be :
 ```
 ==> web02: Forcing shutdown of VM...
 ==> web02: Destroying VM and associated drives...
 ==> web01: Forcing shutdown of VM...
 ==> web01: Destroying VM and associated drives...
 ==> mysql: Forcing shutdown of VM...
 ==> mysql: Destroying VM and associated drives...
 ```
 
 That ends up instructions block, thank you. 


# TODO



# DONE
- [x] create initial README
- [x] create Vagrant file to deploy 3 machines
- [x] update instructions
