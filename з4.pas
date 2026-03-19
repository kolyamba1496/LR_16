program one;
type
  PNode = ^Node;
  Node = record
    value: integer;
    next: PNode;
  end;
var
  Head, Curr, NewNode: PNode;
  i, minValue, maxValue: integer;
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
begin
  Head := nil;
  for i := 1 to 10 do
  begin
    NewNode := CreateNode(i * 3 - 1);
    AddLast(Head, NewNode);
  end;
  Curr := Head;
  if Curr <> nil then
  begin
    minValue := Curr^.value;
    maxValue := Curr^.value;
    Curr := Curr^.next;
  end;
  while Curr <> nil do
  begin
    if Curr^.value < minValue then
      minValue := Curr^.value;
    if Curr^.value > maxValue then
      maxValue := Curr^.value;
    Curr := Curr^.next;
  end;
  writeln('минимальный элемент: ', minValue);
  writeln('максимальный элемент: ', maxValue);
end.