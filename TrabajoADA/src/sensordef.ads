with System;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
with Text_IO; use Text_IO;
with ReactorDef;

package SensorDef is
   protected type Sensor is
      procedure lectura (temp : out Integer);
      procedure iniciar(r : access ReactorDef.reactor);
      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);
   private
      tempS : Integer;
      lecturaDisp : Boolean := False;
      entradaJitterControl:Ada.Real_Time.Timing_Events.Timing_Event;
      --2 segundos -100ms del input jitter
      entradaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(1900);
      reactor : access ReactorDef.reactor;
   end Sensor;
end SensorDef;
