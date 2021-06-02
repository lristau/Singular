LIB "tst.lib"; tst_init();
  ring R=0,(x,y,z),dp;
  poly f=x3+y7+z2+xyz;
  ideal i=jacob(f);
  matrix T;
  ideal sm=liftstd(i,T);
  sm;
  print(T);
  matrix(sm)-matrix(i)*T;
  module s;
  sm=liftstd(i,T,s);
  size(module(matrix(sm)-matrix(i)*T))==0;
  size(module(matrix(i)*matrix(s)))==0;
  print(s);
  sm=liftstd(i,T,s,"std");
  print(s);
  sm=liftstd(i,T,s,"slimgb");
  print(s);
  size(module(matrix(sm)-matrix(i)*T))==0;
  size(module(matrix(i)*matrix(s)))==0;
tst_status(1);$
