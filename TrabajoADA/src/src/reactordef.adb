-- Jorge Cuadrado Criado jorgecuadradojcc@usal.es
-- Izan Jimenez Chaves izanjc04@usal.es

package body ReactorDef is
   protected body Reactor is
   procedure leerTemperatura(temp : out Integer) is
      begin
         temp := temperatura;
         null;
   end leerTemperatura;

   procedure disminuirTemp(temp : in Integer)is
      begin
         temperatura := temperatura - temp;
         null;
   end disminuirTemp;

   procedure aumentarTemp(temp : in Integer) is
      begin
         temperatura := temperatura + temp;
         null;
   end aumentarTemp;

end Reactor;
end ReactorDef;




