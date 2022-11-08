var
  a: array[1..50] of integer; 
  tmp: integer; 
  k: integer; 
begin
  var n:=readinteger('Введите количество элементов массива: ');
  for var i:= 1 to n do    
   begin
     print('Введите значение элемента ',i,': ');
     Readln(a[i]);
   end;
  println('Исходный массив:');
  for var i:= 1 to n do         
    begin
      write(a[i]:4);
      if i mod 10 = 0 then
        writeln;
    end;
  for var i:= 1 to n-1 do      
    for var j:= i+1 to n do
      if a[i] > a[j] then
        begin
          tmp:= a[i];
          a[i]:= a[j];
          a[j]:= tmp;
        end;
  println();
  println('Отсортированный массив:');
  for var i:= 1 to n do     
    begin
      write(a[i]:4);
      if  i mod 10 = 0 then
        println;
    end;
  println();
  println('Введите значение индекса k:');
  Readln(k);
  println('Значение элемента с индексом k: ', a[k]);
 
  Readln;
end.