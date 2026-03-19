var a:array of integer;
  n:integer;
begin
  write('сколько элементов ');
  readln(n);
  setlength(a,n);
  write('массив: ');
  for var i:=0 to n-1 do
    read(a[i]);
  writeln;
  write('результат: ');
  a[::-1].println(' '); 
end.