function R = f3State_Ind_lg(B,time)
    %F3STATE_IND Summary of this function goes here
    %   PDF for the two independent closed state model.Too be used for the
    %   maximum likelihood method. Has been optimized so there are no extra
    %   parameters 
    Q_BB = [-B(1) 0; 0 -B(2) ];
    phiB = [B(3) 1-B(3)];
    UB = [1;1];
    i = 0;
    assignin('base','test_time', time)
    R = zeros(size(time));
    for x = time
       i = i +1;
       t = (10.^x).*(10.^-3);
       
       exp_Q_BB = expm(t.*(Q_BB));
       R(i) = t.*B(4).*(phiB*exp_Q_BB*(-1.*Q_BB)*UB);
       
    end

end

