program NilaiMahasiswa;

var
    tugas, kuis, uts, uas, rata : array[1..5] of real;
    nomor : array[1..5] of integer;
    n, i, j : integer;
    tmp : real;
    tmpNo : integer;

begin
    repeat
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);
    if (n < 1) or (n > 5) then
        writeln('Jumlah harus antara 1 sampai 5!');
    until (n >= 1) and (n <= 5);

    for i := 1 to n do
    begin
    writeln;
    writeln('Mahasiswa ke-', i);
    nomor[i] := i;
    write('  Nilai Tugas : '); readln(tugas[i]);
    write('  Nilai Kuis  : '); readln(kuis[i]);
    write('  Nilai UTS   : '); readln(uts[i]);
    write('  Nilai UAS   : '); readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    for i := 1 to n - 1 do
    for j := 1 to n - i do
        if rata[j] < rata[j + 1] then
        begin
        tmp := tugas[j]; tugas[j] := tugas[j + 1]; tugas[j + 1] := tmp;
        tmp := kuis[j];  kuis[j]  := kuis[j + 1];  kuis[j + 1]  := tmp;
        tmp := uts[j];   uts[j]   := uts[j + 1];   uts[j + 1]   := tmp;
        tmp := uas[j];   uas[j]   := uas[j + 1];   uas[j + 1]   := tmp;
        tmp := rata[j];  rata[j]  := rata[j + 1];  rata[j + 1]  := tmp;
        tmpNo := nomor[j]; nomor[j] := nomor[j + 1]; nomor[j + 1] := tmpNo;
        end;

    writeln('No  Mhs  Tugas   Kuis    UTS     UAS     Rata2   Keterangan');
    for i := 1 to n do
    begin
    write(i:2, '  ke-', nomor[i], '  ');
    write(tugas[i]:6:1, '  ', kuis[i]:6:1, '  ',
            uts[i]:6:1, '  ', uas[i]:6:1, '  ',
            rata[i]:6:2, '  ');
    if rata[i] >= 70 then
        writeln('LULUS')
    else
        writeln('TIDAK LULUS');
    end;

    readln;
end.