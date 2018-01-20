Ansible Role: Jenkins
=========

Installs jenkins.

Requirements
------------

None.

Role Variables
--------------

See `defaults/main.yml`

Dependencies
------------

- shomatan.java

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: shomatan.jenkins }

License
-------

MIT

Author Information
------------------