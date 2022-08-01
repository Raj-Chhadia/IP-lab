% 92000103073 - Raj Chhadia
% Logical Operators
a = 5;
b = 20;
   if ( a && b )
      disp('Line 1 - Condition is true');
   end
   if ( a || b )
      disp('Line 2 - Condition is true');
   end

a = 0;
b = 10;
   
   if ( a && b )
      disp('Line 3 - Condition is true');
   else
      disp('Line 3 - Condition is not true');
   end
   if (~(a && b))  
      disp('Line 4 - Condition is true');
   end