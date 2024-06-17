import random
import mysql.connector as m

db=m.connect(host="localhost",user="root",password="",database="quiz")

cursor=db.cursor()

def printStart():
    print("\n\n\n\n\n\n\n\n\n\n\n")
    print("|------------------------DYNAMIC QUIZ GAME-------------------------|")
    print("|->You have to choose one category")
    print("|->Belonging to that category there are 10 simple questions")
    print("|->4 options like a,b,c, and d are given")
    print("|->You have to choose any one from them")
    print("|->Each correct answer carries 10 points")
    print("|->Incorrect does not makes any difference")
    print("|->At the end of game you will get your points")
    ready=input("\n|->Ready To Play(Y/N) : ")
    if(ready=='Y' or ready=='y'):
        return True
    else:
        return False

def adminPanel():
    print("\n*-* WELCOME TO ADMIN PANEL *-*")
    print("----------------------------------")
    print("1)ADD CATEGORY")
    print("2)CHANGE CATEGORY")
    print("3)REMOVE CATEGORY")
    print("4)SEE ALL CATEGORIES")
    print("----------------------------------")
    print("5)ADD QUESTION (WITH OPTIONS)")
    print("6)CHANGE QUESTION (WITHOUT OPTIONS)")
    print("7)REMOVE QUESTION (ALONG WITH OPTIONS)")
    print("8)SEE CATEGORY WISE QUESTIONS")
    print("9)SEE ALL QUESTIONS")
    print("----------------------------------")
    print("10)CHANGE OPTIONS")
    print("11)CHANGE CORRECT OPTION")
    print("12)SEE ALL OPTIONS OF PARTICULAR QUESTION")
    print("----------------------------------")
    print("13)EXIT ADMIN PANEL")
    print("----------------------------------")

class Category:
    def addCat(self,catName):
        sql="insert into category(cat_name) values('{}')".format(catName)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print("\n")
            print(cursor.rowcount," Category Added")
        else:
            print("Adding Category Failed")        
    def changeCat(self,cat_id,catName):
        sql="update category set cat_name='{}' where id={}".format(catName,cat_id)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Category Updated")
        else:
            print("Updating Category Failed")
    def delCat(self,cat_id):
        sql="delete from category where id={}".format(cat_id)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Category Removed")
        else:
            print("Removing Category Failed")
    def getAllCat(self):
        fetchAllCat="select * from category"
        cursor.execute(fetchAllCat)
        results=cursor.fetchall()
        for rows in results:
            print(str(rows[0])+" - "+rows[1])
            
class Question:
    def addQue(self,cat_id,question):
        sql="insert into quebank(cat_id,question) values(%s,%s)"
        val=(cat_id,question)
        cursor.execute(sql,val)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Question Added")
        else:
            print("Adding Question Failed")            
    def getLastID(self):
        giveLastID="SELECT @@IDENTITY"
        cursor.execute(giveLastID)
        lastInsertedID=cursor.fetchone()
        purifiedID=str(lastInsertedID).replace('[','').replace(']','').replace('(','').replace(')','').replace(',','')
        return purifiedID
    def fetchCatQue(self,cat_id):
        sql="select id,question from quebank where cat_id="+str(cat_id)
        cursor.execute(sql)
        results=cursor.fetchall()
        for rows in results:
            print(rows)
    def updateQue(self,cat_id,que_id,newque):
        sql="update quebank set question='{0}' where cat_id={1} and id={2}".format(newque,cat_id,que_id)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Question Updated")
        else:
            print("Updating Question Failed")
    def fetchAllQue(self):
        sql="select id,question from quebank"
        cursor.execute(sql)
        results=cursor.fetchall()
        for rows in results:
            print(rows)
    def delCatQue(self,cat_id,que_id):
        sql="delete from quebank where cat_id={} and id={}".format(cat_id,que_id)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Question Removed")
        else:
            print("Removing Question Failed")
              
