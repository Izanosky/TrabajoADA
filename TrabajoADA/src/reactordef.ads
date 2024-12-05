-- Jorge Cuadrado Criado jorgecuadradojcc@usal.es
-- Izan Jimenez Chaves izanjc04@usal.es

package ReactorDef is

   protected type Reactor is
      procedure leerTemperatura(temp : out Integer);
      procedure aumentarTemp(temp : in Integer);
      procedure disminuirTemp(temp : in Integer);
   private
      temperatura : Integer := 1450;
   end Reactor;
end ReactorDef;

