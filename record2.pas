type anketa=record
  fio:string;
  birth:string;
  kurs:1..5 end;
var a:array[1..3]of anketa; i:integer;
begin
  a[1].fio:='Кудряшов Николай Алексеевич';
  a[1].birth:='01.09.2008';
  a[1].kurs:=2;
  a[2].fio:='Сушков Ярослав Сергеевич';
  a[2].birth:='28.01.2008';
  a[2].kurs:=2;
  a[3].fio:='Кузяков Александр Сергеевич';
  a[3].birth:='25.12.2008';
  a[3].kurs:=2;
  for i:=1 to 3 do writeln(a[i].fio,', ',a[i].birth,', курс ',a[i].kurs);
end.