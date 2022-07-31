marks = input('Enter Marks : ');
if (marks >= 70)
    fprintf('Distinction');
    
    elseif((60<=marks)&&(marks<70))
        fprintf('Class 1');
        
    elseif((50<=marks)&&(marks<60))
        fprintf('Class 2');
    
    elseif((40<=marks)&&(marks<50))
        fprintf('Pass');
        
    elseif(40<marks)
        fprintf('Fail');
end