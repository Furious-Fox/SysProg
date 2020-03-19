FROM debian
RUN apt update
RUN apt install gcc gdb gcc-multilib nano -y
WORKDIR /home/test/
COPY var12_stable.s /home/test/
RUN gcc -m32 -fno-pie -no-pie var12_stable.s -o var12_stable -g