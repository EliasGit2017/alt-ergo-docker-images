FROM ocamlpro/ocaml:4.02 as ae-builder

LABEL maintainer="elias.bendjaballah@gmail.com"
LABEL description="Attempt to build a light container for alt-ergo (no handling of the GUI is proposed for 'basic' images) "


RUN opam switch create /home/ocaml ocaml-system --deps --locked && \
    eval `opam env` && \
    opam install -y alt-ergo.1.30 && \
    sudo cp /home/ocaml/_opam/bin/alt-ergo /usr/local/bin/alt-ergo-1.30 && \
    rm -rf _opam

# RUN sudo cp /home/ocaml/alt-ergo/_opam/bin/alt-ergo /usr/local/bin/alt-ergo-2.4.1
#   && sudo cp /home/ocaml/alt-ergo/_opam/bin/altgr-ergo /usr/local/bin/altgr-ergo-2.4.1

# This comment line was added using sed

# This is the second comment line

WORKDIR /home/ocaml
RUN rm -rf /home/ocaml/alt-ergo

FROM alpine:latest as target

# RUN apk add gcc libc-dev make sudo patch rsync m4

# RUN apk add perl gdbm fribidi pcre zlib linux-headers util-macros \
#     icu util-linux alpine-baselayout ca-certificates m4 p11-kit busybox pax-utils file libgcrypt \
#     libunistring binutils expat xz gettext

RUN apk add autoconf gmp-dev zlib-dev pkgconf

RUN addgroup -S ocaml && adduser -S ocaml -G ocaml -s /bin/sh
RUN echo 'ocaml ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER ocaml
WORKDIR /home/ocaml

#COPY --from=ae-builder /home/ocaml/alt-ergo /home/ocaml/alt-ergo # useless take only binaries
COPY --from=ae-builder /usr/local/bin/alt-ergo-1.30 /usr/local/bin/
# add test files here  --> (connect volume to ae-benchmark)