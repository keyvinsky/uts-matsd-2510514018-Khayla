% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 4 - Segmentasi Pelanggan dan komposisi fungsi harga 
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

% plot titik
plot(real(z), imag(z), 'o')
hold on

% hubungkan titik (segitiga)
plot([real(z) real(z(1))], [imag(z) imag(z(1))])

% gambar lingkaran radius 2
t = linspace(0,2*pi,100);
plot(2*cos(t), 2*sin(t))

axis equal
grid on


