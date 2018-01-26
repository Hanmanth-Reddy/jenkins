
ansible-role-jenkins
=========

An ansible role to install jenkins. You can install and configure specified version of jenkins as well as install jenkins plugins.

Variables
---------
Currently this role supports only CentOS6.
Here is the list of available variables and its default value for CentOS6:

#### Required

```
jenkins_repo_url: http://pkg.jenkins-ci.org/redhat/jenkins.repo
jenkins_package_key: https://jenkins-ci.org/redhat/jenkins-ci.org.key
```
The URL for jenkins repo file and key. This role installs jenkins from the repository that is specified in the repo file by default.

```
jenkins_java_pkg_name: java-1.8.0-openjdk
```
The package name of Java. This role installs Java package as dependency.


#### Not required

```
jenkins_package_url: https://pkg.jenkins.io/redhat
jenkins_version: 2.9-1.1
```
By default, this role downloads the jenkins package version 2.9-1.1 from `https://pkg.jenkins.io/redhat`. If the jenkins package that you want to install is not listed on the default site, override the package url and the version with your own set.

```
jenkins_config_file: /etc/sysconfig/jenkins
```
The full path of jenkins config file. The contents will be modified if you set other variables listed below.

```
jenkins_home: /var/lib/jenkins
```
The full path of home directory for jenkins user. By default `/var/lib/jenkins` is used.

```
jenkins_port: 8080
```
The HTTP port for jenkins web interface.

```
jenkins_java_options: "-Djenkins.install.runSetupWizard=false"
```
Other java options can be set with `jenkins_java_options`. This value is passed to java command when starting jenkins service. By default an option in order to diable setup wizard is listed.

```
jenkins_plugins: []
```
You can specify the jenkins plugins that you want to install. By default empty array is set. It means no plugin is installed.


Example Playbook
----------------

    - hosts: servers
      vars:
        jenkins_repo_url: http://pkg.jenkins-ci.org/redhat/jenkins.repo
        jenkins_package_key: https://jenkins-ci.org/redhat/jenkins-ci.org.key
        jenkins_java_pkg_name: 2.9-1.1
      roles:
         - akry.jenkins

License
-------

MIT

Author Information
------------------

Created by [akry](https://github.com/akry).
