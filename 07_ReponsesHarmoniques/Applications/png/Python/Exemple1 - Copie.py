import matplotlib.pyplot as plt
import numpy as np
from math import sqrt
from math import pi
from math import log10

xf=100
omega=np.linspace(0.01,xf,10000)

K,E0,tau,om0 = 20,1,1,0.01


plt.subplot(2,1,1)
plt.plot([0.01,100],[20*log10(10),20*log10(10)],
         label="$Adb(\\omega)$",linewidth=3)
plt.ylabel("Gain $Gdb$")
plt.xlabel("Pulsation $\\omega$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()

plt.subplot(2,1,2)
plt.plot(omega,
         -np.arctan(tau*omega),
         label="$\\varphi(\\omega)$",linewidth=3)
plt.ylabel("Phase $rad$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()
#plt.axis([0.01,xf,0,1.6])
#plt.title("Fonctions trigonometriques")  
#plt.legend([p1, p2], ["Sinus", "Cosinus"])
#plt2.legend(loc='upper right', fancybox=True, shadow=True, prop=dict(size=10))
#plt.xlabel("$\omega$ $rad/s$")
#plt.xlabel("$\omega$ $rad/s$")

#plt.ylabel("Position $y(t)$ en $m$")
#plt.axis([0,xf,-1.5,1.5])
plt.show()


