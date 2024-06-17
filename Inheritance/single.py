#Single Level Inheritance Demo
class Parent:
    def fun1(self):
        print("It is  parent class function")
class Child(Parent):
    def fun2(self):
        print("It is child class function")
obj=Child()
obj.fun1()
obj.fun2()
