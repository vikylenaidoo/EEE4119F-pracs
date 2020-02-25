clear;

%Part a 
%data = uiimport('data.csv');
data = importfile('data.csv');
t = 0:0.1:length(data.GndSpeed)/10-0.1;
plot(t, data.GndSpeed);

%Part b
[max_velocity, i] = max(data.GndSpeed);
time_max_velocity = t(i);

%Part c
acceleration = diff(data.GndSpeed)/0.1;
avg_acc = sum(acceleration(1:i));
