ansible-jenkins
=========

[![Build Status](https://travis-ci.org/kei-yamazaki/ansible-jenkins.svg?branch=master)](https://travis-ci.org/kei-yamazaki/ansible-jenkins)
[![Circle CI](https://circleci.com/gh/kei-yamazaki/ansible-jenkins.svg?style=svg)](https://circleci.com/gh/kei-yamazaki/ansible-jenkins)

Installs Jenkins CI on Ubuntu servers.

Requirements
------------

None.

Role Variables
--------------

None.

Dependencies
------------

- smola.java

Example Playbook
----------------

NA

Tests
----------------

Install gems.
```
$ bundle install
```

When using Mac, start up boot2docker.
Others, set $DOCKER_HOST environment.
```
$ boot2docker up
$ eval "$(boot2docker shellinit)"
```

Run kitchen test.
```
$ bundle exec kitchen test -p
```

License
-------

BSD

Author Information
------------------

Kei YAMAZAKI
