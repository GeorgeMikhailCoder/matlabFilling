function res = deleteMass2(mass1,mass2)
% удаляет из mass1 все элементы, которые есть в mass2
% итерируется по первому массиву
% первый массив маленький, второй растёт

if (nargin==0)
mass1 = [1 1;
         1 2;
         1 3;
         2 1;
         2 2;
         2 3;
         3 1;
         3 2;
         3 3];
mass2 = [2     2;
     1     1;
     1     2;
     1     3;
     
     2     3;
     3     2;
     1     4;
     2     4;
     3     4;
     4     3;
     4     4;
     4     2;
     3     1];
% ответ - [2 1;
%             3 3]
end

 mass3 = [];
for i=1:size(mass1,1)
    L1 = (mass2(:,1) == mass1(i,1) & mass2(:,2) == mass1(i,2));
    if (~sum(L1))
        mass3 = [mass3; mass1(i,:)];
    end
end

res = mass3;
end



     