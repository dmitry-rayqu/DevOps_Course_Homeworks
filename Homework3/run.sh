#!/usr/bin/env bash

ansible-playbook playbook_nginx.yml -i inventory.yml --diff
curl http://18.130.123.200
