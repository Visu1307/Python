import mysql.connector as m

db=m.connect(host="localhost",user="root",password="",database="python")

cursor=db.cursor()

def printOnly():
    print("\n\n-------------------TINY STUDENT MANAGEMENT PROGRAM-------------------\n")
    print("What Do You Want To Perform?\n")
    print("1)Insert\n2)Update\n3)Delete\n4)Select All\n5)Select Class Wise\n6)Exit\n")

def insertFun(sname,sclass):
    sql="insert into testCase(name,class) values(%s,%s)"
    val=(sname,sclass)
    cursor.execute(sql,val)
    db.commit()
    if(cursor.rowcount>0):
        print(cursor.rowcount," Record(s) Inserted")
    else:
        print("Insert Failed")

def deleteFun(sname):
    sql="delete from testCase where name='{}' ".format(sname)
    cursor.execute(sql)
    db.commit()
    if(cursor.rowcount>0):
        print(cursor.rowcount," Record(s) Deleted")
    else:
        print("No Rows Available For Deletion")

def updateClassFun(sname,sclass):
    sql="update testCase set class='{}' where name='{}' ".format(sclass,sname)
    cursor.execute(sql)
    db.commit()
    if(cursor.rowcount>0):
        print(cursor.rowcount," Record(s) Updated Successfully")
    else:
        print("No Records Updated")

def selectAllFun():
    sql="select * from testCase"
    cursor.execute(sql)
    results=cursor.fetchall()
    if(cursor.rowcount>0):
        print("All Fetched Records:-")
        for rows in results:
            print(rows)
    else:
        print("No Records Available To Display")

def selectClassWise(sclass):
    sql="select * from testCase where class='{}'".format(sclass)
    cursor.execute(sql)
    results=cursor.fetchall()
    if(cursor.rowcount>0):
        print("Students Of "+sclass+" Are As Follows:-")
        for rows in results:
            print(rows)
    else:
        print("No Students Found In "+sclass)

def Menu():
    printOnly()
    choice=int(input("Enter Your Choice:-"))
    while True:
        if(choice==1):
            sname=input("Enter Student's Name:-")
            sclass=input("Enter Student's Class:-")
            insertFun(sname,sclass)
            choice=int(input("\nEnter Your Next Choice:-"))
        elif(choice==2):
            sname=input("Enter Student's Name:-")
            sclass=input("Enter Student's Class To Be Updated:-")
            updateClassFun(sname,sclass)
            choice=int(input("\nEnter Your Next Choice:-"))
        elif(choice==3):
            sname=input("Enter Student's Name:-")
            deleteFun(sname)
            choice=int(input("\nEnter Your Next Choice:-"))
        elif(choice==4):
            selectAllFun()
            choice=int(input("\nEnter Your Next Choice:-"))
        elif(choice==5):
            sclass=input("Enter Class Name To Search Its Student:-")
            selectClassWise(sclass)
            choice=int(input("\nEnter Your Next Choice:-"))
        elif(choice==6):
            print("\nThank You For Being A Part Of Our Program")
            break
        else:
            print("\nInvalid Choice")
            choice=int(input("\nEnter Your Next Choice:-"))
    
Menu()

