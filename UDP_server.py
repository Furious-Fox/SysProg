import socket

sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
sock.bind(('', 42000))


while True:
    data = sock.recv(1024)
    if not data:
        break
    print("message:",data.decode("utf-8"),"\n")


sock.close()