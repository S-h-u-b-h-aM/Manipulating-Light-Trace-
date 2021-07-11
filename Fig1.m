% Straight Line trace
u = -1 : 0.01 : 1;
[x, y] = meshgrid(u, u);
m = 2; %Y = [];
c = [-0.5 0 0.5];
n = x + 2.*y + 4;
Y = m .*( u' - c );
hold on;
contourf(x, y, n, 100, 'LineColor', 'None');
plot(u, Y(:, 1), 'k--', u, Y(:, 2), 'g', u, Y(:, 3), 'k--', 'LineWidth', 2);
plot(u, log2(2.4*(u + 0.8)), 'w', 'LineWidth', 2)
plot([-0.5 -0.6], [-1 -1], 'r*');
colorbar;
axis([-1 1 -1 1]);
legend('refractive index ', 'Asymptotic line',...
    'light ray y = 2x', ' ', 'light ray with m != 2',...
    'Source', 'location', 'best');
box on;
xlabel('x arb. units');
ylabel('y arb. units');
title('Gradient Box');