import socket

sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
sock.connect(("192.168.1.10", 42000))
message = input()
sock.send(message.encode("utf-8"))

sock.close()
