Vagrant Ada Demo
================

Usage
-----

### Requirements

1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](http://vagrantup.com/)

If you're not running Windows or OS X, add vagrant to your path in your
`~/.bashrc`:

    PATH="/opt/vagrant/bin:$PATH"

### First use (requires Ruby, 1.9.3 is prefered)

1. Clone this repository
2. Run this :

    cd <your clone>
    ./script/bootstrap

### Instructions for Ubuntu 12.04

Install Ruby and its dependencies:

    sudo aptitude install libxml2-dev libxslt-dev ruby1.9.1-full

#### Start the server

    vagrant up dev

### Develop

The application is accessible locally in `./app`.


#### Suspend/resume the VM

    vagrant suspend dev
    vagrant resume dev

#### Kill the VM (when you're done with it)

    vagrant destroy dev

#### Access VM through ssh

    vagrant ssh dev

Once on the VM, you can start GPS:

    gnat-gps&
