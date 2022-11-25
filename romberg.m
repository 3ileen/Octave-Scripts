function A=romberg(f,a,b,error)
  r(1,1)=trapecio(f,a,b,1);
  r(2,1)=trapecio(f,a,b,2);
  r(2,2)=(4*r(2,1)-r(1,1))/3;
  i=2;
  while abs(r(i,i)-r(i,i-1))>=error
    i=i+1;
    r(i,1)=trapecio(f,a,b,2^(i-1));
    for j=2:i
      r(i,j)=(4^(j-1)*r(i,j-1)-r(i-1,j-1))/(4^(j-1)-1);
    end
  end
  A=r(i,i);
  
end
