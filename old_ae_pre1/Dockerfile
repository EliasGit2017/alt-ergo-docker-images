FROM ocamlpro/ocaml:4.02-2022-06-05 as ae-builder

LABEL maintainer="elias.bendjaballah@gmail.com"
LABEL description="Attempt to build a light container for alt-ergo (no handling of the GUI is proposed for 'basic' images) "

RUN opam switch create /home/ocaml/ ocaml-system --deps --locked && \
    eval `opam env` && \
    opam install alt-ergo.0.95.2

RUN sudo cp /home/ocaml/_opam/bin/alt-ergo /usr/local/bin/alt-ergo-0.95.2 && \
    rm -rf /home/ocaml/_opam && \
    rm -rf /home/ocaml/.opam

FROM alpine:latest as target

RUN apk add autoconf gmp-dev zlib-dev pkgconf

RUN addgroup -S ocaml && adduser -S ocaml -G ocaml -s /bin/sh
RUN echo 'ocaml ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER ocaml
WORKDIR /home/ocaml

COPY --from=ae-builder /usr/local/bin/alt-ergo-0.95.2 /usr/local/bin/
