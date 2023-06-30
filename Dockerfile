FROM debian:bookworm
RUN \
  apt update \
  && apt install -y \
    init \
    tzdata \
    inetutils-ping \
    openssh-server \
    vim \
    screen \
  && apt autoremove -y \
  && apt clean
ADD bin /bin
EXPOSE 22/tcp
EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 8001-8006/tcp
EXPOSE 9001-9006/udp
STOPSIGNAL SIGRTMIN+3
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/sbin/init"]
