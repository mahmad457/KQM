function L = negLS_Dep(B)
%NEGLS_DEP Summary of this function goes here
%   Calculates the negative Likelihood Sum of the case where the two
%   closed states have interconversion
global dt;
R = f3State_Dep_lg(B,dt);
L = -1.*sum(log(R));

end

