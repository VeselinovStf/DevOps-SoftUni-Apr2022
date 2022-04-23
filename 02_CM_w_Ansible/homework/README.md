# HOW TO

## Environment

- vagrant up
- vagrant ssh ansible

- cd /vagrant/homework/

## Ansible SSH

- mkdir .ssh
- ssh-keygen -q -f .ssh/id_rsa -N '' -t rsa -m PEM
- ssh-copy-id -i .ssh/id_rsa.pub vagrant@192.168.150.101
- ssh-copy-id -i .ssh/id_rsa.pub vagrant@192.168.150.102
- ssh-copy-id -i .ssh/id_rsa.pub vagrant@192.168.150.103

## Task 1

- cd 01_assignment/
- ansible-playbook -i inventory playbook.yml

- http://localhost:8080

## Task 2

- cd ..

- cd 02_assignment/
- ansible-playbook -i hosts playbook.yml

- http://localhost:8081/web