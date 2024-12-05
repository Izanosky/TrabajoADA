package body SensorDef is
   protected body Sensor is

      procedure lectura (temp : out Integer) is
      begin
         null;
      end lectura;

      procedure iniciar(r : access ReactorDef.reactor) is
      begin

         reactor := r;
      end iniciar;

      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event) is
      begin

         null;
      end Timer;

   end Sensor;
end SensorDef;
