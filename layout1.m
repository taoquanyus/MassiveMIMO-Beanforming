function layout(obj)
% LAYOUT  Display the array layout in the X-Y Plane
%
% layout (harray) displays the array layout in the figure
% window. The circle correspond to the antenna feed points
% within the array.
%
% Examples
%
% % Example1: Create a 3x3 rectangular array and visualize its
% % layout on the X-Y plane
%
% h = rectangularArray('Size', [3 3]);
% layout(h)
%
%
% See also <a href="matlab:help em.MeshGeometry.mesh">mesh</a>,<a href="matlab:help em.MeshGeometry.show">show</a>

% Copyright 2014 The MathWorks, Inc.


createGeometry(obj);
if getNumFeedLocations(obj) ==1
    error(message('antenna:antennaerrors:InvalidMethod','layout'));
end

dynamicPropState = getDynamicPropertyState(obj);
if ~isa(obj,'conformalArray')
    if dynamicPropState
        ZeroGPState = (isequal(obj.GroundPlaneLength,0))||               ...
            (isequal(obj.GroundPlaneWidth,0));
        % If no GP, reset GP flag - need to rename this.
        if ZeroGPState
            dynamicPropState = ~dynamicPropState;
        end
    end
    
    if isa(obj, 'linearArray')
        rowspacing      = [];
        colspacing      = obj.ElementSpacing;
    elseif isa(obj, 'rectangularArray')
        rowspacing      = obj.RowSpacing;
        colspacing      = obj.ColumnSpacing;
    end
else
    dynamicPropState = false;
end

ArrayLocation = obj.FeedLocation;
xmin  = min(ArrayLocation(:,1));
xmax  = max(ArrayLocation(:,1));
ymin  = min(ArrayLocation(:,2));
ymax  = max(ArrayLocation(:,2));
zmin  = min(ArrayLocation(:,3));
zmax  = max(ArrayLocation(:,3));

geometry            = [];
hfig = gcf;
if ~isempty(get(groot,'CurrentFigure'))
    clf(gcf);
