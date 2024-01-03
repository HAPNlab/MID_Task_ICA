clear all
clc


x = zeros(48, 60);


for sub = 1:48
    
    i = 1;
    j = 2;
    
    
    for comp = 1:30
        
        #load MID1_gain.txt or MID2_gain.txt
        load('MID1_gain.txt')
        #load sub%d_%dcomponent_mid_total1_30.mat or sub%d_%dcomponent_mid_total2_30.mat
        load(sprintf ('sub%d_%dcomponent_mid_total1_30.mat',sub,comp))
        
        [r, p] = corrcoef(MID2_gain, result);
        
        a = r(1,2);
        b = p(1,2);
        
        x(sub, i) = a;
        x(sub, j) = b;
        
        i = i+2;
        j = j+2;
    end
    
end
