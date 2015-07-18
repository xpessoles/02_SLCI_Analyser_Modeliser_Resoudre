if(!settings.multipleView)
 settings.batchView=false;
defaultfilename="ordre2_echelon_c2-1";
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
real xmax=6;
real ymin=0;
real ymax=14;

real incX = 1.;
real incx = incX/5;
real incY = 2;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 12;
real tau = 1;
real om0 = 5;
real z = 0.6;
real t1 = 2;
real t2 = 1;

real f(real t){return K*(1-(exp(-z*om0*t)/(sqrt(1-z*z)))*sin(om0*t*sqrt(1-z*z)+acos(z)) );}
path p=graph(f,0,6,operator ..);
draw(p,red+linewidth(2));
//draw("$s(t)=3\left[ 1 -\frac{e^{-0,2 \times 3 \times t}}{\sqrt{1-0,2^2}}\cdot\sin\left( 3 //\sqrt{1-0,2^2}t+\arccos{0,2}\right)\right]
//$",(6,1.75),black);


real f(real t){return K*(1-(exp(-z*om0*t)/(sqrt(1-z*z))) );}
path p=graph(f,0,10,operator ..);
//draw(p,purple+linewidth(1));

yequals("e(t)",1,blue+linewidth(2));

real f(real t){return K*(1+(exp(-z*om0*t)/(sqrt(1-z*z))) );}
path p=graph(f,0,10,operator ..);
//draw(p,purple+linewidth(1));

//draw("$K\left( 1 + \frac{e^{-\xi \omega_0 t}}{\sqrt{1-\xi^2}}\right)$",(2,5.25),black);
//draw("$K\left( 1 - \frac{e^{-\xi \omega_0 t}}{\sqrt{1-\xi^2}}\right)$",(2,0.75),black);

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


pair a=(1.1,3);
pair b=(1.1,4.55);
path pp=a--b;




pair a=(2.15,3);
pair b=(2.15,2.2);
path pp=a--b;
//draw(pp,linewidth(1)+blue,Arrow);

pair a=(3.2,3);
pair b=(3.2,3.4);
path pp=a--b;
//draw(pp,linewidth(1)+blue,Arrow);


//draw("$D_1$",(1.1,2.8),blue);
//draw("$D_2$",(2.15,3.2),blue);
//draw("$D_3$",(3.2,2.8),blue);

add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");


viewportsize=(390.0pt,0);
