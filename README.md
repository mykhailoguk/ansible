# ansible
Files from ansible course
To work with VMs we need to setup ssh connection. Firtsly, create id_rsa.pub key on the control server, then copy ssh fingerprint to all authentification_hosts file.
Please be sure that /usr/bin/python is installed or use ansible_python_interpreter=/usr/bin/python3 in inventory file.

grep -rnw '/etc/ansible' -e '192.168.60.4' -  grep recursivly directory for text pattern "192.168.60.4"

Inventory:
ansible --list-hosts all
ansible -i dev --list-hosts all
ansible -i dev --list-hosts webserver,control - 
ansible -i dev --list-hosts \!control - all except control

Tasks:
ansible -i dev -m ping all
ansible -i dev -m command -a "hostname" all

Plays:
ansible-playbook -i dev playbooks/hostname.yml
