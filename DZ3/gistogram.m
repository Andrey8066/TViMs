graphics_toolkit qt

centers = [6.7 6.9 7.1 7.3 7.5 7.7];
p = [1 15 28 27 5 4];    % ваши значения
dx = 0.2;                 % ширина интервала

colors = [
    1 0 0;    % красный
    0 1 0;    % зелёный
    0 0 1;    % синий
    1 1 0;    % жёлтый
    1 0 1;    % фиолетовый
    0 1 1;    % голубой
];

hold on
for k = 1:length(p)
    bar(centers(k), p(k), dx, 'FaceColor', colors(k,:), ...
                           'EdgeColor', 'none', ...
                           'FaceAlpha', 0.6);
end
hold off

xlabel('x');
ylabel('p^*(x)');
title('Эмпирическая плотность распределения');
grid on;
