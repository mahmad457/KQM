clear

Data(:,1) = xlsread('EGFR_Hist.xlsx', '20nM_1','A2:A21');
Data(:,2) = xlsread('EGFR_Hist.xlsx', '20nM_1','B2:B21');

Time = Data(:,1)';
Response = Data(:,2)';

i = 0;
dwell_times = [];
for t = Time
   i = i + 1;
   dwell_times = [dwell_times t.*ones(1,Response(i))];
    
end

B0 = [10 0.1 0.5 1];
lb = [10.^-4 10.^-4 0 1];
ub = [1000 1000 1 1];


global dt;
dt = dwell_times;
options=optimset('Display','off');
[A1, ~, exitflag, output, lambda, grad, hessian] = fmincon('negLS_Ind', B0,[],[],[],[],lb, ub, [], options);
covar = inv(hessian);
var = diag(covar)';
dev1 = sqrt(var);

L1 = -1.*negLS_Ind(A1);


B0 = [A1(1) 0 0 A1(2) 0.5 1];
lb = [10.^-4 0 0 10.^-4 0 1];
ub = [1000 1000 1000 1000 1 1];

options=optimset('Display','off');
[A2, fval, exitflag, output, lambda, grad, hessian] = fmincon('negLS_Dep', B0,[],[],[],[],lb, ub, [], options);
covar = inv(hessian);
var = diag(covar)';
dev2 = sqrt(var);

L2 = -1.*negLS_Dep(A2);

hold on
plot(Time, Response./sum(Response), 'g');
Range = (0:0.1:5);
plot(Range, f3State_Dep_lg(A2, Range),'r');
plot(Range, f3State_Ind_lg(A1, Range),'b');

R = L2 - L1
p = 1- chi2cdf(2.*R,    2)