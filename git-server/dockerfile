FROM ubuntu:latest
MAINTAINER lucas@alycat.cn
EXPOSE 22
RUN mkdir /var/run/sshd && \
	apt-get update && apt-get install -y openssh-server git && \
	echo 'root:admin' | chpasswd && \
	sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
#设置自启动命令
CMD ["/usr/sbin/sshd","-D"]
