#Hierachical Inheritance Program
class Parent():
    def fun1(self):
        print("It is parent class function")
class Child1(Parent):
    def fun2(self):
        print("It is child 1 function")
class Child2(Parent):
    def fun3(self):
        print("It is child 2 function")
obj=Child1()
obj2=Child2()
obj.fun1()
obj.fun2()
obj2.fun1()
obj2.fun3()
