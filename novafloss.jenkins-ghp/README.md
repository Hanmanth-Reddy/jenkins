jenkins-ghp
===========

Deploy [jenkins-ghp](https://github.com/novafloss/jenkins-ghp).


Requirements
------------

pip and systemd.


Warning :bangbang:
------------------

**Installing GHP will breaks pip version 1.5!** This is due to API break in
requests. Please upgrade pip carefully before running this role. Use
[FGtatsuro.python-requirements](https://galaxy.ansible.com/FGtatsuro/python-requirements/)
to upgrade pip with ansible.


Role Variables
--------------

    jenkins_ghp_envvars:
      GHP_REPOSITORIES: owner/repository1 owner/repository2
    jenkins_ghp_username: jenkins
    jenkins_ghp_workdir: /var/lib/jenkins/ghp


Dependencies
------------

None :)


Example Playbook
----------------

You can deploy jenkins-ghp either on Jenkins master host or on a dedicated
host.

    - hosts: jenkins-master
      roles:
         - FGtatsuro.python-requirements
         - role: novafloss.jenkins-ghp
           jenkins_ghp_vars:
             GHP_JOBS_CREDENTIALS: github-clone-token
             GHP_REPOSITORIES: mycompany/repository1 mycompany/repository2
             GITHUB_TOKEN: deadc0ffee00deadbeef00..
             JENKINS_URL: https://jenkins.mycompany.com


License
-------

BSD


Author Information
------------------

Étienne BERSAC <@bersace>, @PeopleDoc.
