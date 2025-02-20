```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 10;
   -- This will raise Constraint_Error
end Example;
```