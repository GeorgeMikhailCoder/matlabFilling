function res = deleteRepeat(mass1, mass2)
% удаляет из mass1 все элементы, которые есть в mass2
% итерируется по второму массиву
% первый массив маленький, второй растёт

if (nargin==0)
   mass1 = [
     1     1;
     2     1;
     2     2;
     2     3;
     3     1;
     3     2;
       ];
   mass2 = [2 2;
       2 1];
end

mass = mass1;
mass3 = [];
for i = 1:size(mass2,1)
    L2 = (mass(:,1) == mass2(i,1) & mass(:,2) == mass2(i,2));
    k=0;
    for j=1:length(L2)
        if (L2(j))
           mass(j-k,:)=[]; 
           k=k+1;
        end
    end
%     L3 = logical(L2*ones(1,2));
%     mass(L3) = [];
%     mass = reshape(mass,[length(mass)/2 2]);
end
res = mass;
end