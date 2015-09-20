p0=1;
k=1;
N0=10;
TOL= 1e-8;

while k<= N0;
    p=p0-s(p0)/fd(p0);
    
    if abs(p-p0)<TOL;
       format long
       p;
        num_dig = 8;
        n_rounded = round(p*(10^num_dig))/(10^num_dig);
        sprintf('%0.8f', p)
       
        break;
        
    end

    k=k+1;

    p0=p;
end
 
    if k>N0;
        
    disp('Fail');
    N0;
    p;
    end

    