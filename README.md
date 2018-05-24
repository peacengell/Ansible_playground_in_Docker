## Ansible_playground_in_Docker
## This repos is for an ansible docker playground.
A docker images contain ansible install, where you can play with ansible inside the container without messing your computer.

# It is based on centos 7.

# Consits of ansible and sshd deamon so you can play in the docker itself with a mounted volume where you can edit and run your playbooks like in local


   ### To run:
        docker build  -t [image_name] .

        docker run --rm -it -v ${PWD}:/usr/data [image_name]
    
#### After this you will get a bash promt and voila you can play with ansible and install what you like and once you quit all gone just you playbooks that's in your pwd will stay.

   ##### Once you get the Bash promt, like below.
        [root@be29ee7af4c2 ~]#
   ##### You can run a test on the localhost.
        ansible localhost -m ping
        Output:
                localhost | SUCCESS => {
                "changed": false,
                "ping": "pong"
                }

    The output below shows that ansible is configure corectly.

   #### Enjoy playing with Ansible in Docker.
    
