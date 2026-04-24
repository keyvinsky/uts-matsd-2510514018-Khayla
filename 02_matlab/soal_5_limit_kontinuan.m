
% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 5 - Konvergensi Customer Lifetime Value dan Kekontinuan Biaya 
% ---------------------------------------------------
% Nama : Khayla Oksyasuni
% NIM : 2510514018
% Parameter: N=18, a=1, b=8, K=10, theta0=70, alpha=0.009
% Tanggal: <2026-04-24>
% =====================================================
clc; clear; close all;

% Parameter personalisasi
N = 18; a = 1; b = 8; K = 10;
theta0 = 70; % derajat
alpha_lr = 0.009;

% b
syms x 

L1 = limit((x^2 - K^2)/(x - K), x, K)
L2 = limit((sqrt(x + (K+1)^2) - (K+1))/x, x, 0)
L3 = limit(((a+2)*x^3 + b*x + 7)/(x^3 - x + K), x, inf)

% g)
p = 2*K;
q = K*(2-a);

f1 = @(x) (x.^2 - K^2)./(x - K); % x < K
f3 = @(x) a*x + q;               % x > K

fplot(f1,[0 K]); hold on
fplot(f3,[K 2*K]);

plot(K,p,'ro','MarkerFaceColor','r') % titik sambungan

xline(K,'--k') % garis vertikal

title('Grafik C(x) Kontinu')
xlabel('x')
ylabel('C(x)')
grid on

