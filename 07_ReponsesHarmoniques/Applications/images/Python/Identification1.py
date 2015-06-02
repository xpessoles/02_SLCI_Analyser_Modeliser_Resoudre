import matplotlib.pyplot as plt
import numpy as np


omega=np.linspace(0.1,1000,10000)

K,E0,tau,om0 = 12,1,1,15
z=0.15

plt.subplot(2,1,1)
plt.plot(omega,
         20.*np.log10(K)-10.*np.log10((1-((omega*omega)/(om0*om0)))**2+4*z*z*((omega*omega)/(om0*om0))),
         linewidth=3)
plt.ylabel("Gain $Gdb$")
plt.xlabel("Pulsation $\\omega$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()

plt.subplot(2,1,2)
plt.plot(omega,
         -np.arctan2((2*z*omega/om0),(1-((omega*omega)/(om0*om0)))),
          linewidth=3)
plt.ylabel("Phase $rad$")
plt.grid(True, which="both", linestyle="dotted")
#plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()
plt.show()


