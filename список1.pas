begin
   var a:=arrrandominteger(10,-5,20);
  println('массив:',a);
  var l1:=new list<integer>;
  var l2:=new list<integer>;
  foreach var x in a do
  begin
    if x>0 then
      l1.add(x) 
    else if x<0 then
      l2.add(x);
    end;
    print('L1:');
  l1.println;
  print('L2:');
  l2.println;
end.