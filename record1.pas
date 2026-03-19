type anketa=record
  fio:string;
  birth:string;
  kurs:1..5 end;
var student:anketa;
begin
  student.fio:='Кудряшов Николай Алексеевич';
  student.birth:='01.09.2008';
  student.kurs:=2;
  writeln('ФИО: ',student.fio);
  writeln('Дата рождения: ',student.birth);
  writeln('Курс: ',student.kurs);
end.