% EXPONENTIAL light trace
u = linspace(-3, 3, 200);
[x, y] = meshgrid(u, u);
n = sqrt(1 + y.^2);
mesh(x, y, n);
xlabel('X\rightarrow');
ylabel('Y\rightarrow');
zlabel('\mu(x, y)');
title('Gradient refractive index');
box on;
grid on;
axis tight;
view(90, 0);
figure;
box on;
hold on;
contourf(x, y, n, 100, 'LineColor', 'None');
colorbar;
y1 = exp(u);    y2 = exp(-u);
y3 = -exp(u);   y4 = -exp(-u);
plot([-3 3 -3 3], [exp(-3) exp(-3) -exp(-3) -exp(-3)], 'r*');
plot(u, y1, 'w', u, y2, 'w', u, y3, 'w', u, y4, 'w', 'LineWidth', 2);
hold off;
axis([-3 3 -3 3]);
xlabel('X\rightarrow');
ylabel('Y\rightarrow');
title('Light ray trace in GRIN material');
legend('GRIN','Source','Light rays')