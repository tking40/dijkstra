function nodeList = generateMap()
    vertices = [1 3;
                1 4;
                2 6;
                3 2;
                3 5;
                4 8;
                5 6];

    nodeList = [];
    for i = 1:length(vertices)
        newNode = myNode([]);
        newNode.coords = vertices(i,:);
        nodeList = [nodeList newNode];
    end
    % create relation matrix
    len = length(nodeList);
    nlmat = zeros(len,len);
    for i = 1:len
        for j = 1:len
            nlmat(i,j) = norm(vertices(i,:) - vertices(j,:));
        end
    end
    
    for i = 1:len
        nodeList(i).nbDist = nlmat(i,:);
    end
    
    Ndist = 5;
    % add neighbors to each node's list
    for i = 1:len
        distvec = nodeList(i).nbDist;
        distvec(i) = inf;
        nodeList(i).neighbors = nodeList(distvec <= Ndist);
    end
end