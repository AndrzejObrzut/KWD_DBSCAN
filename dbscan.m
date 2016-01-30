function [result, noise] = dbscan(x, eps, minPts) 

    sizeOfCell = size(x,1);
    result = zeros(sizeOfCell,1);
    
    D = pdist2(x,x);
    
    visited = false(sizeOfCell,1);
    noise = false(sizeOfCell,1);
end