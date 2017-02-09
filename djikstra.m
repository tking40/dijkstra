% djiktra

%grab pre-made node map
NL = generateMap();
%establish list of unvisited nodes
remNodes = 1:length(NL);
while ~isempty(remNodes)
    NL_rem = NL(remNodes);
    %find next node with closest distance
    minD_ind = findMinCoord(NL_rem);
    u = NL_rem(minD_ind);
    remNodes(minD_ind) = [];
    [~, minD_ind] = isNode(Q, u.coord);
    neighbors = findNeighbors(Q, minD_ind);
    for v = neighbors
        alt = u.dist + norm(NL(v).coord - u.coord);
        if alt < NL(v).dist
            NL(v).dist = alt;
            NL(v).prev = minD_ind;
        end
    end
end

for i = 1:length(Q)
    xy = NL(i).coord;
    plot(xy(1),xy(2),'ro')
    hold on
end
prev_ind = NL(end).prev;
Qcur = NL(end);
while ~isempty(prev_ind)
    Qprev = NL(prev_ind);
    plot([Qcur.coord(1); Qprev.coord(1)], [Qcur.coord(2); Qprev.coord(2)], 'b')
    prev_ind = Qprev.prev;
    Qcur = Qprev;
end
axis equal
xlim([0 n])
ylim([0 n])
hold off