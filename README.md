VAGRANT
================================

## Requirements

- Operating System: Windows, Linux, or OSX.
- [Virtualbox][1]
- [Vagrant][2]

## Setup

```
git clone git@github.com:orxan07/vagrant.git
cd vagrant
vagrant up
vagrant ssh
```

### GitHub

```
Run 'vagrant ssh' then set your git config manually, e.g.:
ssh-keygen -t rsa
(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: [SSH settings][3])
git config --global user.name '<your name>'
git config --global user.email <your email>

```

### Verifying GitHub access

```
To verify that SSH agent forwarding was setup successfully, ssh into the virtual machine and run the following command:

    $ ssh -T git@github.com

If the output is

> Hi &lt;username&gt;! You've successfully authenticated, but GitHub does not provide shell access.

everything is fine. If not, please consider the documentation for SSH.

```

### Docker

```
Ssh into the virtual machine and run the following command:
    $sudo usermod -G docker -a `whoami`
    $exit
    $vagrant ssh
Run: 
    $groups
If the output is 
    > vagrant docker
everything is fine. Done!

```

[1]: https://www.virtualbox.org
[2]: http://vagrantup.com/
[3]: https://github.com/settings/ssh

