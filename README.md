# vagrant-packer-centos
Vagrant Boxes - Packer template for CentOS 7.2 x86_64

This box isn't tested yet. Available on: [atlas](https://atlas.hashicorp.com/pflorek/boxes/CentOS-7.2-x86_64/)

Use this in your Vagrantfile:

```ruby
  config.vm.box = "pflorek/CentOS-7.2-x86_64"
```

Build box:

```bash
  packer build centos-7.2-x86_64.json
```

