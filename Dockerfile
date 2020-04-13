FROM debian
RUN apt update
RUN apt install gcc g++ gdb gcc-multilib nano -y
WORKDIR /home/test/
COPY var12.cpp /home/test/
RUN gcc -fno-pie -no-pie var12.cpp -lstdc++ -o var12