#Two-Way Communication
import socket
host="127.0.0.1"
port=5001
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.bind((host,port))
s.listen(3)
c,addr=s.accept()
while(True):
    data=c.recv(1024)
    if not data:
        break
    print("From Client:-",data.decode())
    data1=input("Enter Response:-")
    c.send(data1.encode())
s.close()
