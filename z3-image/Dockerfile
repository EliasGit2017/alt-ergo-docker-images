# -------------
# OS Base image
# -------------
# >> Includes system-wide dependencies
FROM ubuntu:20.04 as lib-base
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y --no-install-recommends install \
        cmake \
        make \
        clang \
        g++ \
        wget \
        git \
        unzip \
        curl \
        default-jdk \
        python3 \
        python3-setuptools \
        python-is-python3 \
        sudo

# ----------------
# Z3 Builder Image
# ----------------
# >> Includes build files and compiles the basic z3 sources
FROM lib-base as builder
WORKDIR /home/
RUN wget https://github.com/Z3Prover/z3/archive/refs/tags/z3-4.11.2.zip && \
    unzip z3-4.11.2.zip
# COPY ./ /z3-source/
WORKDIR /home/z3-z3-4.11.2/
RUN python scripts/mk_make.py
WORKDIR /home/z3-z3-4.11.2/build/
RUN make
RUN sudo make install
WORKDIR /home/z3-z3-4.11.2/

# -------
# Bare z3
# -------
# >> Includes only stnadard z3 installations.
# >> Can be used as a standalone interface to z3.
FROM builder as bare-z3
WORKDIR /home/proofs
# ENTRYPOINT [ "z3" ]

# TODO: introduce Python-binding stage
# ...

# TODO(optional): introduce C/C++ -binding stage
# ...