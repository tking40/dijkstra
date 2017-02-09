function plotNodes(nodeList)
    for i = 1:length(nodeList)
        node = nodeList(i);
        plot(node.coords(1),node.coords(2),'o')
        hold on
    end
    hold off
    grid on
    axis equal
    xlim([0 10])
    ylim([0 10])
end