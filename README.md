Vagrant Ada Demo
================

Usage
-----

### Requirements

1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](http://vagrantup.com/)

If you're not running Windows or OS X, add vagrant to your path in your
`~/.bashrc`:

```bash
PATH="/opt/vagrant/bin:$PATH"
```

### First use (requires Ruby, 1.9.3 is prefered)

1. Clone this repository
2. Run this :

```bash
cd <your clone>
./script/bootstrap
```

### Instructions for Ubuntu 12.04

Install Ruby and its dependencies:

```bash
sudo aptitude install libxml2-dev libxslt-dev ruby1.9.1-full
```

#### Start the server

```bash
vagrant up dev
```

### Develop

The application is accessible locally in `./app`.


#### Suspend/resume the VM

```bash
vagrant suspend dev
vagrant resume dev
```

#### Kill the VM (when you're done with it)

```bash
vagrant destroy dev
```

#### Access VM through ssh

```bash
vagrant ssh dev
```

Once on the VM, you can start GPS:

```bash
gnat-gps &
```

### Package a new box

#### Start the server

```bash
vagrant up package
```

#### Package the box

```bash
vagrant package --vagrantfile Vagrantfile --output ada_demo.box
```

#### Add the box to your system

```bash
vagrant box add ada_demo ada_demo.box
```
