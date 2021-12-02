
M=10;
h=0.1;
d=75;
v_m=25;
cars=zeros(1,M);

%Fyller på med bilar
for i =1:M
    cars(i)=d*i;
end
   
for j=1:400
    % Bien längst fram beräknas och plottas
    hold on
    if j>1
    plot([j-1 j], [cars(M) cars(M)+5*h] ,'b');
    end
    cars(M)=cars(M)+5*h;
   
    
    %Resterande bilar beräknas och plottas
    for i=1:(M-1)
        old=cars(M-i);
        for k=1:10
        cars(M-i)=old+h*f(cars(M-i+1)-cars(M-i));
        end
        
    
      
        if j>1
        plot([j-1 j], [old  cars(M-i)],'b');
        
    end
    end
   
    
end
hold off

