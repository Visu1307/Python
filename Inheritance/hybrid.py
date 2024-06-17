#Hybrid Inheritance Program:-Hierachical+Multiple
class GrandParent:
    def fun1(self):
        print("It is grand parent function")
class Parent1(GrandParent):
    def fun2(self):
        print("It is first parent function")
class Parent2(GrandParent):
    def fun3(self):
        print("It is second parent function")
class Child(Parent1,Parent2):
    def fun4(self):
        print("It is child function")
obj=Child()
obj.fun1()
obj.fun2()
obj.fun3()
obj.fun4()
