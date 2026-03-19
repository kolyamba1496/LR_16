program one;
type
  PNode = ^Node;
  Node = record
    data: integer;
    next: PNode;
  end;
var
  Head: PNode;
  FInput, FOutput: Text;
  num: integer;
  NewNode: PNode;
procedure Push(var Head: PNode; x: integer);
var Temp: PNode;
begin
  New(Temp);
  Temp^.data := x;
  Temp^.next := Head;
  Head := Temp;
end;
function Pop(var Head: PNode): integer;
var Temp: PNode;
begin
  if Head = nil then
  begin
    Result := -1;
    Exit;
  end;
  Temp := Head;
  Result := Head^.data;
  Head := Head^.next;
  Dispose(Temp);
end;
begin
  Head := nil;
  Assign(FInput, 'numbers.txt');
  Reset(FInput);
  while not eof(FInput) do
  begin
    Read(FInput, num);
    Push(Head, num);
  end;
  Close(FInput);
  Assign(FOutput, 'reversed.txt');
  Rewrite(FOutput);
  while Head <> nil do
  begin
    num := Pop(Head);
    Write(FOutput, num, ' ');
  end;
  Close(FOutput);
  Writeln('Числа записаны в обратном порядке в reversed.txt');
end.