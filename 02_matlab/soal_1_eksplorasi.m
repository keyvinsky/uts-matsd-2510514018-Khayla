%% UTS No 1

% a,b)
D = [28 41 49 62 75 83 89];

mean(D)
median(D)
mode(D)
range(D)
std(D,1)

% c
D = [28 41 49 62 75 83 89];

bar(D)
hold on

yline(mean(D), 'r', 'LineWidth', 2)

xlabel('Toko ke-i')
ylabel('Penjualan (juta rupiah)')
title('Diagram Penjualan Mingguan - NIM 2510514018')

saveas(gcf, 'penjualan.png')

% biar bs commit