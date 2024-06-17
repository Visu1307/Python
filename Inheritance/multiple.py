#Multiple Inheritance Program
class Parent1():
    def fun1(self):
        print("It is first parent function")
class Parent2():
    def fun2(self):
        print("It is second parent function")
class Child(Parent1,Parent2):
    def fun3(self):
        print("It is child function")
obj=Child()
obj.fun1()
obj.fun2()
obj.fun3()
