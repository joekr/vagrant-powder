# VagrantPowder

A [Vagrant](http://www.vagrantup.com/) plugin to help with
[POW](http://pow.cx/) using the
[Powder Gem](https://github.com/Rodreegez/powder).

## Requirements

* Vagrant version 1.2.0 or greater.
* OSX
* [pow](http://pow.cx/)

## Installation

``` bash
vagrant plugin install vagrant-powder
```

## Usage

Vagrant will automatically run `powder down`
after any `vagrant up` step.

### Vagrantfile

In the Vagrantfile you can set the following config params

#### Enabled

Default is false. This way if you have the plugin installed but the project
doesn't use pow it doesn't slow down up and halt.

```
config.powder.enabled = true
```

#### link_name

Allows you to set a different name for pow to link to. Default is the current
directory name. This way if your directory is my_project you can redefine it:

```
config.powder.link_name = "my_project"
```

You can also manually run
``` bash
vagrant powder-down
```
