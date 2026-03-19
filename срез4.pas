var n: integer;
    a: array of integer;
    maxIndex: integer;
begin
  n:=readinteger('количество элементов: ');
  a:=readarrinteger(n);
  maxIndex:=a.IndexMax;
  a := a[:maxindex] + a[maxindex+1:];
  Println('Результат: ', a);
end.