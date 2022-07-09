FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

RUN useradd colin

RUN echo "colin:changeme" | chpasswd

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

