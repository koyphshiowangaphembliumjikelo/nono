program exo14;

type

pnode = ^node;
node = record
data : integer;
next : pnode;
end;


var
x,head,head1,tmp,y : pnode;
i : integer;

begin
  
  head := Nil;
  new(head);
  readln(head^.data);
  head^.next := nil;

  x := head;

  for i:=1 to 9 do
    begin
     new(x^.next);
     x:=x^.next;
     readln(x^.data);
     x^.next := nil;
      
    end;

     
writeln;
    head1 := Nil;
  new(head1);
  readln(head1^.data);
  head1^.next := nil;

  x := head1;

  for i:=1 to 9 do
    begin
     new(x^.next);
     x:=x^.next;
     readln(x^.data);
     x^.next := nil;
      
    end;

     

            x:= head;
            y:= head1;
                while (y^.next <> nil) and (x^.next <> nil) do
                  begin
                while (x^.next^.data < y^.data) and (x^.next^.next<>nil) do
                    x := x^.next;
                     tmp := x^.next;
                     x^.next:= nil;
                     new(x^.next);
                     x:= x^.next;
                     x^.data := y^.data;
                     x^.next := tmp;

                     y := y^.next;
                  end;


writeln;writeln;
        x:= head;
      for i:=1 to 18 do
        begin
          writeln(x^.data);
          x := x^.next;
        end;


        



end.
