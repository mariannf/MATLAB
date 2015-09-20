function[z]=s(x)
z=exp(1)^x+sin(x)-4;

function[p]=fd(x)
p=exp(1)^x+cos(x);


p0=0;
k=1;
N0=50;
TOL= 1e-006;

while k<= N0;
    p=p0-s(p0)/fd(p0);
    
    if abs(p-p0)<TOL;
       format long
       p
        break;
        
    end

    k=k+1;

    p0=p;
end
 
    if k>N0;
             
    disp('Fail');
    N0;
    p
    end
    
    
    
    % The answer is: p = 1.129980498650837 %

    