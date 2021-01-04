# FROM gcc:latest as builder
# LABEL mentener "0Delta (0deltast@gmail.com)"
# 
# WORKDIR /root
# RUN git clone https://github.com/mtoyoda/sl
# WORKDIR /root/sl
# # RUN apt update;apt install musl-dev -y;apt clean all
# RUN make


FROM ubuntu:latest
# FROM frolvlad/alpine-glibc:latest
LABEL mentener "0Delta (0deltast@gmail.com)"

WORKDIR /
RUN apt update;apt install sl;apt clean all;
# RUN mkdir -p /usr/games
# COPY --from=builder /root/sl/sl /usr/games/sl
COPY ./script.sh /script.sh
# RUN apk add --no-cache libc6-compat ncurses-libs && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
RUN chmod a+x /script.sh

ENTRYPOINT /script.sh

