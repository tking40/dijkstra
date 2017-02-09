function minD_ind = findMinCoord(Nlist)
minD = inf;
minD_ind = 1;
for i = 1:length(Nlist)
    if Nlist(i).dist < minD
        minD = a(i).dist;
        minD_ind = i;
    end
end
end