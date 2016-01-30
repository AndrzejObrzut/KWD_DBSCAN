function [result, noise] = dbscan(SetOfPoints, eps, minPts) 

    claster = 0;
    sizeOfCell = size(SetOfPoints,1);
    result = zeros(sizeOfCell,1);
  
    Dmatrix = pdist2(SetOfPoints,SetOfPoints);

    visited = false(sizeOfCell,1);
    noise = false(sizeOfCell,1);
 
    
    for index = 1 : sizeOfCell
        if visited(index) == false
            visited(index) = true;
            
            Neighbors = regionQuery(index);
            if numel(Neighbors) < minPts
                noise(index) = true;
            else
                claster = claster + 1;
                %przeszukaæ claster
                ExpandCluster(SetOfPoints, Neighbors, cluster, eps, minPts)
            end
              
        end
    end
    
    function ExpandCluster(SetOfPoints, Neighbors, cluster, eps, minPts)
    end

    function Neighbors = regionQuery(i)
        Neighbors = find(Dmatrix(i,:)<=epsilon);
    end
end