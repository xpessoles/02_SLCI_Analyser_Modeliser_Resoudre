import graph;

size(400,300,IgnoreAspect);

real xmin=0;
real xmax=10;
real ymin=0;
real ymax=1.2;

real incX = 1;
real incx = incX/5;
real incY = 1;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 1.2;
real E = 1;
real tau = 2;

real f(real t){return (K*E)*(1-exp(-t/tau));}
path p=graph(f,0,10,operator ..);
draw(p,red+4bp);

real f2(real t){return (K*E*t/tau);}
path p2=graph(f2,0,tau,operator ..);
//draw(p2,blue+2bp);

//xaxis("$t$ ($s$)", BottomTop(), Ticks(Label("$%.2f$",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
//yaxis("", LeftRight(), Ticks(Label("$%.2f$",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
xaxis("$t$ ($s$)", BottomTop(), Ticks(Label(" ",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
yaxis("", LeftRight(), Ticks(Label(" ",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));


//yequals("",1,blue);

yequals("",ymin,black);
yequals("",ymax,black);
xequals("",xmin,black);
xequals("",xmax,black);

yequals("",1,black+2bp);



//draw("$t=\tau$",(tau,-0.1),black);
//draw("$t=3\tau$",(3*tau,-0.1),black);
//draw("$0,63 KE_0$",(-0.7,0.63*K),black);
//draw("$0,95 KE_0$",(-0.7,0.95*K),black);
//draw("$KE_0$",(-0.7,K+0.05),black);

//draw("$K/(e\tau)$",(-0.25,f(tau)),black);


//draw("$y(t)$",(1.5,0.1),blue);

draw("$e(t)=E_0$",(8,1.05),black);
draw("$s(t)$",(8,0.85),red);

pair a=(0,K*0.63);
pair b=(tau,f(tau));
pair c=(tau,0);
path pp=a--b--c;
//draw(pp,dashed);

pair d=(0,K);
pair e=(10,K);
path pp2=d--e;
//draw(pp2,dashed+red);

pair d=(0,0.95*K);
pair e=(3*tau,0.95*K);
pair f=(3*tau,00);
path pp2=d--e--f;
//draw(pp2,dashed+green);

pair g=(9,K);
pair h=(9,E);
path pp3=g--h;
//draw(pp3,dashed+purple,Arrow);
path pp4=h--g;
//draw(pp4,dashed+purple,Arrow);

//draw("$\varepsilon_S$",(8.5,0.95),purple);

add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");
