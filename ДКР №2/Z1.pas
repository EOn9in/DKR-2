var a,b:array of integer;
begin
var n := ReadInteger('Введите длину массива:');
print('Введите элементы массива');
println;
SetLength(a,n);
for var i:=0 to n-1 do
 begin
  print('a[',i+1,']=');
  a[i]:=ReadInteger;
 end;
 print(a);
 println;
 var d := ReadInteger('Введите длину последовательности для поиска от 2 до 10  d = ');
if d>n then print('Последовательность для поиска не может быть больше самого массива')
else
println('Введите элементы последовательности для поиска');
SetLength(b,d);
for var i:=0 to d-1 do
b[i]:=ReadInteger;
var i:=0;
while (i<n)and(a[i]<>b[1]) do inc(i);
if i=n then write('Последовательности в массиве нет')
else
 begin
   var j:=i;
  while(j<=d)and(b[j]=a[j]) do inc(j);
  if j<=d then print('Последовательности в массиве нет')
   else print('Последовательность в массиве есть')
 end;
end.
