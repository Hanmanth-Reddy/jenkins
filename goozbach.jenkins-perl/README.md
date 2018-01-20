Jenkins Perl Support
====================

Manage Perl plugins/config for Jenkins

Requirements
------------

This role will install various `perl` packages needed for building/testing Perl code including:

- `perl`
- `perl-ExtUtils-MakeMaker`
- `perl-Pod-Coverage`
- `perl-Perl-Critic`
- `perl-Test-Simple`
- `perl-Test-Perl-Critic`
- `perl-Test-Pod-Coverage`
- `perl-Test-Pod`
- `perl-TAP-Harness-Archive`

Role Variables
--------------

* `jenkins_perl_plugins` -- List of Jenkins plugins to download. (Default `tap.hpi`)

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
