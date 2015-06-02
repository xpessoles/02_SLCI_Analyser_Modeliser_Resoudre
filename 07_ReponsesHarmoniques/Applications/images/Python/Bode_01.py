import matplotlib.pyplot as plt
import numpy as np


omega=np.linspace(0.01,100,10000)

K,E0,tau,om0 = 12,1,1,15
z=0.15

k1 = 10
k2 = 1
tau2 = 0.1
h1=20*np.log(k1+0.*omega)
h2=20*np.log(k2)-10*np.log(tau2*tau2*omega*omega)

phi1 = omega*0
plt.subplot(2,1,1)
plt.plot(omega,
         h1,
         linewidth=3)
plt.plot(omega,
         h2,
         linewidth=3)
plt.ylabel("Gain $Gdb$")
plt.xlabel("Pulsation $\\omega$")
plt.grid(True, which="both", linestyle="dotted")
plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()

plt.subplot(2,1,2)
plt.plot(omega,
         phi1,
          linewidth=3)
plt.ylabel("Phase $rad$")
plt.grid(True, which="both", linestyle="dotted")
#plt.legend(loc='lower right', fancybox=True, shadow=True, prop=dict(size=10))
plt.semilogx()
plt.show()


