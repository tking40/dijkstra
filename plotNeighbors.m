function plotNeighbors(node)
    hold on
    for nb = node.neighbors
        plot([nb.coords(1) node.coords(1)],[nb.coords(2) node.coords(2)],'b')
    end
    hold off
end