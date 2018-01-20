jenkins-epo
===========

Deploy [jenkins-epo](https://github.com/novafloss/jenkins-epo).


Requirements
------------

python3, pip and systemd.


Warning :bangbang:
------------------

**Installing EPO will breaks pip version 1.5!** This is due to API break in
requests. Please upgrade pip carefully before running this role. Use
[FGtatsuro.python-requirements](https://galaxy.ansible.com/FGtatsuro/python-requirements/)
to upgrade pip with ansible.


Role Variables
--------------

    jenkins_epo_envvars:
      REPOSITORIES: owner/repository1 owner/repository2
    jenkins_epo_username: jenkins
    jenkins_epo_workdir: /var/lib/jenkins/epo


Dependencies
------------

None :)


Example Playbook
----------------

You can deploy jenkins-epo either on Jenkins master host or on a dedicated
host.

    - hosts: jenkins-master
      roles:
         - FGtatsuro.python-requirements
         - role: novafloss.jenkins-epo
           jenkins_epo_vars:
             JOBS_CREDENTIALS: github-clone-token
             REPOSITORIES: mycompany/repository1 mycompany/repository2
             GITHUB_TOKEN: deadc0ffee00deadbeef00..
             JENKINS_URL: https://jenkins.mycompany.com


License
-------

BSD


Author Information
------------------

Étienne BERSAC <@bersace>.
