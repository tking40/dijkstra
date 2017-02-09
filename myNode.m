% QLIST test

classdef myNode < handle
    properties
      name = '';
      dist = inf;
      prev = [];
      neighbors = [];
      coords = [];
      nbDist = [];
    end
    methods
        function addNeighbor(obj, nb, dist)
            obj.neighbors = [obj.neighbors nb];
            obj.nbDist = [obj.nbDist dist];
        end
        function obj = myNode(name)
            obj.name = name;
        end
    end
end