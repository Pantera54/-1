	uses
  crt;

const
  e = 0.000001;

var
  a,a1: array[1..10, 1..10] of real;
  b,b1: array[1..10] of real;
  x: array[1..10] of real;
  n, i, j, k: integer;z, r, g: real;

begin
  clrscr;
  write('Ïîðÿäîê: ');
  readln(n);
  writeln('Ââåäèòå êîýôôèöèåíòû ñèñòåìû è ñâîáîäíûå ÷ëåíû');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write('a[', i, ',', j, ']= ');
      readln(a[i, j]);
      a1[i,j]:=a[i,j];
    end;
    Writeln('b[', i, ']= ');
    readln(b[i]);
  end;
  for k := 1 to n do { ïðÿìîé õîä Ãàóññà }
  begin
    for j := k + 1 to n do
    begin
      r := a[j, k] / a[k, k];
      for i := k to n do
      begin
        a[j, i] := a[j, i] - r * a[k, i];
      end;
      b[j] := b[j] - r * b[k];
    end;
  end;
  for k := n downto 1 do { îáðàòíûé õîä Ãàóññà }
  begin
    r := 0;
    for j := k + 1 to n do
    begin
      g := a[k, j] * x[j];
      r := r + g;
    end;
    x[k] := (b[k] - r) / a[k, k];
  end;
  writeln('Êîðíè ñèñòåìû:');
  for i := 1 to n do
    write('x[', i, ']=', x[i]:0:2, '   ');
  writeln;
  writeln('Ïðîâåðêà â ñîîòâåòñòâèè ñ ìàòðèöåé B: ');

  for i:=1 to n do
   begin
    for j:=1 to n do
      b1[i]:=b1[i]+a1[i,j]*x[j];
     writeln(b1[i]:3:2,' ');
    end;
  readln;
end.

