function neighbors = findNeighbors(Nlist, startIndex, Ndist)

neighbor_locs = [];
for i = 1:length(NL)
    NL(i).neighbors = NL(NL(i).nbDist <= Ndist);
end

neighbors = neighbor_locs;
neighbors(neighbor_locs == startIndex) = [];

%plotting
% plotNeighbors(a, u, neighbors)
end