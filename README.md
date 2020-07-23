## vagrant

---

#### vfile
https://www.vagrantup.com/docs/index.html

### box
https://app.vagrantup.com/boxes/search

#### plugin
#### sahara
https://github.com/jedi4ever/sahara

### chef/bento
https://github.com/chef/bento

###### vagrabtbox,es
http://www.vagrantbox.es/

```
mkdir dev1
cd dev1
vi VagrantFile
```
```
# https://github.com/rails/rails-dev-box/blob/master/Vagrantfile

# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box      = 'ubuntu/focal64' # 20.04
  config.vm.hostname = 'rails-dev-box'

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: 'bootstrap.sh', keep_color: true

  config.vm.provider 'virtualbox' do |v|
    v.memory = ENV.fetch('RAILS_DEV_BOX_RAM', 2048).to_i
    v.cpus   = ENV.fetch('RAILS_DEV_BOX_CPUS', 2).to_i
  end
end

```
```
vagrant box add CentOS7 https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box
vagrant up
vagrant ssh



```


####

###
###

```
vfile0

```

#### Varying-Vagrant-Vagrants
https://github.com/Varying-Vagrant-Vagrants


```
mkdir dev
cd dev
vagrant -v
vagrant init bento/centos7
vi vagrantfile
# 192.168.33.19
vagrant up
vagrant box list
vagrant ssh


```

```
```
