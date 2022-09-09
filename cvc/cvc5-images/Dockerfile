FROM alpine:3.16

LABEL maintainer="elias.bendjaballah@gmail.com"
LABEL description="Light docker images for the SMT solver cvc5 "

WORKDIR /home/proofs

RUN wget https://github.com/cvc5/cvc5/releases/latest/download/cvc5-Linux && \
    chmod a+x cvc5-Linux && \
    mv cvc5-Linux /usr/local/bin

