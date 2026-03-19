begin
  var n:=readinteger('количество элементов:');
  var a:=readarrinteger(n);
  var l:=new list<integer>(a);
  println('список:',l);
  var maxIndex:=l.IndexMax;
  l.removeat(maxIndex);
  print('результат:');
  l.println;
end.