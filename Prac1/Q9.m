vy = 100:200;
vx = 50:0.5:100;
outcome = [0 0 0];


%distance = distance_from_target([1000, 1250], 10, [vx; vy]);


for vx0 = vx
    for vy0 = vx
       distance = distance_from_target([1000, 1250], 10, [vx0, vy0]);
       outcome = [outcome; vx0, vy0, sqrt(distance(1).^2 + distance(1).^2)];
         
    end 
end
outcome = outcome(2:end, :);

surf(outcome);
minimum = min(outcome);