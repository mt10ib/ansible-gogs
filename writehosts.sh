#!/bin/bash
pubip=$(sed -n '1p' /opt/terraform/pupip.txt)
touch /home/mohan/Desktop/ansible-gogs/ansible.cfg
cp /dev/null /home/mohan/Desktop/ansible-gogs/ansible.cfg
echo "[testservers]" >> /home/mohan/Desktop/ansible-gogs/ansible.cfg
echo "$pubip ansible_host=$pubip" >> /home/mohan/Desktop/ansible-gogs/ansible.cfg
