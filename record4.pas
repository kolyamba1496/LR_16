type
  toy=record
    name:string[30];
    price:real;
    age:string[20];
  end;
var toys: array[1..3] of toy;
  f:file of toy;
  i:integer;
  begin
    with toys[1] do begin
    name:='Машинка HowWheels';
    price:=300;
    age:='6+';
      end;
  with toys[2] do begin
  name:='Кукла Barbie';
  price:=1000;
  age:='6+'; 
      end;
  with toys[3] do begin
  name:='Пистолет огнестрельный';
  price:=100000;
  age:='12+ лет'; 
      end;
      assign(f,'toys.dat');
       rewrite(f);
        for i:=1 to 3 do
    write(f,toys[i]);
       close(f);
      assign(f, 'toys.dat');
       reset(f);
       for i:=1 to 3 do
    write(f,toys[i]);
  close(f);
  writeln('информация об игрушках из файла:');
  reset(f);
  while not Eof(f) do
  begin
    read(f,toys[i]);
    writeln('название: ',toys[i].name,', цена: ',toys[i].price,' руб., возраст: ',toys[i].age,' лет');
  end;
  close(f);
  end.