class Option:
    def insertOptions(self,cat_id,que_id,option,value):
        sql="insert into ansbank(cat_id,que_id,options,value) values({0},{1},'{2}','{3}')".format(cat_id,que_id,option,value)
        cursor.execute(sql)
        db.commit()
    def numToAlpha(self,i):
        if(i==1):
            return "A"
        elif(i==2):
            return "B"
        elif(i==3):
            return "C"
        elif(i==4):
            return "D"
        else:
            pass
    def setCorrectOpt(self,que_id,option):
        sql="update ansbank set isCorrect=1 where que_id={} and options='{}'".format(que_id,option)
        cursor.execute(sql)
        db.commit()
    def getOptQue(self,que_id):
        sql="select options,value,isCorrect from ansbank where que_id="+str(que_id)
        cursor.execute(sql)
        results=cursor.fetchall()
        for rows in results:
            if(rows[2]==1):
                print("["+rows[0]+"]"+" "+rows[1]+" "+"True")
            else:
                print("["+rows[0]+"]"+" "+rows[1]+" "+"False")
    def changeOption(self,cat_id,que_id,option,newval):
        sql="update ansbank set value='{0}' where cat_id={1} and que_id={2} and options='{3}'".format(newval,cat_id,que_id,option)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Option Changed")
        else:
            print("Changing Option Failed")
    def falseAllCorrect(self,cat_id,que_id):
        sql="update ansbank set isCorrect=0 where cat_id={0} and que_id={1}".format(cat_id,que_id)
        cursor.execute(sql)
        db.commit()        
    def updateCorrectOpt(self,cat_id,que_id,newopt):
        sql="update ansbank set isCorrect=1 where cat_id={0} and que_id={1} and options='{2}'".format(cat_id,que_id,newopt)
        cursor.execute(sql)
        db.commit()
        if(cursor.rowcount>0):
            print(cursor.rowcount," Correct Option Changed")
        else:
            print("Changing Correct Option Failed")
            
class Player:
    def getQueCount(self,cat_id):
        sql="select id from quebank where cat_id="+str(cat_id)+" ORDER BY id DESC LIMIT 1"
        cursor.execute(sql)
        maxque=cursor.fetchone()
        lastque=str(maxque).replace('(','').replace(')','').replace(',','')
        queCount=int(lastque)
        return queCount
    def minQueCount(self,cat_id):
        sql="select id from quebank where cat_id="+str(cat_id)+" LIMIT 1"
        cursor.execute(sql)
        leastque=cursor.fetchone()
        minque=str(leastque).replace('(','').replace(')','').replace(',','')
        firstque=int(minque)
        return firstque
    def fetchQue(self,srno,cat_id,que_id):
        sql="select question from quebank where cat_id={0} and id={1}".format(cat_id,que_id)
        cursor.execute(sql)
        results=cursor.fetchall()
        for rows in results:
            print("\n")
            print(str(srno)+")"+rows[0])         
    def fetchOpt(self,cat_id,que_id):
        currentAns=''
        sql="select options,value,isCorrect from ansbank where cat_id={0} and que_id={1}".format(cat_id,que_id)
        cursor.execute(sql)
        results=cursor.fetchall()
        for rows in results:
            print("["+rows[0]+"]",rows[1])
            if(rows[2]==True):
                currentAns=rows[0]
        ans=input("\nEnter Your Answer : ").upper()
        if(currentAns==ans):
            return 10
        else:
            return 0
        
