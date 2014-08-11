if(!settings.multipleView)
 settings.batchView=false;
defaultfilename="ordre1_echelon_exo1-1";
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
real xmax=5;
real ymin=0;
real ymax=30.;

real incX = 1;
real incx = incX/5;
real incY = 10;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 7.5;
real E = 4.;
real tau = 0.5;

real f(real t){return (K*E)*(1-exp(-t/tau));}
path p=graph(f,0,5,operator ..);
draw(p,red);



xaxis("$t$ ($s$)", BottomTop(), Ticks(Label("$%.2f$",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
yaxis("", LeftRight(), Ticks(Label("$%.2f$",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));



//yequals("",1,blue);

yequals("",ymin,black);
yequals("",ymax,black);
xequals("",xmin,black);
xequals("",xmax,black);

yequals("",E,black);




add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");


viewportsize=(390.0pt,0);
