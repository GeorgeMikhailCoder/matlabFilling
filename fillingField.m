function res = fillingField(image, coord, porog)

if (nargin==2)
    porog = 10;
end
    fill1 = recStart(image, coord, porog);
    
    I = image;
    for i=1:size(fill1,1)
        I(fill1(i,1), fill1(i,2)) = 150;
    end
    
    res = fill1;
end

function res = recStart(image, coord, porog)
if (nargin==0)
image = [50 51 53 54 62;
       53 52 52 52 61;
       56 53 53 53 60;
       60 54 52 54 60;
       60 60 60 60 60];

coord = [2 2];
%    image = [
%        5 6 7;
%        4 2 3;
%        1 3 8
%        ]; 

porog = 4;
end

mass = coord;

% close all
% hold on
% axis([0 6 0 6])
% plot(coord(1), coord(2), 'g*')

res = recProcess(image,coord,mass,porog);

% x = 1:size(image,2);
% y = 1:size(image,1);
% [X,Y] = meshgrid(x,y)
% 
% plot(X,Y,'bo')
% 
% plot(res(:,2), res(:,1), 'r*')
% plot(coord(2), coord(1), 'g*')
end

function res = recProcess(image,curCoord,mass,porog)

massNew = processOne(image, curCoord, porog);
massNew = deleteRepeat2(massNew,mass);

mass = [mass;massNew];
% plot(massNew(:,2), massNew(:,1), 'r*')
% pause(0.5)
for i=1:size(massNew,1)
    curCoord = massNew(i,:);
    mass = recProcess(image, curCoord, mass, porog);
end
res = mass;
end



