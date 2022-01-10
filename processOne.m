function res = processOne(image, coord, porog)
% Возвращает координаты всех соседей, удовлетворяющих условию порога
if (nargin==0)
   image = [
       5 6 7;
       4 2 3;
       1 3 8
       ]; 
   porog = 4;
   coord = [2 2];
end

x = coord(1);
y = coord(2);

pixCenter = int16(image(x,y));

mass = [];
for i=-1:1
    for j=-1:1
        if( (x+i<1) || (y+j<1) || ...
            x+i>size(image,1) ||  y+j>size(image,2) ) 
            continue;
        end
        
        pixCur = int16(image(x+i,y+j));
        
        if (abs(pixCur - pixCenter)<porog)
            mass = [mass;[x+i,y+j]];
        end
    end
end
res = mass;
end