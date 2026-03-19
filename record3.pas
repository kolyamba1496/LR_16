type toy=record
  name:string;
  price:integer;
  age:string end;
var a:array[1..3]of toy; i:integer;
begin
  with a[1] do 
    begin name:='Машинка HowWheels';
    price:=300;
    age:='6+' 
    end;
  with a[2] do 
    begin name:='Кукла Barbie';
    price:=1000;
    age:='3+' 
    end;
  with a[3] do 
    begin name:='Пистолет огнестрельный';
    price:=100000;
    age:='12+' 
    end;
  for i:=1 to 3 do 
    with a[i] do 
      writeln(name,' ',price,' руб., для ',age,' лет');
end.