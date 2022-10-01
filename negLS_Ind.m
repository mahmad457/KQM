function L = negLS_Ind(B)
%LIKELIHOOD_SUM Summary of this function goes here
%   Calculates the negative Likelihood Sum of the case where all two
%   closed states are independent
global dt;
R = f3State_Ind_lg(B,dt);
L = -1.*sum(log(R));

end

