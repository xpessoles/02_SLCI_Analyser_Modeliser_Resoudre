if(!settings.multipleView)
 settings.batchView=false;
defaultfilename="ordre2_dirac-1";
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

size(500,300,IgnoreAspect);

scale(Log,Log);

real xmin=0.01;
real xmax=1;
real ymin=0.01;
real ymax=1;

//real incX = 1;
//real incx = incX/10;
//real incY = 0.2;
//real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real pi = 3.14159265;

real tmax1 = 0.825;
real tmax2 = 0.58;
real tmax3 = 0.43;
real tmax4 = 0.34;
real tmax5 = 0.28;
real tmax6 = 0.235;
real tmax8 = 0.18;
real tmax10 = 0.145;


real k =1.;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax1,operator ..);
draw(p,red+linewidth(2));

real k =2;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax2,operator ..);
draw(p,red+linewidth(2));

real k =3;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax3,operator ..);
draw(p,red+linewidth(2));

real k =4;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax4,operator ..);
draw(p,red+linewidth(2));

real k =5;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax5,operator ..);
draw(p,red+linewidth(2));

real k =6;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax6,operator ..);
draw(p,red+linewidth(2));

real k =8;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax8,operator ..);
draw(p,red+linewidth(2));

real k =10;
real f(real t){return exp((-pi*k*t)/(sqrt(1-t*t)));}
path p=graph(f,0.01,tmax10,operator ..);
draw(p,red+linewidth(2));


//real f2(real t){return (K/tau)*(1-t/tau);}
//path p2=graph(f2,0,tau,operator ..);
//draw(p2,blue);

pen thin=linewidth(0.5*linewidth());
xaxis("Amortissement $\xi$",BottomTop,Ticks(Label("$%.2f$",black),begin=false,end=false, pTick=deepgray+linewidth(.75), ptick=mediumgray+linewidth(0.5), extend=true));
yaxis("D\'epassement",LeftRight,RightTicks(begin=false,end=false,  pTick=deepgray+linewidth(.75), ptick=mediumgray+linewidth(0.5), extend=true));

draw("$k$ : num\'ero de d\'epassement",(-1.5,-1.8),black);
draw(rotate(-75)*"$k=1$",(-0.05,-1.85),black);
draw(rotate(-70)*"$k=2$",(-0.2,-1.85),black);
draw(rotate(-65)*"$k=3$",(-0.35,-1.85),black);
draw(rotate(-65)*"$k=4$",(-0.44,-1.85),black);
draw(rotate(-65)*"$k=5$",(-0.53,-1.85),black);
draw(rotate(-65)*"$k=6$",(-0.62,-1.85),black);
draw(rotate(-65)*"$k=8$",(-0.71,-1.85),black);
draw(rotate(-65)*"$k=10$",(-0.83,-1.85),black);

//frame f;
//label(f,"This is some text",white,Fill(blue));
//add(rotate(-)*d);

//xaxis("$t$ ($s$)", BottomTop(), Ticks(Label("$%.2f$",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
//yaxis("", LeftRight(), Ticks(Label("$%.2f$",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));



yequals("",ymin,black+linewidth(.75));
yequals("",ymax,black+linewidth(.75));
xequals("",xmin,black+linewidth(.75));
xequals("",xmax,black+linewidth(.75));


//add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");


viewportsize=(390.0pt,0);
