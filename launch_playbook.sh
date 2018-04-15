#!/bin/bash

#Install the roles from galaxy
ansible-galaxy install --roles-path ./roles --force --role-file ovh-requirements.yml

#launch the global playbook
ansible-playbook -i ovh-inventory common-roles-playbook.yml --user=sysadmin --become --ask-pass --ask-become-pass
