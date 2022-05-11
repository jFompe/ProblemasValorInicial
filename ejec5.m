[t,y]=ode45(@fun5,[0,10],[0,0.8]);
plot(t,y,'.')  % la solución numérica