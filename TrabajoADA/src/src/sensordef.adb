package body SensorDef is
   protected body Sensor is

      entry lectura (temp : out Integer) when lecturaDisp is
      begin
         reactor.leerTemperatura(tempS);
         temp := tempS;
         lecturaDisp := False;
      end lectura;

      procedure iniciar(r : access ReactorDef.reactor) is
      begin
         reactor := r;
         nextTime:=Clock+entradaPeriodo;
         Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
      end iniciar;

      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event) is
      begin
         delay 0.1;
         lecturaDisp:=True;
         nextTime:=nextTime+entradaPeriodo;
         Ada.Real_Time.Timing_Events.Set_Handler(entradaJitterControl, nextTime, Timer'Access);
      end Timer;

   end Sensor;
end SensorDef;
