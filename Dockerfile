FROM imega/base-builder:1.2.0

MAINTAINER Dmitry Gavriloff <info@imega.ru>

ADD build/rootfs.tar.gz /

CMD ["/app/compile.sh"]
