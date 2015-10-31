VAGRANT - DOCKER - NSCALE
================================

## Requirements

- Operating System: Windows, Linux, or OSX.
- [Virtualbox][1]
- [Vagrant][2]

## Setup

```
git clone https://github.com/orxan07/vagrant.git
cd vagrant
vagrant up
vagrant ssh
```

### GitHub

```
Run 'vagrant ssh' then set your git config manually, e.g.:
    $ git config --global user.name "your name"
    $ git config --global user.email "your email"
    $ ssh-keygen -t rsa -b 4096 -C "your email"
    $ cat ~/.ssh/id_rsa.pub
(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: https://github.com/settings/ssh)


```

### Verifying GitHub access

```
To verify that SSH agent forwarding was setup successfully, ssh into the virtual machine and run the following command:

    $ ssh -T git@github.com

If the output is

> Hi <user name>! You've successfully authenticated, but GitHub does not provide shell access.

everything is fine. If not, please consider the documentation for SSH.

```

### Docker

```
Ssh into the virtual machine and run the following command:
    $ sudo usermod -G docker -a `whoami`
    $ exit
    $ vagrant ssh
Run: 
    $ groups
If the output is 
    > vagrant docker
everything is fine. Done!

```

### Nscale

```
(Requirements: succesfully finishing 'Docker' & 'GitHub' parts)

Ssh into the virtual machine and run the following command:
    $source /vagrant/init
```
go to  = > http://192.168.50.4/


### Double GitHub accounts

```
(Requirements: succesfully finishing 'Nscale' part)

I’ll assume here you already have keys and their public parts and they are both registered on your github accounts. We need have precisely the following in our ~/.ssh folder 

  config
  id_rsa
  id_rsa.pub
  id_rsa_eu
  id_rsa_eu.pub

where id_rsa key pairs are yours account keys and second one for second user

If you have such a structure you can easily switch between the users by means of the commands:

    $ my-git
    $ eu-git

```


[1]: https://www.virtualbox.org
[2]: http://vagrantup.com/

