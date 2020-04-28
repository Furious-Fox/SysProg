import socket

sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
sock.bind(('', 42000))
sock.listen(1)
conn, addr = sock.accept()

print ("connected:", addr)

while True:
    data = conn.recv(1024)
    if not data:
        break
    print("message:",data.decode("utf-8"),"\n")
    conn.send(data.upper())

conn.close()