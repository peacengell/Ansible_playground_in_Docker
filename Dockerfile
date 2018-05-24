FROM centos

RUN  yum -y update \
    && yum -y install openssh-server ansible \
    && /usr/bin/ssh-keygen -A \
    && ssh-keygen -q -t rsa -b 2048 -f  /root/.ssh/id_rsa -N "" \
    && cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys \
    && chmod 600 ~/.ssh/authorized_keys

CMD /usr/sbin/sshd && bash
