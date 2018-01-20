Ansible Role: jenkins
=========

[![Build Status](https://travis-ci.org/medzin/ansible-jenkins.svg?branch=master)](https://travis-ci.org/medzin/ansible-jenkins)

Installs Jenkins for RedHat/CentOS and Debian/Ubuntu machines.

Requirements
------------

None.

Role Variables
--------------

To use role you don't need to specify any variables. If you want, you can customize the port on which jenkins will run by setting jenkins_config_port variable. By default jenkins will run on port 8080.

Dependencies
------------

Role depends on the [medzin.oracle-jdk](https://galaxy.ansible.com/medzin/oracle-jdk/) role, which installs Oracle JDK in the system.

Example Playbook
----------------

    - hosts: servers
      vars:
        jenkins_config_port: 8081
      roles:
        - role: medzin.jenkins

License
-------

MIT License
