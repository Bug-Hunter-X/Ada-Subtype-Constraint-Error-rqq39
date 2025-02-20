```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   begin
      X := X + 10; 
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error: Value outside subtype range");
         X := My_Subtype'Last; -- Or another recovery action
   end;
end Example;
```