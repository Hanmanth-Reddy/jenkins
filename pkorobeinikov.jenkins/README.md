[![Build Status](https://travis-ci.org/pkorobeinikov/ansible-role-jenkins.svg?branch=master)](https://travis-ci.org/pkorobeinikov/ansible-role-jenkins)

pkorobeinikov.jenkins
=====================

Jenkins installation.

Requirements
------------

None.

Role Variables
--------------

* `jenkins_hostname` is a default jenkins hostname.
* `jenkins_http_port` is a default jenkins port.
* `jenkins_cli_path` is a path for `jenkins-cli.jar`.
* `jenkins_plugins` is a list of required plugins.

Dependencies
------------

* `pkorobeinikov.java`

Example Playbook
----------------

    - hosts: servers
      roles:
        - role: ansible-role-jenkins
          jenkins_hostname: localhost
          jenkins_http_port: 8080
          jenkins_cli_path: /opt/jenkins-cli.jar
          jenkins_plugins:
            - git
            - checkstyle
            - crap4j
            - jdepend
            - pmd
            - violations
            - warnings
            - xunit

License
-------

BSD, MIT
