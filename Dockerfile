FROM dalongrong/lapis-1.7.0:latest
RUN lapis new --lua
ENTRYPOINT [ "lapis","server" ]