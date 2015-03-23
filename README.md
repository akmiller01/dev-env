# dev-env
==========
Development Environment Repo

##Installation

1. Download and install Git - http://git-scm.com/ (Select the option to add git to your PATH to use it through the command prompt)
2. Add git's bin directory to your PATH variable (On windows, this is probably "C:\Program Files (x86)\Git\bin") - http://windowsitpro.com/systems-management/how-can-i-add-new-folder-my-system-path
3. Download and install VirtualBox - https://www.virtualbox.org/
4. Download and install Vagrant - https://www.vagrantup.com/
5. Clone this repository into "C:/git/dev-env"
```
C:
cd /
mkdir git
cd git
git clone https://github.com/akmiller01/dev-env.git
```
6. (Optional) If your computer has less than 4 cores or less than 4 GB of RAM, edit lines 51-52 of Vagrantfile
7. Run the following commands:
```
cd C:/git/dev-env
vagrant up
vagrant ssh
```
8. Enjoy your development environment
9. (Optional) Download and install an editor with a GUI (I like Komodo Edit - http://komodoide.com/komodo-edit/)
10. (Optional) Download and install github GUI - https://windows.github.com/
11. (Optional) Download R for windows (http://cran.r-project.org/bin/windows/base/) and the R editor RStudio (http://www.rstudio.com/)

##To-do

1. GDAL-OGR