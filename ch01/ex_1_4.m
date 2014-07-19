% This exercise creates a random target function f. Generates 20 samples, and then applies
% the perceptron algorithm to predict

% Generate 20 random points between -10 and 10
x=[ones(20,1) 20.*rand(20,2)-10];

% Initial w for f
w0 = [1; 2; 4];

% Obtain their f(x)
for i = 1:20
    y(i) = f(x(i,:)',w0);
end
y = y';

% Plot our sample
plot(x(:,2)(y>0),x(:,3)(y>0),'ro');
hold on;
plot(x(:,2)(y<0),x(:,3)(y<0),'bx');

% Plot target f in black
axis=-10:0.1:10;
fline=(-w0(1)/w0(3))-(w0(2)/w0(3))*axis;
plot(axis,fline,'k');


% Use perceptron to calculate g
w = perceptron(x,y);

% Plot g in green
gline=(-w(1)/w(3))-(w(2)/w(3))*axis;
plot(axis,gline,'g');
legend('+1', '-1', 'f', 'g','location','north');
legend('boxoff');
hold off;