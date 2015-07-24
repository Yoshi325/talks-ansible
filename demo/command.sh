#!/bin/bash

ansible-playbook                     \
    playbook.yml                     \
    --inventory-file ./inventory.ini \
    --limit Test-Hosts               \
    --ask-pass                       \
    --ask-sudo-pass                  \
;
