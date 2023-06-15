FROM debian:bullseye
RUN \
  apt update \
  && apt install -y init tzdata openssh-server vim screen \
  && apt autoremove -y \
  && apt clean
ADD bin /bin
EXPOSE 22/tcp
EXPOSE 80/tcp
EXPOSE 8001-8010/tcp
EXPOSE 9001-9010/udp
STOPSIGNAL SIGRTMIN+3
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/sbin/init"]
