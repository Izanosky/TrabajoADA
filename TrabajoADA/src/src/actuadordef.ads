with ReactorDef;
with Text_IO;                     use Text_IO;
with Ada.Real_Time;               use Ada.Real_Time;
with Ada.Real_Time.Timing_Events; use Ada.Real_Time.Timing_Events;

package ActuadorDef is
   protected type Actuador is
      procedure abrirPuerta;
      procedure cerrarPuerta;
      procedure iniciar(r : access ReactorDef.reactor);
      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);
   private
      reactor : access ReactorDef.reactor;
      nextTime:Ada.Real_Time.Time;
      salidaJitterControl:Ada.Real_Time.Timing_Events.Timing_Event;
      salidaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(900);
   end Actuador;
end ActuadorDef;
