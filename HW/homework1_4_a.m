function[z]=s(x)
z=(x^3)-(2*x)-2;


function[p]=fd(x)
p=(3*(x^2))-2;

p0=1;
k=1;
N0=10;
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
    p;
    end

 % The answer is : p=  1.769292354238631 %