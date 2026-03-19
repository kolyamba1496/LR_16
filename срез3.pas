var n:integer;
    a,srez:array of integer;
begin
  n:=readinteger('количество элементов: ');
  a:=readarrinteger(n);
  srez:=a[1::2];
  print('срез:', srez);
  println('мин:', srez.min);
 end.