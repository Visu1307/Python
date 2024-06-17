from tkinter import *
from tkinter import messagebox
import mysql.connector as m

db=m.connect(host="localhost",user="root",password="",database="python")

cursor=db.cursor()

def insertWindow():
    def insertFun():
        if(txt1.get()!="" and txt2.get()!="" and txt3.get()!="" and txt4.get()!="" and txt5.get("1.0", "end-1c")!=""):
            sql="insert into crud(fnm,lnm,email,phno,addr) values(%s,%s,%s,%s,%s)"
            val=(txt1.get(),txt2.get(),txt3.get(),txt4.get(),txt5.get("1.0", "end-1c"))
            cursor.execute(sql,val)
            db.commit()
            giveLastID="SELECT @@IDENTITY"
            cursor.execute(giveLastID)
            lastInsertedID=cursor.fetchone()
            purifiedID=str(lastInsertedID).replace('[','').replace(']','').replace('(','').replace(')','').replace(',','')
            if(cursor.rowcount>0):
                messagebox.showinfo("Success!",str(cursor.rowcount)+" Record Inserted :)\n"+"Remember Your ID : "+purifiedID)
            else:
                messgaebox.showerror("Error","Can't Insert Record :(")
        else:
            messagebox.showerror("Error","Unable To Insert Record :(")
    insert=Toplevel()
    insert.focus()
    insert.title("Insert")
    insert.configure(bg='green')
    insert.resizable(False,False)
    insert.attributes("-fullscreen",True)
    lbl3=Label(insert,text="Insert Dummy Record",font=('bahnschrift',36,'bold'),foreground='white',background="green")
    lbl4=Label(insert,text="Fill Out All Details",font=('bahnschrift',28,'underline'),foreground='white',background="green")
    lbl5=Label(insert,text="First Name :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt1=Entry(insert,font=('bahnschrift',20,'bold'),width=15)
    lbl6=Label(insert,text="Last Name :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt2=Entry(insert,font=('bahnschrift',20,'bold'),width=15)
    lbl7=Label(insert,text="Email :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt3=Entry(insert,font=('bahnschrift',20,'bold'),width=15)
    lbl8=Label(insert,text="Ph. No :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt4=Entry(insert,font=('bahnschrift',20,'bold'),width=15)
    lbl9=Label(insert,text="Address :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt5=Text(insert,font=('bahnschrift',20,'bold'),width=15,height=5)
    btn6=Button(insert,text="Insert",font=('bahnschrift',18,'bold'),width=10,height=1,fg='green',command=insertFun)
    btn7=Button(insert,text="Back",font=('bahnschrift',18,'bold'),width=10,height=1,command=insert.destroy)
    lbl3.place(x=450,y=50)
    lbl4.place(x=530,y=150)
    lbl5.place(x=500,y=245)
    txt1.place(x=680,y=248)
    lbl6.place(x=500,y=295)
    txt2.place(x=680,y=298)
    lbl7.place(x=500,y=345)
    txt3.place(x=680,y=348)
    lbl8.place(x=500,y=395)
    txt4.place(x=680,y=398)
    lbl9.place(x=500,y=445)
    txt5.place(x=680,y=448)
    btn6.place(x=530,y=670)
    btn7.place(x=730,y=670)

def updateWindow():
    def fetchData():
        if(txt6.get()!=""):
            sql="select * from crud where id="+txt6.get()
            cursor.execute(sql)
            results=cursor.fetchall()
            for rows in results:
                txt7.insert(0,rows[1])
                txt8.insert(0,rows[2])
                txt9.insert(0,rows[3])
                txt10.insert(0,rows[4])
                txt11.insert(END,rows[5])
            if(txt7.get()!="" and txt8.get()!="" and txt9.get()!="" and txt10.get()!="" and txt11.get("1.0", "end-1c")!=""):
                pass
            else:
                messagebox.showerror("Error","No Record(s) Found :(")
        else:
            messagebox.showerror("Error","Firstly Fill Id Then Get Details :(")
    def updateFun():
        if(txt6.get()!=""):
            if(txt7.get()!="" and txt8.get()!="" and txt9.get()!="" and txt10.get()!="" and txt11.get("1.0", "end-1c")!=""):
                sql="update crud set fnm='{}',lnm='{}',email='{}',phno='{}',addr='{}'  where id={}".format(txt7.get(),txt8.get(),txt9.get(),txt10.get(),txt11.get("1.0","end-1c"),txt6.get())
                cursor.execute(sql)
                db.commit()
                if(cursor.rowcount>0):
                    messagebox.showinfo("Success!",str(cursor.rowcount)+" Record(s) Updated Successfully :)")
                else:
                    messagebox.showerror("Error","No Records Updated")                
        else:
            messagebox.showerror("Error","Firstly Fill Id Then Get Details After That Update It :(")
    update=Toplevel()
    update.focus()
    update.title("Update")
    update.configure(bg='green')
    update.resizable(False,False)
    update.attributes("-fullscreen",True)
    lbl10=Label(update,text="Update Dummy Record",font=('bahnschrift',36,'bold'),foreground='white',background="green")
    lbl11=Label(update,text="Get Details By Id :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt6=Entry(update,font=('bahnschrift',20,'bold'),width=2)
    btn8=Button(update,text="Get",font=('bahnschrift',18,'bold'),width=4,fg='green',command=fetchData)
    lbl12=Label(update,text="Fill Out All Details",font=('bahnschrift',28,'underline'),foreground='white',background="green")
    lbl13=Label(update,text="First Name :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt7=Entry(update,font=('bahnschrift',20,'bold'),width=15)
    lbl14=Label(update,text="Last Name :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt8=Entry(update,font=('bahnschrift',20,'bold'),width=15)
    lbl15=Label(update,text="Email :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt9=Entry(update,font=('bahnschrift',20,'bold'),width=15)
    lbl16=Label(update,text="Ph. No :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt10=Entry(update,font=('bahnschrift',20,'bold'),width=15)
    lbl17=Label(update,text="Address :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt11=Text(update,font=('bahnschrift',20,'bold'),width=15,height=5)
    btn9=Button(update,text="Update",font=('bahnschrift',18,'bold'),width=10,height=1,fg='green',command=updateFun)
    btn10=Button(update,text="Back",font=('bahnschrift',18,'bold'),width=10,height=1,command=update.destroy)
    lbl10.place(x=450,y=30)
    lbl11.place(x=550,y=120)
    txt6.place(x=785,y=122)
    btn8.place(x=840,y=116)
    lbl12.place(x=535,y=190)
    lbl13.place(x=500,y=260)
    txt7.place(x=700,y=260)
    lbl14.place(x=500,y=310)
    txt8.place(x=700,y=310)
    lbl15.place(x=500,y=360)
    txt9.place(x=700,y=360)
    lbl16.place(x=500,y=410)
    txt10.place(x=700,y=410)
    lbl17.place(x=500,y=460)
    txt11.place(x=700,y=460)
    btn9.place(x=525,y=680)
    btn10.place(x=750,y=680)

def deleteWindow():
    def deleteFun():
        if(txt12.get()!=""):
            sql="delete from crud where id="+txt12.get()
            cursor.execute(sql)
            db.commit()
            if(cursor.rowcount>0):
                messagebox.showinfo("Success!",str(cursor.rowcount)+" Record(s) Deleted")
            else:
                messagebox.showerror("Error","No Rows Available For Deletion")
        else:
            messagebox.showerror("Error","Please Enter Id :(")
    delete=Toplevel()
    delete.focus()
    delete.title("Delete")
    delete.configure(bg='green')
    delete.resizable(False,False)
    delete.attributes("-fullscreen",True)
    lbl18=Label(delete,text="Delete Dummy Record",font=('bahnschrift',36,'bold'),foreground='white',background="green")
    lbl19=Label(delete,text="Remove By Id :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt12=Entry(delete,font=('bahnschrift',20,'bold'),width=3)
    btn11=Button(delete,text="Delete",font=('bahnschrift',18,'bold'),width=10,fg='green',command=deleteFun)
    btn12=Button(delete,text="Back",font=('bahnschrift',18,'bold'),width=10,height=1,command=delete.destroy)
    lbl18.place(x=450,y=250)
    lbl19.place(x=550,y=335)
    txt12.place(x=750,y=340)
    btn11.place(x=500,y=410)
    btn12.place(x=700,y=410)
    
def selectWindow():
    def selectFun():
        if(txt13.get()!=""):
            sql="select * from crud where id="+txt13.get()
            cursor.execute(sql)
            results=cursor.fetchall()
            for rows in results:
                txt14.insert(END,"ID : {} \nFirst Name : {}\nLast Name : {}\nEmail : {}\nPh. No : {}\nAddress : {}".format(rows[0],rows[1],rows[2],rows[3],rows[4],rows[5]))
        else:
            messagebox.showerror("Error","Please Enter Id :(")         
    select=Toplevel()
    select.focus()
    select.title("Select")
    select.configure(bg='green')
    select.resizable(False,False)
    select.attributes("-fullscreen",True)
    lbl20=Label(select,text="Fetch Dummy Record",font=('bahnschrift',36,'bold'),foreground='white',background="green")
    lbl21=Label(select,text="Get Details By Id :- ",font=('bahnschrift',20,'bold'),foreground='white',background="green")
    txt13=Entry(select,font=('bahnschrift',20,'bold'),width=3)
    btn12=Button(select,text="Get",font=('bahnschrift',18,'bold'),width=4,fg='green',command=selectFun)
    lbl22=Label(select,text="Results",font=('bahnschrift',28,'underline'),foreground='white',background="green")
    txt14=Text(select,font=('consolas',18,'bold'),width=25,height=10)
    #txt14.configure(state="disabled")
    btn13=Button(select,text="Back",font=('bahnschrift',18,'bold'),width=10,height=1,command=select.destroy)
    lbl20.place(x=450,y=80)
    lbl21.place(x=490,y=170)
    txt13.place(x=735,y=172)
    btn12.place(x=810,y=166)
    lbl22.place(x=610,y=230)
    txt14.place(x=520,y=310)
    btn13.place(x=610,y=620)
    
window=Tk()
window.title("CRUD Operations")
window.config(bg="green")
window.resizable(False,False)
window.attributes("-fullscreen",True)
lbl1=Label(window,text="CRUD operations with MySQL using tkinter",font=('bahnschrift',36,'bold'),foreground='white',background="green")
lbl2=Label(window,text="What Do You Want To Perform?",font=('bahnschrift',28,'underline'),foreground='white',background="green")
btn1=Button(window,text="Insert",font=('bahnschrift',20),foreground='green',background='white',height=1,width=10,command=insertWindow)
btn2=Button(window,text="Update",font=('bahnschrift',20),foreground='green',background='white',height=1,width=10,command=updateWindow)
btn3=Button(window,text="Delete",font=('bahnschrift',20),foreground='green',background='white',height=1,width=10,command=deleteWindow)
btn4=Button(window,text="Select",font=('bahnschrift',20),foreground='green',background='white',height=1,width=10,command=selectWindow)
btn5=Button(window,text="Exit",font=('bahnschrift',20),background='white',height=1,width=10,command=window.destroy)
lbl1.place(x=250,y=50)
lbl2.place(x=425,y=150)
btn1.place(x=600,y=250)
btn2.place(x=600,y=350)
btn3.place(x=600,y=450)
btn4.place(x=600,y=550)
btn5.place(x=600,y=650)

window.mainloop()
