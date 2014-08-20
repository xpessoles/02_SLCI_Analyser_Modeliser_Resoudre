import matplotlib.pyplot as plt
import numpy as np
from math import sqrt



x=np.linspace(0,20,500)
p1=plt.plot(x,(np.sin(x)),
            label="$\sin(t)$",linewidth=3)
p2=plt.plot(x,(0.75*np.sin(x)),
            label="$0,75\cdot\sin(t)$",linewidth=3)

plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("$f(t)$")
plt.axis([0,20,-1.5,1.5])
plt.show()


