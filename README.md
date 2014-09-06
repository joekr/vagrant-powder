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

You can also manually run
``` bash
vagrant powder-down
```
