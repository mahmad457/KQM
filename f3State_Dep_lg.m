function R = f3State_Dep_lg(B,time)
    %F3STATE_IND Summary of this function goes here
    %    PDF for the two closed state inter-conversion model.To be used for the
    %   maximum likelihood method. Has been optimized so there are no extra
    %   parameters 
    Q_BB = [-(B(1)+B(2)) B(2); B(3) -(B(3)+B(4))];
    phiB = [B(5) 1-B(5)];
    UB = [1;1];
    i = 0;
    assignin('base','test_time', time)
    R = zeros(size(time));
    for x = time
       i = i +1;
       t = (10.^x).*(10.^-3);
       
       exp_Q_BB = expm(t.*(Q_BB));
       R(i) = t.*B(6).*(phiB*exp_Q_BB*(-1.*Q_BB)*UB);
       
    end

end