end
if (dynamicPropState)  
    if ~any(any(arrayfun(@getInfGPState,obj.Element)))
        xmin_GP         = -obj.GroundPlaneLength/2;
        xmax_GP         = obj.GroundPlaneLength/2;
        ymin_GP         = -obj.GroundPlaneWidth/2;
        ymax_GP         = obj.GroundPlaneWidth/2;
        geometry.BorderVertices  = [xmin_GP ymin_GP 0;                  ...
            xmax_GP ymin_GP 0; xmax_GP ymax_GP 0; xmin_GP ymax_GP 0];
        geometry.BorderVertices = orientGeom(obj,geometry.BorderVertices')';
        geometry.polygons        = {1:4};
        geometry.doNotPlot       = 0;
        xmin  = min(xmin,xmin_GP);
        xmax  = max(xmax,xmax_GP);
        ymin  = min(ymin,ymin_GP);
        ymax  = max(ymax,ymax_GP);
    else
        addinfinitegp(obj);
        hold on;
    end
end

diffx = mean(abs(diff(ArrayLocation(:,1))));
diffy = mean(abs(diff(ArrayLocation(:,2))));
diffz = mean(abs(diff(ArrayLocation(:,3))));

xmin = xmin - diffx; xmax = xmax + diffx;
zmin = zmin - diffz; zmax = zmax + diffz;
if diffy(1) == 0
    ymin = ymin - diffx; ymax = ymax + diffx;
else
    ymin = ymin - diffy; ymax = ymax + diffy;
end

% Plot the information
if ~isempty(geometry)
    antennaColor = [223, 185, 58]/255;
    em.MeshGeometry.view_antenna_boundary(geometry, antennaColor)
    hold on
end

% Add filled circles for feed location
h = scatter3(ArrayLocation(:,1),ArrayLocation(:,2),                 ...
    ArrayLocation(:,3),100,'fill');

h.MarkerEdgeColor = 'k';
h.MarkerFaceColor = 'b';
h.LineWidth = 1;

if isa(obj, 'linearArray')
    if isequal(obj.Tilt,0)
        diffx = 0;
        diffy = -min(colspacing);
        diffz = 0;
    end
    
elseif isa(obj, 'rectangularArray')
    if isequal(obj.Tilt,0)
        diffx = min(min(rowspacing, colspacing));
        diffy = 0;
        diffz = 0;
    end   
end

text(ArrayLocation(:,1)+ 0.1*diffx ,ArrayLocation(:,2)+ 0.1*diffy,  ...
        ArrayLocation(:,3)+ 0.1*diffz,                                  ...
        num2str((1:size(ArrayLocation,1)).'), 'Color', 'k');

grid on;

% Add lables to the axis
xlabel('x (m)');
ylabel('y (m)');
title('Array layout');

if diffz == 0
    if ~getInfGPState(obj) && diffx >0 && diffy>0
        axis([xmin xmax ymin ymax]);
    end
    view(2);
else
    view(3);
    if (xmin ~= xmax) && (ymin ~= ymax) && (zmin ~= zmax)
        axis([xmin xmax ymin ymax zmin zmax]);
    end
    zlabel('z (m)');
end
% set(hfig,'toolbar','figure'); % show standard toolbar
% cameratoolbar(hfig,'hide'); % Hide camera toolbar
axis(gca, 'equal');
if isFigureBroughtForward(obj,hfig)
    shg;
end

end% of layoutfunction layout(obj)
% LAYOUT  Display the array layout in the X-Y Plane
%
% layout (harray) displays the array layout in the figure
% window. The circle correspond to the antenna feed points
% within the array.
%
% Examples
%
% % Example1: Create a 3x3 rectangular array and visualize its
% % layout on the X-Y plane
%
% h = rectangularArray('Size', [3 3]);
% layout(h)
%
%
% See also <a href="matlab:help em.MeshGeometry.mesh">mesh</a>,<a href="matlab:help em.MeshGeometry.show">show</a>

% Copyright 2014 The MathWorks, Inc.


createGeometry(obj);
if getNumFeedLocations(obj) ==1
    error(message('antenna:antennaerrors:InvalidMethod','layout'));
end

dynamicPropState = getDynamicPropertyState(obj);
if ~isa(obj,'conformalArray')
    if dynamicPropState
        ZeroGPState = (isequal(obj.GroundPlaneLength,0))||               ...
            (isequal(obj.GroundPlaneWidth,0));
        % If no GP, reset GP flag - need to rename this.
        if ZeroGPState
            dynamicPropState = ~dynamicPropState;
        end
    end
    
    if isa(obj, 'linearArray')
        rowspacing      = [];
        colspacing      = obj.ElementSpacing;
    elseif isa(obj, 'rectangularArray')
        rowspacing      = obj.RowSpacing;
        colspacing      = obj.ColumnSpacing;
    end
else
    dynamicPropState = false;
end

ArrayLocation = obj.FeedLocation;
xmin  = min(ArrayLocation(:,1));
xmax  = max(ArrayLocation(:,1));
ymin  = min(ArrayLocation(:,2));
ymax  = max(ArrayLocation(:,2));
zmin  = min(ArrayLocation(:,3));
zmax  = max(ArrayLocation(:,3));

geometry            = [];
hfig = gcf;
if ~isempty(get(groot,'CurrentFigure'))
%     clf(gcf);
end
if (dynamicPropState)  
    if ~any(any(arrayfun(@getInfGPState,obj.Element)))
        xmin_GP         = -obj.GroundPlaneLength/2;
        xmax_GP         = obj.GroundPlaneLength/2;
        ymin_GP         = -obj.GroundPlaneWidth/2;
        ymax_GP         = obj.GroundPlaneWidth/2;
        geometry.BorderVertices  = [xmin_GP ymin_GP 0;                  ...
            xmax_GP ymin_GP 0; xmax_GP ymax_GP 0; xmin_GP ymax_GP 0];
        geometry.BorderVertices = orientGeom(obj,geometry.BorderVertices')';
        geometry.polygons        = {1:4};
        geometry.doNotPlot       = 0;
        xmin  = min(xmin,xmin_GP);
        xmax  = max(xmax,xmax_GP);
        ymin  = min(ymin,ymin_GP);
        ymax  = max(ymax,ymax_GP);
    else
        addinfinitegp(obj);
        hold on;
    end
end

diffx = mean(abs(diff(ArrayLocation(:,1))));
diffy = mean(abs(diff(ArrayLocation(:,2))));
diffz = mean(abs(diff(ArrayLocation(:,3))));

xmin = xmin - diffx; xmax = xmax + diffx;
zmin = zmin - diffz; zmax = zmax + diffz;
if diffy(1) == 0
    ymin = ymin - diffx; ymax = ymax + diffx;
else
    ymin = ymin - diffy; ymax = ymax + diffy;
end

% Plot the information
if ~isempty(geometry)
    antennaColor = [223, 185, 58]/255;
    em.MeshGeometry.view_antenna_boundary(geometry, antennaColor)
    hold on
end

% Add filled circles for feed location
h = scatter3(ArrayLocation(:,1),ArrayLocation(:,2),                 ...
    ArrayLocation(:,3),100,'fill');

h.MarkerEdgeColor = 'k';
h.MarkerFaceColor = 'b';
h.LineWidth = 1;

if isa(obj, 'linearArray')
    if isequal(obj.Tilt,0)
        diffx = 0;
        diffy = -min(colspacing);
        diffz = 0;
    end
    
elseif isa(obj, 'rectangularArray')
    if isequal(obj.Tilt,0)
        diffx = min(min(rowspacing, colspacing));
        diffy = 0;
        diffz = 0;
    end   
end

text(ArrayLocation(:,1)+ 0.1*diffx ,ArrayLocation(:,2)+ 0.1*diffy,  ...
        ArrayLocation(:,3)+ 0.1*diffz,                                  ...
        num2str((1:size(ArrayLocation,1)).'), 'Color', 'k');

grid on;

% Add lables to the axis
xlabel('x (m)');
ylabel('y (m)');
title('Array layout');

if diffz == 0
    if ~getInfGPState(obj) && diffx >0 && diffy>0
        axis([xmin xmax ymin ymax]);
    end
    view(2);
else
    view(3);
    if (xmin ~= xmax) && (ymin ~= ymax) && (zmin ~= zmax)
        axis([xmin xmax ymin ymax zmin zmax]);
    end
    zlabel('z (m)');
end
% set(hfig,'toolbar','figure'); % show standard toolbar
% cameratoolbar(hfig,'hide'); % Hide camera toolbar
axis(gca, 'equal');
if isFigureBroughtForward(obj,hfig)
    shg;
end

end% of layout