cat=Category()
que=Question()
opt=Option()
play=Player()
isReady=printStart()
if(isReady):
    while(isReady==True):
        name=input("\nEnter Your Name : ")
        if(name=="1307"):
            adminPanel()
            choice=int(input("Enter Your Choice : "))
            while True:
                if(choice==1):
                    catName=input("\nEnter New Category Name : ")
                    cat.addCat(catName)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==2):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("Enter Category ID to get changed : "))
                    catName=input("Enter New Category Name  : ")
                    cat.changeCat(cat_id,catName)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==3):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("Enter Category ID to get removed : "))
                    cat.delCat(cat_id)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==4):
                    print("\n")                    
                    cat.getAllCat()
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==5):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nIn Which Category You Want To Add Your Question : "))
                    question=input("Enter Your Question : ")
                    que.addQue(cat_id,question)
                    que_id=que.getLastID()
                    i=1
                    while(i<5):
                        value=input("SET OPTION ["+opt.numToAlpha(i)+"] : ")
                        opt.insertOptions(cat_id,que_id,opt.numToAlpha(i),value)
                        i=i+1
                    correctOption=input("\nSET CORRECT OPTION : ").upper()
                    opt.setCorrectOpt(que_id,correctOption)
                    print("\nOptions For Above Mentioned Question Added Successfully")
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==6):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nFrom Which Category You Want To Update Your Question : "))
                    que.fetchCatQue(cat_id)
                    que_id=int(input("\nEnter Question ID to be updated : "))
                    newque=input("\nEnter New Question : ")
                    que.updateQue(cat_id,que_id,newque)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==7):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nWhich Category's Question You Want To Remove : "))
                    que.fetchCatQue(cat_id)
                    que_id=int(input("\nEnter Question ID To Get Removed : "))
                    que.delCatQue(cat_id,que_id)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==8):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nWhich Category's Question You Want To See : "))
                    que.fetchCatQue(cat_id)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==9):
                    que.fetchAllQue()
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==10):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nWhich Category's Question's Option You Want To Change : "))
                    que.fetchCatQue(cat_id)
                    que_id=int(input("\nWhich Question's Option You Want To Change : "))
                    opt.getOptQue(que_id)
                    option=input("\nEnter Option to Change Its Value : ").upper()
                    newval=input("\nEnter New Option : ")
                    opt.changeOption(cat_id,que_id,option,newval)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==11):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nWhich Category's Question's Correct Option You Want To Change : "))
                    que.fetchCatQue(cat_id)
                    que_id=int(input("\nWhich Question's Correct Option You Want To Change : "))
                    opt.getOptQue(que_id)
                    opt.falseAllCorrect(cat_id,que_id)
                    newCorrectOpt=input("\nEnter New Correct Option : ").upper()
                    opt.updateCorrectOpt(cat_id,que_id,newCorrectOpt)
                    choice=int(input("\nEnter Your Next Choice : "))
                elif(choice==12):
                    print("\n")
                    cat.getAllCat()
                    cat_id=int(input("\nWhich Category's Question's Options You Want To See : "))
                    que.fetchCatQue(cat_id)
                    que_id=int(input("\nWhich Question's Option You Want To See : "))
                    opt.getOptQue(que_id)
                    choice=int(input("\nEnter Your Next Choice : "))                    
                elif(choice==13):
                    break
                else:
                    print("\n")
                    print("Invalid Choice")
                    choice=int(input("\nEnter Your Next Choice : ")) 
        else:
            print("\nLet's Get Started",name)
            points=0
            queCount=1
            print("\n")
            cat.getAllCat()
            cat_id=input("\nWhich Category's Questions You Wanna Play? (Only ID) : ")
            maxQueCount=play.getQueCount(cat_id)
            minQueCount=play.minQueCount(cat_id)
            randomQue=list(range(minQueCount,maxQueCount+2))
            random.shuffle(randomQue)
            for que in randomQue:
                if(queCount<=10):
                    play.fetchQue(queCount,cat_id,que)
                    points+=play.fetchOpt(cat_id,que)
                    queCount+=1
                else:
                    print("\n------------------------------------------------------")
                    print("->Your Total Points =",points)
                    print("------------------------------------------------------")
                    print("->Thank You For Playing With Us",name)
                    print("------------------------------------------------------")
                    print("->Fully Hand Made By Vishwas Bhatt")
                    print("->Copyright ©, All Rights Reserved")
                    print("->Not Copied From Anywhere")
                    print("->Not Allows To Copy Anywhere")
##                    print("------------------META DATA------------------")
##                    print("->Classes Used - 4, Functions Used - 23")
##                    print("->Completion Date - 18/01/2024")
##                    print("->3 Tables, 3 Primary Keys, 3 Foreign Keys")
                    print("------------------------------------------------------")
                    break
            break
