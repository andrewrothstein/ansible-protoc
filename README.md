andrewrothstein.protoc
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-protoc.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-protoc)

Installs [protoc](https://developers.google.com/protocol-buffers/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.protoc
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
