function [t,y]=rk3(f,t0,y0,T,p)
  h=T/p;
  t=zeros(p+1,1);
  y=zeros(p+1,1);
  t(1)=t0;
  y(1)=y0;
  for k=2:p+1
    t(k)=t(k-1)+h;
    k1=h*(f(t(k-1),y(k-1)));
    k2=h*(f(t(k-1)+h*(1/2),y(k-1)+k1*(1/2)));
    k3=h*(f(t(k-1)+h*(3/4),y(k-1)+k2*(3/4)));
    y(k)=y(k-1)+(2/9)*k1+(1/3)*k2+(4/9)*k3;
  endfor
  plot(t,y,'*'),grid;
  d=[t,y];
endfunction
