program one;
type
  PWord = ^WordNode;
  WordNode = record
    text: string[40];
    count: integer;
    next: PWord; 
  end;
var
  Head, Curr, NewNode: PWord;
  F: Text;
  ch: char;
  word: string;
  total: integer;
function CreateNode(s: string): PWord;
begin
  New(Result);
  Result^.text := s;
  Result^.count := 1;
  Result^.next := nil;
end;
procedure InsertWord(var Head: PWord; word: string);
var
  Curr, NewNode: PWord;
begin
  Curr := Head;
  while (Curr <> nil) and (Curr^.text <> word) do
    Curr := Curr^.next;
  if Curr <> nil then
    Curr^.count := Curr^.count + 1
  else
  begin
    NewNode := CreateNode(word);
    if (Head = nil) or (word < Head^.text) then
    begin
      NewNode^.next := Head;
      Head := NewNode;
    end
    else
    begin
      Curr := Head;
      while (Curr^.next <> nil) and (Curr^.next^.text < word) do
        Curr := Curr^.next;
      NewNode^.next := Curr^.next;
      Curr^.next := NewNode;
    end;
  end;
end;
function TakeWord(var F: Text): string;
var
  c: char;
begin
  Result := '';
  c := ' ';
  read(F, c);
  while not eof(F) and not (c in ['a'..'z','A'..'Z']) do
    read(F, c);
  while (c in ['a'..'z','A'..'Z']) do
  begin
    Result := Result + c;
    if not eof(F) then
      read(F, c)
    else
      break;
   end;
end;
procedure PrintList(Head: PWord);
var
  Curr, total: PWord;
  countWords: integer;
begin
  Curr := Head;
  countWords := 0;
  writeln('Алфавитно-частотный словарь:');
  while Curr <> nil do
  begin
    writeln(Curr^.text, ' : ', Curr^.count);
    countWords := countWords + 1;
    Curr := Curr^.next;
  end;
  writeln('Количество различных слов: ', countWords);
end;
begin
  Head := nil;
  Assign(F, 'text.txt'); Reset(F);
  while not eof(F) do
  begin
    word := TakeWord(F);
    if word <> '' then
      InsertWord(Head, word);
  end;
  Close(F);
  PrintList(Head);
end.