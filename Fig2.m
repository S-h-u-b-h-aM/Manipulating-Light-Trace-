% Runaway but we runnin' in CIRCLE, runaway, runaway.... 
u = linspace(-5, 5, 500);
[x, y] = meshgrid(u, u);
r_0 = 5;
X = [];     Y = [];
n = mu(x, y);
figure;
mesh(x, y, n);
xlabel('x/r_0');
ylabel('y/r_0');
zlabel('\mu');
title('Variable Refractive Index');
% axis equal;
axis tight;
% axis square;
box on;
grid on;
% 
figure;
t = linspace(0, 2*pi, 100);
X(:, 1) = 1*cos(t)' ; Y(:, 1) = 1*sin(t)';
X(:, 2) = 2*cos(t)' ; Y(:, 2) = 2*sin(t)';
X(:, 3) = 3*cos(t)' ; Y(:, 3) = 3*sin(t)';
hold on;
contourf(x, y, n, 100, 'LineColor', 'None');
plot(X(:, 1), Y(:, 1), 'b', 'LineWidth', 2);
plot(X(:, 2), Y(:, 2), 'w', 'LineWidth', 2);
plot(X(:, 3), Y(:, 3), 'g', 'LineWidth', 2);
plot([1 2 3], [0 0 0], 'r*', 'LineWidth', 1);
colorbar
hold off;
legend('GRIN contour','Light ray','Light ray','Light ray', 'Source',...
    'location', 'best');
xlabel('x/r_0');
ylabel('y/r_0');
title('Light path in GRIN');