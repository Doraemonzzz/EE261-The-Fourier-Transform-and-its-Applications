function p = find_p(ratio, alpha)
%计算满足比率小于alpha的元素个数
p = length(find(ratio < alpha));