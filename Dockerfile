FROM ubuntu
RUN apt update
RUN apt install gcc g++ gdb gcc-multilib nano -y
WORKDIR /home/test/
COPY text /home/test/
COPY second.cpp /home/test/
RUN gcc second.cpp -lstdc++ -lpthread -o second