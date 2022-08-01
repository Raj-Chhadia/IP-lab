n=input('Enter n: ');
for i = 1:n
    for j=i:n
        fprintf(' ');
    end
    
    for j=1:i
        fprintf('*');
    end
    
    for j=1:i-1
        fprintf('*');
    end   
    
    fprintf('\n');
end

for i = 2:n
    for j=1:i
        fprintf(' ');
    end
    
    for j=i:n
        fprintf('*');
    end
    
    for j=i:n-1
        fprintf('*');
    end   
    
    fprintf('\n');
end

% crop
% F = imread('peppers.png');
% I = imcrop(F,[150 150 100 100]);
% imshow(I)
% imagesc(I)
% title('peppers');