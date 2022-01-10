function [img, mass] = imFill(image, coord, color, porog)
if (nargin==3)
    porog = 10;
end
fill1 = fillingField(image, coord, porog);
I = image;
for i=1:size(fill1,1)
    I(fill1(i,1), fill1(i,2)) = color;
end
mass = fill1;
img = I;
end