if(!settings.multipleView)
 settings.batchView=false;
defaultfilename="ordre2_echelon_z-1";
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
real xmax=10;
real ymin=-0.1;
real ymax=1.6;

real incX = 1;
real incx = incX/5;
real incY = 0.2;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 1;
real tau = 1;
real om0 = 3;
real z = 0.2;
real t1 = 2;
real t2 = 1;

real f(real t){return K*(1-(exp(-z*om0*t)/(sqrt(1-z*z)))*sin(om0*t*sqrt(1-z*z)+acos(z)) );}
path p=graph(f,0,10,operator ..);
draw(p,red+linewidth(2));

z=0.4;
real f(real t){return K*(1-(exp(-z*om0*t)/(sqrt(1-z*z)))*sin(om0*t*sqrt(1-z*z)+acos(z)) );}
path p=graph(f,0,10,operator ..);
draw(p,orange+linewidth(2));


z=0.7;
real f(real t){return K*(1-(exp(-z*om0*t)/(sqrt(1-z*z)))*sin(om0*t*sqrt(1-z*z)+acos(z)) );}
path p=graph(f,0,10,operator ..);
draw(p,purple+linewidth(2));


real z=1.001;
real p1=-z*om0-om0*sqrt(z*z-1);
real p2=-z*om0+om0*sqrt(z*z-1);
real t1=-1/p1;
real t2=-1/p2;

real f(real t){return K*(1-(1/(t1-t2))*(t1*exp(-t/t1) -t2*exp(-t/t2) ) );}
path p=graph(f,0,10,operator ..);
draw(p,blue+linewidth(2));

real z=2.;
real p1=-z*om0-om0*sqrt(z*z-1);
real p2=-z*om0+om0*sqrt(z*z-1);
real t1=-1/p1;
real t2=-1/p2;

real f(real t){return K*(1-(1/(t1-t2))*(t1*exp(-t/t1) -t2*exp(-t/t2) ) );}
path p=graph(f,0,10,operator ..);
draw(p,olive+linewidth(2));

real z=10.;
real p1=-z*om0-om0*sqrt(z*z-1);
real p2=-z*om0+om0*sqrt(z*z-1);
real t1=-1/p1;
real t2=-1/p2;

real f(real t){return K*(1-(1/(t1-t2))*(t1*exp(-t/t1) -t2*exp(-t/t2) ) );}
path p=graph(f,0,10,operator ..);
draw(p,green+linewidth(2));


draw("$\xi=0,2$",(2.4,1.5),red);
draw("$\xi=0,4$",(2.4,1.3),orange);
draw("$\xi=0,7$",(2.4,1.1),purple);
draw("$\xi=1$",(1.35,0.75),blue);
draw("$\xi=2$",(1.5,0.4),olive);
draw("$\xi=10$",(7,0.55),green);




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


pair a=(0,0);
pair b=(1,0);
path pp=a--b;
draw(pp,linewidth(2)+blue,Arrow);


add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");


viewportsize=(390.0pt,0);
