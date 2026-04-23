% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 3 - Segmentasi Pelanggan dan komposisi fungsi harga 
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

% b) verif a
A = [18 20 22 25 28 31 33];
B = [21 23 25 28 30 36];
C = [19 25 28 29 35 38];
U = 18:38;

disp('A union B union C =')
union_ABC = union(union(A,B),C)

disp('A intersect B intersect C =')
intersect_ABC = intersect(intersect(A,B),C)

disp('(A union B) intersect C'' =')
result = intersect(union(A,B), setdiff(U,C))

disp('A symmetric difference B =')
sym_diff = setxor(A,B)

% d)
syms x

f = 10*x + 9;

% cari invers
finv = solve(f == x, x)

% cari nilai x jika hasil 1009
solve(10*x + 9 == 1009, x)