with ReactorDef;
with Text_IO; use Text_IO;

package body ActuadorDef is
   protected body Actuador is
      procedure abrirPuerta is
      begin
         nextTime:=Clock+salidaPeriodo;
         Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, Timer'Access);
      end abrirPuerta;

      procedure cerrarPuerta is
      begin
         Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, null);
      end cerrarPuerta;

      procedure iniciar(r : access ReactorDef.reactor) is
      begin
         reactor := r;
         null;
      end iniciar;

      procedure Timer(event:in out Ada.Real_Time.Timing_Events.Timing_Event) is
      begin
         --escribir dato escribiendo
         reactor.disminuirTemp(50);
         nextTime:=nextTime+salidaPeriodo;
         Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, Timer'Access);
      end Timer;

   end Actuador;
end ActuadorDef;
