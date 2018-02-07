# ansible-gogs

ansible-playbook -i ~/ansible.cfg -s -u ubuntu ~/main.yml --private-key ~/.ssh/ans-gogs


# playbook for Gogs
- hosts: all

  sudo: yes

  tasks:
 
     # populate ansible.cfg

    - local_action: command  /home/mohan/Desktop/ansible-gogs/writehosts.sh
                
    - include: user.yml

    - include: nginx.yml

    - include: dependencies.yml

    - include: db.yml

    - include: app.yml

