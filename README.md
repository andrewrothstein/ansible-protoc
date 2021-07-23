andrewrothstein.protoc
=========
![Build Status](https://github.com/andrewrothstein/ansible-protoc/actions/workflows/build.yml/badge.svg)

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
