import matplotlib.pyplot as plt
import numpy as np
from math import sqrt
from math import pi

#EXERCICE RADAR

xi=0.01
xf=1000
ai = -60
af = 10
phii = -2*pi
phif=pi
omega=np.linspace(xi,xf,1000)



plt.subplot(2,1,1)

plt.ylabel("Gain $Gdb$")
plt.xlabel("Pulsation $\\omega$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()
plt.axis([xi,xf,ai,af])
plt.subplot(2,1,2)
#plt.plot(omega,
#         -np.arctan(tau*omega),
#         label="$\\varphi(\\omega)$",linewidth=3)
plt.ylabel("Phase $rad$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()
plt.axis([xi,xf,phii,phif])

#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
#plt2.legend(loc='upper right', fancybox=True, shadow=True, prop=dict(size=10))
#plt.xlabel("$\omega$ $rad/s$")
#plt.xlabel("$\omega$ $rad/s$")

#plt.ylabel("Position $y(t)$ en $m$")
#plt.axis([0,xf,-1.5,1.5])
plt.show()


