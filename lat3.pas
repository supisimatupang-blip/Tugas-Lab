program UrutNilaiUAS;

var
    nilai : array[1..10] of real;
    n, i, j : integer;
    tmp : real;

begin
    repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    if (n < 1) or (n > 10) then
        writeln('Jumlah harus antara 1 sampai 10!');
    until (n >= 1) and (n <= 10);

    writeln;
    for i := 1 to n do
    begin
    write('Nilai UAS mahasiswa ke-', i, ' : ');
    readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
    for j := 1 to n - i do
        if nilai[j] > nilai[j + 1] then
        begin
        tmp          := nilai[j];
        nilai[j]     := nilai[j + 1];
        nilai[j + 1] := tmp;
        end;

    writeln;
    writeln('Nilai UAS setelah diurutkan (terendah ke tertinggi):');
    for i := 1 to n do
    writeln(i, '. ', nilai[i]:0:1);

    readln;
end.