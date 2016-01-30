function [result, noise] = dbscan(SetOfPoints, eps, minPts) 

    sizeOfCell = size(SetOfPoints,1);
    result = zeros(sizeOfCell,1);
    

    
    visited = false(sizeOfCell,1);
    noise = false(sizeOfCell,1);
end