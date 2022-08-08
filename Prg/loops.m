% 92000103073 - Raj Chhadia
a = 9;
%while loop execution 
while a < 20
   a = a + 1; 
   if a == 15
      % skip the iteration 
      continue;
   end 
fprintf('value of a: %d\n', a);
end