function [xn,yn] = metodo_RK4(x0,y0,xfin,h,fun)
   
xn=x0:h:xfin;lxn=length(xn);
yn=zeros(1,lxn); yn(1)=y0;

for n=1:lxn-1
    k1 = feval(fun, xn(n), yn(n));
    k2 = feval(fun, xn(n)+h/2, yn(n)+k1*h/2);
    k3 = feval(fun, xn(n)+h/2, yn(n)+k2*h/2);
    k4 = feval(fun, xn(n)+h, y+k3*h);
    yn(n+1) = yn(n)+(k1+2*k2+2*k3+k4)*h/6;
end
return