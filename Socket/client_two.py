import socket
host="127.0.0.1"
port=5001
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect((host,port))
string=input("Enter Data:-")
while(string!='exit'):
    s.send(string.encode())
    data=s.recv(1024)
    print("From Server:-",data.decode())
    string=input("Enter Data:-")
s.close()
