import matplotlib.pyplot as plt
import numpy as np
from math import sqrt


xf=1
x=np.linspace(0,xf,500)

K,E0,tau,om0 = 1,1,1,10

p1=plt.plot(x,(E0*np.sin(om0*x)),
            label="e(t) - $\omega_0$=1 rad/s ",linewidth=3)

p2=plt.plot(x,
            ((K*E0)/(1+tau*tau*om0*om0))*(
                (tau*om0*np.exp(-x/tau))
                -(tau*om0*np.cos(om0*x))
                +(np.sin(om0*x))
                ),
            label="s(t)",linewidth=3)

plt.grid(True, which="both", linestyle="dotted")
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.xlabel("Temps en $s$")
plt.ylabel("Position $y(t)$ en $m$")
plt.axis([0,xf,-1.5,1.5])
plt.show()


