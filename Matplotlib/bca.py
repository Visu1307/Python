import matplotlib.pyplot as plt
import numpy as np

xpoints=np.array([1,2,3,4,5])
ypoints=np.array([82.5,82.33,88.67,84.67,90])

plt.plot(xpoints,ypoints,marker='o')
plt.xlabel("Semster")
plt.ylabel("Percentage(%) between 80-90")
plt.title("Bhatt Vishwas' Scored Percentage In B.C.A. Course")
plt.grid()
plt.show()
