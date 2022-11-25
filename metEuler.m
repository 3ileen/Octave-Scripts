function [t,y] = metEuler (f,t0,y0,T,P)
h = T/P;
t = zeros(1,p+1);
y = zeros(1,p+1);
t(1) = t0;
y(1) = y0;
for n = 2 : p+1
  t(n) = t(n-1)+h;
  y(n) = y(n-1) + h * f(t(n-1),y(n-1));
end
plot(t,y,'*')
end

function [t,y] = metTaylor (f,t0,y0,T,P,fy,ft)
h = T/P;
t = zeros(1,p+1);
y = zeros(1,p+1);
t(1) = t0;
y(1) = y0;
for n = 2 : p+1
  t(n) = t(n-1)+h;
  y(n) = y(n-1) + f(t(n-1),y(n-1))*h+ h^2/2*ft(t(n-1),y(n-1))+fy(t(n-1),y(n-1))-f(t(n-1),y(n-1));
end
plot(t,y,'*')
end
