# jpnewman.gerrit

[![Ansible Role](https://img.shields.io/ansible/role/11259.svg?maxAge=2592000)](https://galaxy.ansible.com/jpnewman/gerrit/)
[![Build Status](https://travis-ci.org/jpnewman/ansible-role-gerrit.svg?branch=master)](https://travis-ci.org/jpnewman/ansible-role-gerrit)

This is a Ansible role to install Gerrit with the following: -

- gitweb
- jeepyb

## Requirements

Ansible 2.x

## Libraries

- retr0h.logrotate

> Update your ```ansible.cfg``` file to include libraries.
>
> **e.g.**
>
> ~~~
> library = ../../roles
> ~~~

## Role Variables

|Variable|Description|Default|
|---|---|:--|
|```gerrit_version```|Gerrit Version||
|```gerrit_url```|Gerrit Download URL||
|```gerrit_version```||2.11.9|
|```gerrit_url```||```https://www.gerritcodereview.com/download/gerrit-{{ gerrit_version }}.war```|
|```gerrit_user```||gerrit|
|```gerrit_group```||gerrit|
|```gerrit_user_home```||/var/gerrit|
|```gerrit_dir```||```"{{ gerrit_user_home }}/review"```|
|```gerrit_config```|```gerrit_config``` Object||
|```gerrit_database_type```||MYSQL|
|```gerrit_database_mysql```|```gerrit_database_mysql``` Object||
|```gerrit_index_type```||LUCENE|
|```gerrit_auth_type```||HTTP|
|```gerrit_container```|```gerrit_container``` Object||
|```gerrit_sshd```|```gerrit_sshd``` Object||
|```gerrit_httpd```|```gerrit_httpd``` Object||
|```gerrit_cache```|```gerrit_cache``` Object||
|```gerrit_receive```|```gerrit_receive``` Object||
|```gerrit_plugins```|```gerrit_plugins``` Object||
|```gerrit_readonly_mode```||no|
|```gerrit_site_logo```||logo.png|
|```gerrit_site_logo_alt```||logo|
|```gerrit_site_header```||Code Review|
|```gerrit_site_css_file```||GerritSite.css|

## Objects

|```gerrit_config``` Object|Description|Default|
|--:|---|:--|
|```basePath```||git|
|```canonicalWebUrl```||```http://localhost```|

|```gerrit_database_mysql``` Object|Description|Default|
|--:|---|:--|
|hostname||localhost|
|database||gerrit|
|username||gerrit|
|password||gerrit|
|url||```"jdbc:mysql://localhost:3306/gerrit?user=gerrit&password=gerrit&useUnicode=false&characterEncoding=latin1"```||

|```gerrit_container``` Object|Description|Default|
|--:|---|:--|
|heapLimit||4g
|javaOptions||```-server -XX:+PrintGCDetails -XX:MaxPermSize=256M -Xloggc:/var/gerrit/review/logs/gc.log -Djavax.net.ssl.trustStore=/var/gerrit/review/etc/cacerts -Djavax.net.ssl.trustStorePassword=changeit```
|user||gerrit|

|```gerrit_sshd``` Object|Description|Default|
|--:|---|:--|
|listenAddress||"*:29418"|
|threads||32|

|```gerrit_httpd``` Object|Description|Default|
|--:|---|:--|
|listenUrl||```proxy-https://127.0.0.1:8080/```|

|```gerrit_cache``` Object|Description|Default|
|--:|---|:--|
|directory||cache|

|```gerrit_receive``` Object|Description|Default|
|--:|---|:--|
|checkReferencedObjectsAreReachable||false|

|```gerrit_plugins``` Object|Description|Default|
|--:|---|:--|
|allowRemoteAdmin||true|


|Bouncy Castle|Description|Default|
|---|---|:--|
|```gerrit_bouncycastle_jars```||[```http://repo2.maven.org/maven2/org/bouncycastle/bcprov-jdk15on/1.52/bcprov-jdk15on-1.52.jar```,<br />```http://repo2.maven.org/maven2/org/bouncycastle/bcpkix-jdk15on/1.52/bcpkix-jdk15on-1.52.jar```]|

> https://code.google.com/p/gerrit/issues/detail?id=4056

|Plugins|Description|Default|
|---|---|:--|
|```gerrit_war_plugins```||[]|
|```gerrit_plugins_folder```||plugins|

|Jeepyb|Description|Default|
|---|---|:--|
|```gerrit_install_jeepyb```||true|
|```gerrit_jeepyb_run_user```||gerrit|
|```gerrit_jeepyb_github_repo```||```https://github.com/openstack-infra/jeepyb.git```|
|```gerrit_jeepyb_github_version```||master|
|```gerrit_jeepyb_path```||/opt/jeepyb|
|```gerrit_jeepyb_log_folder```||/var/log/gerrit|
|```gerrit_jeepyb_expire_old_reviews_log_file```||```expire_reviews.log```|
|```gerrit_jeepyb_virtualenv_path```||```"{{ gerrit_jeepyb_path }}/venv"```|
|```gerrit_jeepyb_virtualenv_version```||python2.7|

## Dependencies

- jpnewman.java
- jpnewman.apache
- retr0h.logrotate

## Example Playbook

    - hosts: servers
      roles:
         - { role: jpnewman.gerrit, tags: ["gerrit"] }

## Testing

For more information on testing the template review readme ```./tests/templates/README.md```

## License

MIT / BSD

## Author Information

John Paul Newman
