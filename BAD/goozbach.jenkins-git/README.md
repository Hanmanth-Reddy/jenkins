Jenkins Git Role
========

Builds on `goozbach.jenkins` to enable git support including github and others.

Requirements
------------

This role uses `git` but installs it as one of the first tasks.
In the future there may be need for modules which are needed for the GitHub API.

Role Variables
--------------

* `jenkins_git_plugins` -- List of Jenkins plugins to install. (Default `[git.hpi, git-client.hpi, github-api.hpi, github.hpi, github-oauth.hpi, scm-api.hpi]`

Dependencies
------------

This role depends on `goozbach.jenkins` which in turn depends on `goozbach.EPEL`. 
The role `goozbach.EPEL` does not yet support EL5. 

The handler `reload jenkins` comes from the role `goozbach.jenkins`.

License
-------

GPLv2

Author Information
------------------

Derek Carter <derek@goozbach.com>
Goozbach Infrastructure Solutions LLC http://goozbach.com
