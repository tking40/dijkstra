function [yesno, i] = isNode(a, coords)
yesno = 0;
for i = 1:length(a)
    if all(a(i).coord == coords)
        yesno = 1;
        return
    end
end
end