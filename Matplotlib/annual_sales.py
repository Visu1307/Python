import matplotlib.pyplot as plt
import numpy as np

xpoints = np.array([1,2,3,4,5]) #For Displaying Years
ypoints = np.array([15,18,16,19,22]) #For Displaying Sales in Rs

plt.plot(xpoints,ypoints,marker='o')
plt.title("Annual Sales of XYZ Pvt. Ltd. over the past years")
plt.xlabel("Years")
plt.ylabel("Sales(Rs. In Cr.)")
plt.legend("Sales")
plt.grid()
plt.show()
