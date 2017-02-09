function megaPlot()
NL = generateMap();
n = ceil(sqrt(length(NL)));
for i = 1:length(NL)
    subplot(n*100 + n*10 + i)
    plotNodes(NL)
    hold on
    plotNeighbors(NL(i))
    ft=['Node ' num2str(i)];
    title(ft)
%     f.Name=ft;
end
end