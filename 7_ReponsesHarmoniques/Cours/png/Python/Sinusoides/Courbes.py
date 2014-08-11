import matplotlib.pyplot as plt
import numpy as np
from math import sqrt



x=np.linspace(1,20,500)
p1=plt.plot(x,(np.sin(x)),
            label="s(t)",linewidth=3)
p2=plt.plot(x,(np.sin(x+1.5)),
            label="s(t)",linewidth=3)

plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position $y(t)$ en $m$")
plt.axis([0,20,-1.5,1.5])
plt.show()


