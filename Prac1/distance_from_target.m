function [distance] = distance_from_target(target_position, time, initial_velocity)
    
    g = -9.81;
    %vx0 = initial_velocity(1);
    x_miss = initial_velocity.*time - target_position(1);
    y_miss = initial_velocity(2).*time - 0.5*g*time.^2 - target_position(2);
    %missile_position = [x_miss, y_miss];
    distance = [(target_position(1)-x_miss), (target_position(2)-y_miss)];
    return;
end

