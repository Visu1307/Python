import matplotlib.pyplot as plt
import numpy as np

size=np.array([40,30,20,6,4])
names=np.array(["Samsung","Apple","OnePlus","Huawei","Others"])

plt.pie(size,labels=names)
plt.title("Market Share in India of Smartphone Brands for 2022-23(Approx.)")
plt.show()
