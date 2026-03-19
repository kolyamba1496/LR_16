var n: integer;
a: array of integer;
minIndex: integer;
begin
  n := readinteger('количество элементов: ');
  a := readarrinteger(n);
  minIndex := a.IndexMin;
  a := a[:minIndex] + Arr(n) + a[minIndex:];
  println('результат:', a);
end.