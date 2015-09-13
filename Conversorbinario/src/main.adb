with Ada.Text_IO,Ada.Integer_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO;

procedure Main is
   i,b,d,j,d2:Integer;
   arreglo : array(0..19) of Integer;
   arreglo2 : array(0..19) of Integer;
   Hexadecimal: array(0..15) of Character;
begin
   Hexadecimal(0..15):=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   i:=0;
   Put_Line("Convertidor Decimal-Binario");

   Put_Line("Binario: ");
   get(d);
   d2:=d;
   while(d /= 0) loop
      arreglo(i):= d mod 2;
      d:=d/2;
      i:=i+1;
   end loop;
   b:=i;
   for i in reverse 0..b-1 loop
      put(arreglo(i));
   end loop;

   Put_Line("");
   Put_Line("Hexadecimal: ");
   i:=0;
   j:=0;
   if (d2<=15) then
      Put(Hexadecimal(d2));
   else
      while(d2 /= 0) loop
         arreglo2(i):= d2 mod 16;
      d2:=d2/16;
      i:=i+1;
      end loop;
      b:=i;
      for i in reverse 0..b-1 loop
         j:=arreglo2(i);
      put(Hexadecimal(j));
      end loop;
   end if;

end Main;
