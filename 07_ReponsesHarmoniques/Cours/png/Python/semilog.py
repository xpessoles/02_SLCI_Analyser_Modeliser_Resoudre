from pylab import *
import matplotlib.pyplot  as pyplot
a = [ pow(10,i) for i in range(10) ]
fig = pyplot.figure()
ax = fig.add_subplot(2,1,1)

line, = ax.semilogy(a, color='blue', lw=2)
show()
