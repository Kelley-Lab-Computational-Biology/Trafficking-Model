meanbins = ceil(bins/2);
% % Pheromone - normal dist
% if mod(bins,2)==0 %if N is an even number
%     p=[0:1:meanbins-1,meanbins-1:-1:0];
% else
%     p=[0:1:meanbins,meanbins-1:-1:0];
% end
%uniform
p=ones(1,bins);
phe=p;

%steep gradient
% phe=circshift([[1:(meanbins)]./(meanbins), fliplr([1:(meanbins)]./(meanbins))],floor(bins/4));
%shallow gradient
phe=circshift([[1:(meanbins)]./(meanbins*10), fliplr([1:(meanbins)]./(meanbins*10))],floor(bins/4))+0.9;
phepercent=1;