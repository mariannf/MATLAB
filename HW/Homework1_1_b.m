


a=1;
y=2;
TOL=1e-6;
N0=30;
k=1;
FA=f(a);
while k<=N0;
    p=a+(y-a)/2;
    FP=f(p);
    if abs(FP)<TOL | (y-a)/2<TOL;
        p;
        num_dig = 6;
        n_rounded = round(p*(10^num_dig))/(10^num_dig);
        sprintf('%0.6f', p)
        
        
        
        break;
    end
    k=k+1;
    if FA*FP>0;
        a=p;
        FA=FP;
    else
        y=p;
    end
end
if k>30;
disp('Method Failed after N0 iterations');
N0;
end


 % The answer is : p= 1.169726371765137 %