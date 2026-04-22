% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 — Enkripsi Citra Logo Toko dengan Invers Matriks 3x3 
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

%% c)

% Matriks A (dari soal)
A = [2 8 2;
     1 3 8;
     8 1 4];

n = size(A,1);

% Inisialisasi matriks kofaktor
C = zeros(n);

% kofaktor loop nested
for i = 1:n
    for j = 1:n
        sub = A;          % copy matriks
        sub(i,:) = [];    % hapus baris i
        sub(:,j) = [];    % hapus kolom j
        
        % kofaktor = (-1)^(i+j) * det(sub)
        C(i,j) = ((-1)^(i+j)) * det(sub);
    end
end

disp('Matriks Kofaktor C =');
disp(C);

% adjoin (transpose)
AdjA = C';
disp('Matriks Adjoin Adj(A) =');
disp(AdjA);

% det
detA = det(A);
fprintf('det(A) = %.4f\n', detA);

% invers manual
A_inv_manual = AdjA / detA;
disp('A^-1 (manual) =');
disp(A_inv_manual);

% invers matlab
A_inv_builtin = inv(A);
disp('A^-1 (inv MATLAB) =');
disp(A_inv_builtin);

% error frobenius
error = norm(A_inv_manual - A_inv_builtin, 'fro');
fprintf('Error Frobenius = %.12f\n', error);

% verifikasi
disp('A * A^-1 (manual) =');
disp(round(A * A_inv_manual));


%% f)

% matriks A
A = [a+1 b 2;
     1 a+2 b;
     b 1 a+3];

% blok citra asli P
P = [120 (50+N) 200;
     80 (a+2) (10+N);
     (30+N) 90 170];

% enkripsi
E = A * P;

% konversi ke double untuk visualisasi
P = double(P);
E = double(E);

% visualisasi
figure;

subplot(1,2,1);
imshow(P, []);
title('Citra Asli (P)');

subplot(1,2,2);
imshow(E, []);
title('Citra Terenkripsi (E)');

% tampilkan di command window
disp('Matriks P (Asli):');
disp(P);

disp('Matriks E (Terenkripsi):');
disp(E);
