with ReactorDef;

package ActuadorDef is
   protected type Actuador is
      procedure abrirPuerta;
      procedure cerrarPuerta;
      procedure iniciar(r : access ReactorDef.reactor);
   private
      reactor : access ReactorDef.reactor;
   end Actuador;
end ActuadorDef;
