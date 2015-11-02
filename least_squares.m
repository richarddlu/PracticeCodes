x = [1, 2, 2.3, 4.1, 5, 7, 7.2, 7.5, 8, 9];
y = [1.1, 2.3, 2.5, 4, 5.6, 7.1, 6.8, 8, 7.9, 9.1];

N = 10; % number of points
% assume the line is y = ax + b
% da is the partial derivative of a
% db is the partial derivative of b
da = 0;
db = 0;
a = sym('a');
b = sym('b');
for i = 1:N
    da = da -2*x(i)*y(i) + 2*x(i)^2 + 2*b*x(i);
    db = db -2*y(i) + 2*a*x(i) + 2*b;
end

% solve equations
s = solve(da, db);
a = s.a;
b = s.b;

line_x = 1:10;
line_y = a*line_x + b;
plot(x, y, '.'); hold on;
plot(line_x, line_y);