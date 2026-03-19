program one;
type
  PNode = ^Node;
  Node = record
    value: integer;
    next: PNode;
  end;
var
  Head, Curr, NewNode: PNode;
  i: integer;
function CreateNode(val: integer): PNode;
begin
  New(Result);
  Result^.value := val;
  Result^.next := nil;
end;
procedure AddLast(var Head: PNode; NewNode: PNode);
var
  Curr: PNode;
begin
  if Head = nil then
    Head := NewNode
  else
  begin
    Curr := Head;
    while Curr^.next <> nil do
      Curr := Curr^.next;
    Curr^.next := NewNode;
  end;
end;
procedure PrintList(Head: PNode);
var
  Curr: PNode;
begin
  Curr := Head;
  while Curr <> nil do
  begin
    write(Curr^.value, ' ');
    Curr := Curr^.next;
  end;
  writeln;
end;
procedure PrintEvenElements(Head: PNode);
var
  Curr: PNode;
begin
  Curr := Head;
  while Curr <> nil do
  begin
    if Curr^.value mod 2 = 0 then
      write(Curr^.value, ' ');
    Curr := Curr^.next;
  end;
  writeln;
end;
begin
  Head := nil;
  for i := 1 to 10 do
  begin
    NewNode := CreateNode(i);
    AddLast(Head, NewNode);
  end;
  write('весь список: ');
  PrintList(Head);
  write('четные элементы списка: ');
  PrintEvenElements(Head);
end.