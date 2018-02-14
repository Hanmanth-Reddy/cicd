### Testing role 'jpnewman.elk-filebeats' template

~~~
mkdir tmp

ansible-playbook ./test_template.yml -i "127.0.0.1," -c local -vvv
~~~

#### With test data

~~~
ansible-playbook ./test_template.yml -i "127.0.0.1," -c local --extra-vars "varfile=./defaults/with_plugins.yml gerritconfig=./tmp/gerrit_with_plugins.conf" -vvv
~~~
