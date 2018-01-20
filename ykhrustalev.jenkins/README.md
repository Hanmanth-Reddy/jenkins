Role Name
=========

Install jenkins

Requirements
------------

* java 

Role Variables
--------------
    
    jenkins_app_bind_host: 127.0.0.1
    jenkins_app_bind_port: 8080
    jenkins_java_args: -Xmx256m

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: ykhrustalev.jenkins, jenkins_java_args: -Xmx2G, jenkins_app_bind_port:8888 }

License
-------

MIT

Author Information
------------------

Yuri Khrustalev
