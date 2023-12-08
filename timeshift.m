function ts = timeshift(func, x, t);

for i = t: (length(x)-t+1)
    func(i-t+1) = func(i+1); % all elements are shifted t amount
end

for j = (length(x)-t-2):(length(x))
    func(j)=0; %t elements at the end are made 0
end

ts = func;
end

