r=imread('cameraman.tif');

subplot(2,2,1);
    imhist(r);
    title('histogram-normal');
    
    subplot(2,2,2);
    q = bar (p);
    title('histogram-bar');
    
    subplot(2,2,3);
    s = plot(p);
    title('histogram-plot');
    
    subplot(2,2,4);
    t = stem (p);
    title('histogram-stem');