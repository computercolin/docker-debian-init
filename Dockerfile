FROM debian:bullseye
RUN \
  apt update \
  && apt install -y init tzdata openssh-server vim screen \
  && apt autoremove -y \
  && apt clean
ADD bin /bin
EXPOSE 22
EXPOSE 80
EXPOSE 8001
EXPOSE 8002
EXPOSE 8003
EXPOSE 8004
EXPOSE 8005
EXPOSE 8006
EXPOSE 8007
EXPOSE 8008
STOPSIGNAL SIGRTMIN+3
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/sbin/init"]
