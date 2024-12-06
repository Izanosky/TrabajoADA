-- Jorge Cuadrado Criado jorgecuadradojcc@usal.es
-- Izan Jimenez Chaves izanjc04@usal.es

with Text_IO;                     use Text_IO;
with Ada.Real_Time;               use Ada.Real_Time;
with Ada.Real_Time.Timing_Events; use Ada.Real_Time.Timing_Events;
with Ada.Numerics.Discrete_Random;

-- paquetes nuestros----------
with ReactorDef;
with SensorDef;
with ActuadorDef;

procedure Main is
   -- Declaración de reactores
   r1 : aliased ReactorDef.Reactor;
   r2 : aliased ReactorDef.Reactor;
   r3 : aliased ReactorDef.Reactor;

   -- tarea coordinadora
   task type TareaCoordinadora (r : access ReactorDef.Reactor; num : Integer) is
      entry temperaturaReactor (datoEntrada : in Integer);
   end TareaCoordinadora;
   task body TareaCoordinadora is
      temperatura   : Integer := 0;
      a             : ActuadorDef.Actuador;
      puertaAbierta : Boolean;
      id : Integer := num;
   begin
      a.iniciar (r);
      loop
         select
            accept temperaturaReactor (datoEntrada : in Integer) do
               temperatura := datoEntrada;
               Put_Line
                 ("Temperatura enviada del reactor" &num'Img & ": " & Integer'Image (datoEntrada));
            end temperaturaReactor;
         or
            delay 3.0;
            Put_Line ("Esperando entrada del reactor" &num'Img);
         end select;

         -- condiciones en funcion de la temperatura
         if temperatura >= 1_750 then
            -- abrimos compuerta e imprimimos mensaje
            puertaAbierta := True;
            a.abrirPuerta;
            Put_Line ("Temperatura superior a 1750 en el reactor" &num'Img);
         elsif temperatura >= 1_500 then
            -- abrimos compuerta
            puertaAbierta := True;
            a.abrirPuerta;
         else
            -- cerramos compuerta
            if puertaAbierta then
               a.cerrarPuerta;
               puertaAbierta := False;
            end if;
         end if;
         New_Line;
      end loop;
   end TareaCoordinadora;

   -- tarea controladora
   task type TareaControladora
     (r : access ReactorDef.Reactor; tCoor : access TareaCoordinadora);
   task body TareaControladora is
      s : SensorDef.Sensor;
      t : Integer;
   begin
      s.iniciar (r);
      loop
         s.lectura (t);
         tCoor.temperaturaReactor (t);
      end loop;
   end TareaControladora;

   -- tarea diablillo
   task type diablillo(r1 : access ReactorDef.Reactor;r2 : access ReactorDef.Reactor;r3 : access ReactorDef.Reactor) is
   end diablillo;
   task body diablillo is
      subtype aleatorioReactor is Integer range 1..3;
      package Aleatorio is new Ada.Numerics.Discrete_Random(aleatorioReactor);
      seed : Aleatorio.Generator;
      temp : Integer;
      begin
      loop
         delay 2.0;
         Aleatorio.reset(seed);
         temp:=Aleatorio.Random(seed);
            case temp is
               when 1 => r1.aumentarTemp(150);
               when 2 => r2.aumentarTemp(150);
               when others => r3.aumentarTemp(150);
         end case;
      end loop;
   end diablillo;


   -- primer conjunto
   tCoord1 : aliased TareaCoordinadora (r1'Access, 1);
   tCont1  : TareaControladora (r1'Access, tCoord1'Access);

   -- segundo conjunto
   tCoord2 : aliased TareaCoordinadora (r2'Access, 2);
   tCont2  : TareaControladora (r2'Access, tCoord2'Access);

   -- tercer conjunto
   tCoord3 : aliased TareaCoordinadora (r3'Access, 3);
      tCont3  : TareaControladora (r3'Access, tCoord3'Access);

      d : diablillo(r1'Access,r2'Access,r3'Access);

begin
   null;
end Main;
