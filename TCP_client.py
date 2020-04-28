import socket

sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
sock.connect(("192.168.1.10", 42000))
message = input()
sock.send(message.encode("utf-8"))

data = sock.recv(1024)
sock.close()

print ("answer:",data.decode("utf-8"))