#http://stackoverflow.com/questions/8144910/modeling-a-linear-system-with-python
import matplotlib.pylab as plt
import numpy as np
import scipy.signal

def bode(G,f=np.arange(.01,100,.01)):
    plt.figure()
    jw = 2*np.pi*f*1j
    y = np.polyval(G.num, jw) / np.polyval(G.den, jw)
    mag = 20.0*np.log10(abs(y))
    phase = np.arctan2(y.imag, y.real)*180.0/np.pi % 360

    plt.subplot(211)
    #plt.semilogx(jw.imag, mag)
    plt.semilogx(f,mag)
    plt.grid()
    plt.gca().xaxis.grid(True, which='minor')

    plt.ylabel(r'Magnitude (db)')

    plt.subplot(212)
    #plt.semilogx(jw.imag, phase)
    plt.semilogx(f,phase)
    plt.grid()
    plt.gca().xaxis.grid(True, which='minor')
    plt.ylabel(r'Phase (deg)')
    plt.yticks(np.arange(0, phase.min()-30, -30))

    return mag, phase

f=scipy.signal.lti([1],[1,1])
bode(f)
