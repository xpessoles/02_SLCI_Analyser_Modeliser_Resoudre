import matplotlib.pyplot as plt
import numpy as np
from math import sqrt
from math import pi


xf=100
omega=np.linspace(0.01,xf,10000)

K,E0,tau,om0,z = 20,1,1,1,sqrt(2.)/2.


plt.subplot(2,1,1)
plt.plot(omega,
         20.*np.log10(K)-10.*np.log10((1-((omega*omega)/(om0*om0)))**2+4*z*z*((omega*omega)/(om0*om0))),
         label="$Adb(\\omega) - \\xi=\\sqrt{2}/2$",linewidth=3)
z=0.2
plt.plot(omega,
         20.*np.log10(K)-10.*np.log10((1-((omega*omega)/(om0*om0)))**2+4*z*z*((omega*omega)/(om0*om0))),
         label="$Adb(\\omega) - \\xi=0.2 $",linewidth=3)

z=0.05
plt.plot(omega,
         20.*np.log10(K)-10.*np.log10((1-((omega*omega)/(om0*om0)))**2+4*z*z*((omega*omega)/(om0*om0))),
         label="$Adb(\\omega) - \\xi=0.05$",linewidth=3)



plt.ylabel("Gain $Gdb$")
plt.xlabel("Pulsation $\\omega$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()

plt.subplot(2,1,2)
z=sqrt(2.)/2.
plt.plot(omega,
         -np.arctan2((2*z*omega/om0),(1-((omega*omega)/(om0*om0)))),
         label="$\\varphi(\\omega) -  \\xi=\\sqrt{2}/2$",linewidth=3)
z=0.2
plt.plot(omega,
         -np.arctan2((2*z*omega/om0),(1-((omega*omega)/(om0*om0)))),
         label="$\\varphi(\\omega) -  \\xi=0.2$",linewidth=3)
z=0.05
plt.plot(omega,
         -np.arctan2((2*z*omega/om0),(1-((omega*omega)/(om0*om0)))),
         label="$\\varphi(\\omega) -  \\xi=0.05$",linewidth=3)
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


