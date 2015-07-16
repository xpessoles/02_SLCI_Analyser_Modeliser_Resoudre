import matplotlib.pyplot as plt
import numpy as np
from math import sqrt


xf=5
x=np.linspace(0,xf,500)


"""
# 2 poles à parties réelles négatives
K,E0,xi,om0 = 1,1,2,10
p1 = -xi*om0+om0*sqrt(xi**2-1)
p2 = -xi*om0-om0*sqrt(xi**2-1)

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                +((p2)/(p1-p2))*np.exp(x*p1)
                +((p1)/(p2-p1))*np.exp(x*p2)
                )
            ,label="$s(t)$",linewidth=3)
"""



# 2 poles à parties réelles négatives éloignées
K,E0,xi,om0 = 1,1,20,10
p1 = -xi*om0+om0*sqrt(xi**2-1)
p2 = -xi*om0-om0*sqrt(xi**2-1)

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                +((p2)/(p1-p2))*np.exp(x*p1)
                +((p1)/(p2-p1))*np.exp(x*p2)
                )
            ,label="$s(t)$",linewidth=3)


"""
# 2 poles partie réelle positive 
xf=5
x=np.linspace(0,xf,500)
K,E0,xi,om0 = 1,1,2,-0.2
p1 = -xi*om0+om0*sqrt(xi**2-1)
p2 = -xi*om0-om0*sqrt(xi**2-1)

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                +((p2)/(p1-p2))*np.exp(x*p1)
                +((p1)/(p2-p1))*np.exp(x*p2)
                )
            ,label="$s(t)$",linewidth=3)
"""
"""
# 1 pole partie réelle positive et 1 pole a partie réelle négative
xf=5
x=np.linspace(0,xf,500)
K,E0,xi,om0 = 1,1,2,-1
p1 = -xi*om0+om0*sqrt(xi**2-1)
p2 = -p1

plo1=plt.plot(x,(E0+0*np.sin(x)),
            label="$e(t)$",linewidth=3)

plo2=plt.plot(x,
            K*E0*(
                1
                +((p2)/(p1-p2))*np.exp(x*p1)
                +((p1)/(p2-p1))*np.exp(x*p2)
                )
            ,label="$s(t)$",linewidth=3)

"""
plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position en $m$")
plt.axis([0,xf,-1.2,1.2])
plt.show()


