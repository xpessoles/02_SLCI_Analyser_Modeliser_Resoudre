import matplotlib.pyplot as plt
import numpy as np
from math import sqrt


xf=5
x=np.linspace(0,xf,500)
"""
K,E0,xi,om0 = 1,1,0.4,4


plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                -np.exp(-xi*om0*x)*np.cos(x*om0*sqrt(1-xi**2))
                -((xi)/(sqrt(1-xi**2)))*np.exp(-xi*om0*x)*np.sin(x*om0*sqrt(1-xi**2))
                )
            ,label="$s(t)$",linewidth=3)
"""
K,E0,xi,om0 = 1,1,-0.5,1


xf=5
x=np.linspace(0,xf,500)

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                -np.exp(-xi*om0*x)*np.cos(x*om0*sqrt(1-xi**2))
                -((xi)/(sqrt(1-xi**2)))*np.exp(-xi*om0*x)*np.sin(x*om0*sqrt(1-xi**2))
                )
            ,label="$s(t)$",linewidth=3)




plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position en $m$")
#plt.axis([0,xf,0,1.3])
plt.show()


