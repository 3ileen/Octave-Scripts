function dy = derivada(f,x)
  h=0.00001;
  dy=(f(x+h)-f(x-h))./(2*h);
  endfunction