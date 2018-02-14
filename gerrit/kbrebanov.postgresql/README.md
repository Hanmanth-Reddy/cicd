postgresql
==========

[![Build Status](https://travis-ci.org/kbrebanov/ansible-postgresql.svg?branch=master)](https://travis-ci.org/kbrebanov/ansible-postgresql)

Installs PostgreSQL

Requirements
------------

This role requires Ansible 1.9 or higher.

Role Variables
--------------

| Name               | Default | Description                      |
|:-------------------|:--------|:---------------------------------|
| postgresql_version | 9.5     | Version of PostgreSQL to install |

Dependencies
------------

None

Example Playbook
----------------

Install PostgreSQL
```yaml
- hosts: all
  roles:
    - kbrebanov.postgresql
```

License
-------

BSD

Author Information
------------------

Kevin Brebanov
