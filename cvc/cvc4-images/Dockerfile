FROM alpine:3.16

LABEL maintainer="elias.bendjaballah@gmail.com"
LABEL description="Light docker images for the SMT solver cvc4-1.8 "

WORKDIR /home/proofs

RUN wget https://github.com/CVC4/CVC4/releases/download/1.8/cvc4-1.8-x86_64-linux-opt && \
    mv cvc4-1.8-x86_64-linux-opt cvc4-1.8 && \
    chmod a+x cvc4-1.8 && \
    mv cvc4-1.8 /usr/local/bin
