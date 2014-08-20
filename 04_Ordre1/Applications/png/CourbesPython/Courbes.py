import matplotlib.pyplot as plt
import numpy as np
from math import sqrt

#tau,K,E0 = 0.5,0.8,1
#tau,K,E0 = 4,1.5,100

tau,K,E0 = 2,1,5


#p1=plt.plot(x,
#            (
#                K*E0*(1-np.exp(-x/tau))
#                ),label="s(t)",linewidth=3)
x=np.linspace(1,10,500)
p1=plt.plot(x,
            (
                K*E0*(1-np.exp(-(-1+x)/tau))
                ),label="s(t)",linewidth=3)
x=np.linspace(0,10,500)
p1=plt.plot(x,
            (
                E0+0*np.exp(x)
                ),label="e(t)",linewidth=3)

x=np.linspace(0,1,100)
p1=plt.plot(x,
            (
                0+0*np.exp(x)
                ),'b',linewidth=3)

plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position $y(t)$ en $m$")
#plt.axis([0,5,0,1.2])
#plt.axis([0,25,0,160])
plt.axis([0.1,10,-0.1,6])
plt.show()


