%no 1%
A = [3 7 3 1 8 3;
    5 10 8 4 2 5;
    9 6 20 13 -3 11;
    12 9 5 2 7 6;
    4 2 7 7 9 12;
    -9 1 9 -5 14 4;];
disp(A);
% no 1A %
diagonal_satu = eye(6);
diagonal = diagonal_satu.*A;
disp ("no 1 A");
disp(diagonal);

%no 1B%
matrik_baru = A(2:4,2:3);
disp ("no 1 B");
disp(matrik_baru);




