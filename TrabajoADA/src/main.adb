-- Jorge Cuadrado Criado jorgecuadradojcc@usal.es
-- Izan Jimenez Chaves izanjc04@usal.es

with Text_IO; use Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Real_Time.Timing_Events; use Ada.Real_Time.Timing_Events;

-- paquetes nuestros----------
with ReactorDef;
with SensorDef;
with ActuadorDef;

procedure Main is
   -- Declaración de reactores
   r1 : aliased ReactorDef.Reactor;
   r2 : aliased ReactorDef.Reactor;
   r3 : aliased ReactorDef.Reactor;

   --

   t1 : Integer;

   -- tarea coordinadora
   task type TareaCoordinadora(r: access ReactorDef.reactor) is
      entry
   end TareaCoordinadora;
   task body TareaCoordinadora is
      temperatura : Integer := 0;
      a : ActuadorDef.actuador;
   begin
        null;
   end TareaCoordinadora;

   -- tarea controladora
   task type TareaControladora(r: access ReactorDef.reactor);
   task body TareaControladora is
      s : SensorDef.sensor;
   begin
      s.iniciar(r);
      a.iniciar(r);
      null;
   end TareaControladora;

begin
   r1.leerTemperatura(t1);
   Put_Line("Temperatura del reactor 1: " &t1'Img);
   r1.aumentarTemp(50);
   r1.leerTemperatura(t1);
   Put_Line("Temperatura del reactor 1: " &t1'Img);
   null;
end Main;
