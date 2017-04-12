
FROM centos:7.1.1503

RUN ["yum", "remove", "-y", "fakesystemd"]
RUN ["yum", "install", "-y", "epel-release"]
RUN ["yum", "install", "-y", "iproute", "net-tools", "lsof"]
RUN ["yum", "install", "-y", "openssh-server", "openssh-clients", "openssh"]
RUN ["yum", "install", "-y", "supervisor"]
RUN ["yum", "install", "-y", "lua-devel"]
RUN ["yum", "install", "-y", "luarocks"]
RUN ["yum", "install", "-y", "git"]
RUN ["yum", "groupinstall", "-y", "development", "tools"]
RUN ["yum", "install", "-y", "https://github.com/Mashape/kong/releases/download/0.10.1/kong-0.10.1.el7.noarch.rpm"]

RUN ["mkdir", "-p", "/root/.ssh"]
RUN ["/usr/bin/ssh-keygen", "-A"]

COPY ./supervisord.conf /etc
COPY ./id_rsa /root/.ssh
COPY ./id_rsa.pub /root/.ssh
COPY ./authorized_keys /root/.ssh
COPY ./init.sh /root/

RUN ["chmod", "600", "/root/.ssh/id_rsa"]
RUN ["chmod", "600", "/root/.ssh/authorized_keys"]
RUN ["/root/init.sh"]

EXPOSE 22
EXPOSE 8000
EXPOSE 8001

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf", "-n"]
