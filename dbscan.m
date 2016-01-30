function [result, noise] = dbscan(x, eps, minPts) 

    sizeOfCell = size(x,1);
    result = zeros(n,1);
    
    D = pdist2(x,x);
    
    visited = false(n,1);
    noise = false(n,1);
end