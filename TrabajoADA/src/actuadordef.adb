with ReactorDef;

package body ActuadorDef is
   protected body Actuador is
      procedure abrirPuerta is
      begin
         null;
      end abrirPuerta;

      procedure cerrarPuerta is
      begin
         null;
      end cerrarPuerta;

      procedure iniciar(r : access ReactorDef.reactor) is
      begin
         reactor := r;
         null;
      end iniciar;

   end Actuador;
end ActuadorDef;
