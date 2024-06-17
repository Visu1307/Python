#Multi Level Inheritance Program
class GrandParent:
    def fun1(self):
        print("It is grand parent function")
class Parent(GrandParent):
    def fun2(self):
        print("It is parent function")
class Child(Parent):
    def fun3(self):
        print("It is child function")
obj=Child()
obj.fun1()
obj.fun2()
obj.fun3()
