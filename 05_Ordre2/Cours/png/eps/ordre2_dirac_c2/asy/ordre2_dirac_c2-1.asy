if(!settings.multipleView)
 settings.batchView=false;
defaultfilename="ordre2_dirac_c2-1";
if(settings.render < 0) settings.render=4;
settings.inlineimage=true;
settings.embed=true;
settings.outformat="";
settings.toolbar=false;
viewportmargin=(2,2);

// Global Asymptote definitions can be put here.
usepackage("bm");
usepackage("asycolors");
texpreamble("\def\V#1{\bm{#1}}");
// One can globally override the default toolbar settings here:
// settings.toolbar=true;

import graph;

size(400,300,IgnoreAspect);

real xmin=0;
real xmax=25;
real ymin=-0.6;
real ymax=0.6;

real incX = 5;
real incx = incX/5;
real incY = 0.1;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 0.5;
real tau = 1;
real om0 = 1;
real z = 0.25;
real p1 = -10;
real p2 = -1;

real f(real t){return (K*om0/(sqrt(1-z*z)))*exp(-t*om0*z)*sin(om0*t*sqrt(1-z*z));}
path p=graph(f,0,25,operator ..);
draw(p,red+linewidth(2));
//draw("$s(t)=\frac{0.5\times1}{\sqrt{1-0,25^2}}e^{-0,25\times 1 \times t}\sin\left(1
//t\sqrt{1-0,25^2} \right) u(t) $",(15,0.25),black);

real f(real t){return (K*om0/(sqrt(1-z*z)))*exp(-t*om0*z);}
path p=graph(f,0,25,operator ..);
draw(p,blue+linewidth(1));

real f(real t){return (-K*om0/(sqrt(1-z*z)))*exp(-t*om0*z);}
path p=graph(f,0,25,operator ..);
draw(p,blue+linewidth(1));

draw("$\frac{K\omega_0}{\sqrt{1-\xi^2}}e^{-\xi\omega_0t}$",(2.8,0.5),black);
draw("$-\frac{K\omega_0}{\sqrt{1-\xi^2}}e^{-\xi\omega_0t}$",(2.8,-0.5),black);

draw("$\xi<1$",(20,-0.55),black);

//real f2(real t){return (K/tau)*(1-t/tau);}
//path p2=graph(f2,0,tau,operator ..);
//draw(p2,blue);

xaxis("$t$ ($s$)", BottomTop(), Ticks(Label("$%.2f$",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
yaxis("", LeftRight(), Ticks(Label("$%.2f$",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
//xaxis("$t$ ($s$)", BottomTop(), Ticks(Label(" ",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
//yaxis("", LeftRight(), Ticks(Label(" ",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));


//yequals("",1,blue);

yequals("",ymin,black);
yequals("",ymax,black);
xequals("",xmin,black);
xequals("",xmax,black);

//draw("$yt=\tau$",(tau,-0.1),black);
//draw("$K/\tau$",(-0.5,2),black);

//draw("$K/(e\tau)$",(-0.5,f(tau)),black);

//draw("$s(t)$",(4,0.2),red);
//draw("$y(t)$",(1.5,0.1),blue);


//pair a=(0,K/(tau*exp(1)));
//pair b=(tau,f(tau));
//pair c=(tau,0);
//path pp=a--b--c;
//draw(pp,dashed);


add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");


viewportsize=(390.0pt,0);
