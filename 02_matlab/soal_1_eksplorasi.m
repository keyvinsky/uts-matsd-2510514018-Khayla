% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 1 — Eksplorasi Awal dan Profil Data Transaksi 
% ---------------------------------------------------
% Nama : Khayla Oksyasuni
% NIM : 2510514018
% Parameter: N=18, a=1, b=8, K=10, theta0=70, alpha=0.009
% Tanggal: <2026-04-21>
% =====================================================
clc; clear; close all;

% Parameter personalisasi
N = 18; a = 1; b = 8; K = 10;
theta0 = 70; % derajat
alpha_lr = 0.009;

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