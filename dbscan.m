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
                ExpandCluster(index, Neighbors, cluster, eps, minPts)
            end  
        end
    end
    
    function ExpandCluster(index, Neighbors, cluster, eps, minPts)
        result(index) = cluster;
        temp = 1;
        
        for i = 1: Neighbors
            neighbor = Neighbors(temp);
            if visited(neighbor) == false
                visited(neighbor) = true;
                NeighborsSecond = regionQuery(neighbor);
                if numel(NeighborsSecond) >= minPts
                   Neighbors = [Neighbors NeighborsSecond]; 
                end
            end
            
            if result(neighbor) == 0
                result(neighbor) = cluster;
            end
            
            temp = temp + 1;
            if temp > numel(Neighbors)
                break;
            end
        end
    end

    function Neighbors = regionQuery(i)
        Neighbors = find(Dmatrix(i,:)<=eps);
    end
end