function y = sklejanie(X,Y,x)
  len = length(X);
  a=Y(1:len-1);
  for k = 1:len-1
      b(k)= (Y(k+1)-Y(k))/(X(k+1)-X(k));
  end
  
  for(k=1:len-1);
      if x >= X(k) & x <= X(k+1)
          y = a(k)+b(k)*(x-X(k));
      end
  end
  
end
    