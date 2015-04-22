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
6. (Optional) If your computer has less than 4 cores, less than 4 GB of RAM, or does not have an S: drive, edit lines 53, 52, and 41 of Vagrantfile respectively
7. Run the following commands:

    ```
    cd C:/git/dev-env
    vagrant up
    ```
8. (Optional) If provisioner returns with non-zero exit status, try reloading with provision tag:

    ```
    vagrant reload --provision
    ```
9. SSH into your new linux development box:

    ```
    vagrant ssh
    ```
10. (Optional) Download and install an editor with a GUI (I like Komodo Edit - http://komodoide.com/komodo-edit/)
11. (Optional) Download and install github GUI - https://windows.github.com/
12. (Optional) Download R for windows (http://cran.r-project.org/bin/windows/base/) and the R editor RStudio (http://www.rstudio.com/)
13. To halt development box:

    ```
    exit
    vagrant halt
    ```
14. To start once built development box:

    ```
    cd C:/git/dev-env
    vagrant up & vagrant ssh
    ```


##Features

1. git

    ```
    git status
    ```
2. NodeJS and npm

    ```
    node script.js
    npm install package
    ```
3. R statistical software

    ```
    R
    ```
4. Python, Python-dev, Virtualenv

    ```
    python script.py
    pip install module
    ```
5. Python stats package (Numpy, pandas)

    ```
    #!/usr/bin/env python
    import numpy
    import pyPdf
    import scraperwiki
    import pandas
    ```
6. Poppler

    ```
    pdftohtml test.pdf -xml test.xml
    ```
7. OSGEO in Python

    ```
    #!/usr/bin/env python
    from osgeo import gdal
    ```
8. GDAL scripts

    ```
    gdal_grid...
    ```
9. Drive mapping
    - C:/git => /git
    - C:/git/dev-env => /vagrant
    - S:/ => /s
