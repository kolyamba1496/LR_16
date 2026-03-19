var n:integer;
    a:array of integer;
begin
  n:=readinteger('количество элементов: ');
  a:=readarrinteger(n);
  a[1::2].println;
end.