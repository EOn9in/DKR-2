var a: array[1..100] of string; n: array[1..100] of integer;
begin
  var i := 0;var j := 0;var m := 1;var t := '';
  var s:= ReadString('Введите строку:');
  for i := 1 to length(s) do if s[i] <> ' ' then t := t + s[i] else begin
  if t <> '' then
    for var k := 1 to j do 
      if a[k] = t then begin
        n[k] := n[k] + 1;
        if n[m] < n[k] then m := k;
        t := '';
        break;
      end;
  if t <> '' then begin
    j := j + 1;
    n[j] := 1;
    a[j] := t;
    t := ''
  end;
end;
begin
  if t <> '' then
    for var k := 1 to j do 
      if a[k] = t then begin
        n[k] := n[k] + 1;
        if n[m] < n[k] then m := k;
        t := '';
        break;
      end;
  if t <> '' then begin
    j := j + 1;
    n[j] := 1;
    a[j] := t;
    t := ''
  end;
end;
  for i := 1 to j do 
  begin
    if n[i] = n[m] then print(a[i]);
  end;
end.