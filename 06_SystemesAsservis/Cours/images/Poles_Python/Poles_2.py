import matplotlib.pyplot as plt
import numpy as np
from math import sqrt


xf=5
x=np.linspace(0,xf,500)

K,E0,xi,om0 = 1,1,2,10
p1 = - om0

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                -np.exp(-om0*x)
                -om0*x*np.exp(-om0*x)
                )
            ,label="$s(t) - \\xi=2$",linewidth=3)

K,E0,xi,om0 = 1,1,20,10
p1 =  0.3

"""
plo3=plt.plot(x,
            K*E0*(
                1
                -np.exp(p1*x)
                +p1*x*np.exp(p1*x)
                )
            ,label="$s(t) - \\xi=20$",linewidth=3)
"""

plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position en $m$")
plt.axis([0,xf,0,1.2])
plt.show()


