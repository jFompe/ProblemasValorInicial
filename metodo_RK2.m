function [xn,yn] = metodo_RK2(x0,y0,xfin,h,fun)
   
xn=x0:h:xfin;lxn=length(xn);
yn=zeros(1,lxn); yn(1)=y0;

for n=1:lxn-1
    k1 = feval(fun, xn(n), yn(n));
    k2 = feval(fun, xn(n)+h, yn(n)+k1*h);
    yn(n+1) = yn(n)+(k1+k2)*h/2;
end
return