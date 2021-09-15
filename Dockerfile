FROM amd64/debian:10.10

COPY root-gdbinit /root/.gdbinit

RUN apt update && apt install -y \
  git \
  zsh \
  build-essential \
  gdb-multiarch \
  qemu-system-misc \
  gcc-riscv64-linux-gnu \
  binutils-riscv64-linux-gnu

WORKDIR /xv6

# for running
#CMD [ "make", "qemu" ]
# for debug
CMD [ "make", "qemu-gdb" ]

