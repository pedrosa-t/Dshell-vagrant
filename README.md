# Dshell-vagrant
***
## Information
This project creates a Ubuntu Trusty 32bits virtual machine on VirtualBox, install dependecies and compiles [Dshell][dshell]

## Dependencies
This project requires having [VirtualBox][vb] and [Vagrant][vg] installed.

## How to use it

Create the machine:

* Clone this project
* Go to the directory of the project and run command:

        vagrant up

* Use the following command to connect to the machine.

        vagrant ssh

Use it:

* You can share the files from the host machine to the virtual machine by using the directory *data/* on the host machine and access them on the */vagrant_data* directory on the virtual machine.
* Dsheel is installed on /opt/Dshell. To execute it, you need to be inside the guest machine and need to run:

        /opt/Dshell/dshell

Good analysis.


## Links
[dshell]: https://github.com/USArmyResearchLab/Dshell "Dshell - Github"
[vb]: https://www.virtualbox.org/wiki/Downloads "VirtualBox"
[vg]: http://www.vagrantup.com/downloads.html  "Vagrant"
