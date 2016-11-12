
FROM 172.28.32.23:8808/public/centos:7.1.1503

COPY ./CentOS-Base.repo /etc/yum.repos.d/

RUN ["mkdir", "/var/log/supervisor"]
RUN ["mkdir", "-p", "/root/.ssh"]
RUN ["yum", "remove", "-y", "fakesystemd"]
RUN ["yum", "install", "-y", "iproute", "net-tools", "lsof"]
RUN ["yum", "install", "-y", "openssh-server", "openssh-clients", "openssh"]
RUN ["yum", "install", "-y", "http://oerp142a4.bkt.clouddn.com/kong-0.9.5.el7.noarch.rpm"]
RUN ["yum", "install", "-y", "supervisor"]
RUN ["/usr/bin/ssh-keygen", "-A"]

COPY ./supervisord.conf /etc
COPY ./id_rsa /root/.ssh
COPY ./id_rsa.pub /root/.ssh
COPY ./authorized_keys /root/.ssh
COPY ./init.sh /root/

RUN ["chmod", "600", "/root/.ssh/id_rsa"]
RUN ["chmod", "600", "/root/.ssh/authorized_keys"]

EXPOSE 22
EXPOSE 8000
EXPOSE 8001

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf", "-n"]
