% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 4 - Segmentasi Pelanggan dan komposisi fungsi harga 
% ---------------------------------------------------
% Nama : Khayla Oksyasuni
% NIM : 2510514018
% Parameter: N=18, a=1, b=8, K=10, theta0=70, alpha=0.009
% Tanggal: <2026-04-23>
% =====================================================
clc; clear; close all;

% Parameter personalisasi
N = 18; a = 1; b = 8; K = 10;
theta0 = 70; % derajat
alpha_lr = 0.009;
z1 = 3 + 9i;
z2 = 9 - 3i;

% b
z1 = 3 + 9i;
z2 = 9 - 3i;

z1+z2
z1*z2
z1/z2
abs(z1-z2)

% e
theta0 = deg2rad(70);

k = 0:2;
z = 2*exp(1i*(theta0 + 2*pi*k)/3);

plot(real(z), imag(z), 'o')
hold on

t = linspace(0,2*pi,100);
plot(2*cos(t), 2*sin(t)) % lingkaran

axis equal
grid on


