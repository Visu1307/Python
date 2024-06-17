import matplotlib.pyplot as plt
import numpy as np

xpoints=np.array(["Samsung","Apple","OnePlus","Huawei"])
ypoints=np.array([1000,800,600,400])

plt.bar(xpoints,ypoints)
plt.xlabel("Smart Phone Brands")
plt.ylabel("Sales In Crores(Rs)")
plt.title("Annual Sales in India - 2022-23(Approx.)")
plt.show()
