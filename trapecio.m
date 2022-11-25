function A=trapecio(f,a,b,n)
  h=(b-a)/n;
  A=f(a)+f(b);
  for k=1:n-1
    A=A+2*f(a+k*h);
  end
  A=h*A/2;
end
