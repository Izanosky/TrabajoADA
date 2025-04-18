pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E085 : Short_Integer; pragma Import (Ada, E085, "system__stack_usage_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "ada__containers_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__io_exceptions_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "ada__numerics_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "ada__tags_E");
   E114 : Short_Integer; pragma Import (Ada, E114, "ada__streams_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "interfaces__c_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "interfaces__c__strings_E");
   E081 : Short_Integer; pragma Import (Ada, E081, "system__task_info_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "ada__calendar_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__calendar__delays_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "system__random_numbers_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__finalization_root_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "ada__finalization_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__storage_pools_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "ada__finalization__heap_management_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "system__os_lib_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "system__pool_global_E");
   E133 : Short_Integer; pragma Import (Ada, E133, "system__file_control_block_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__file_io_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "system__tasking__initialization_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "system__tasking__protected_objects_E");
   E139 : Short_Integer; pragma Import (Ada, E139, "ada__real_time_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__real_time__timing_events_E");
   E109 : Short_Integer; pragma Import (Ada, E109, "ada__text_io_E");
   E160 : Short_Integer; pragma Import (Ada, E160, "system__tasking__protected_objects__entries_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "system__tasking__queuing_E");
   E170 : Short_Integer; pragma Import (Ada, E170, "system__tasking__stages_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "reactordef_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "actuadordef_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "sensordef_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
      LE_Set : Boolean;
      pragma Import (Ada, LE_Set, "__gnat_library_exception_set");
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__real_time__timing_events__finalize_body");
      begin
         E143 := E143 - 1;
         F1;
      end;
      E160 := E160 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_body");
      begin
         E109 := E109 - 1;
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__real_time__timing_events__finalize_spec");
      begin
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E126 := E126 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_control_block__finalize_spec");
      begin
         E133 := E133 - 1;
         F7;
      end;
      E135 := E135 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__pool_global__finalize_spec");
      begin
         F8;
      end;
      E111 := E111 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "ada__finalization__heap_management__finalize_spec");
      begin
         F9;
      end;
      E116 := E116 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_root__finalize_spec");
      begin
         F10;
      end;
      if LE_Set then
         declare
            LE : Ada.Exceptions.Exception_Occurrence;
            pragma Import (Ada, LE, "__gnat_library_exception");
            procedure Raise_From_Controlled_Operation (X : Ada.Exceptions.Exception_Occurrence;  From_Abort : Boolean);
            pragma Import (Ada, Raise_From_Controlled_Operation, "__gnat_raise_from_controlled_operation");
         begin
            Raise_From_Controlled_Operation (LE, False);
         end;
      end if;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Zero_Cost_Exceptions : Integer;
      pragma Import (C, Zero_Cost_Exceptions, "__gl_zero_cost_exceptions");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False),
         Value => (0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, True, True, False, False, False, True, 
           False, True, True, True, True, False, False, True, 
           True, False, True, True, False, True, True, True, 
           True, True, True, False, True, True, False, True, 
           False, True, True, False, True, True, False, True, 
           False, True, True, False, True, False, True, False, 
           False, True, False, True, False, True, True, True, 
           False, False, True, False, True, True, False, True, 
           True, False, True, True, True, True, True, False, 
           True, False),
         Count => (1, 2, 1, 2, 0, 3, 0),
         Unknown => (False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Zero_Cost_Exceptions := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      System.Stack_Usage'Elab_Spec;
      E085 := E085 + 1;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E144 := E144 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E127 := E127 + 1;
      Ada.Numerics'Elab_Spec;
      E175 := E175 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E114 := E114 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E081 := E081 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E174 := E174 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E172 := E172 + 1;
      E067 := E067 + 1;
      E065 := E065 + 1;
      Ada.Tags'Elab_Body;
      E007 := E007 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      System.Random_Numbers'Elab_Body;
      E179 := E179 + 1;
      System.Finalization_Root'Elab_Spec;
      E116 := E116 + 1;
      Ada.Finalization'Elab_Spec;
      E113 := E113 + 1;
      System.Storage_Pools'Elab_Spec;
      E122 := E122 + 1;
      Ada.Finalization.Heap_Management'Elab_Spec;
      E111 := E111 + 1;
      System.Os_Lib'Elab_Body;
      E130 := E130 + 1;
      System.Pool_Global'Elab_Spec;
      E135 := E135 + 1;
      System.File_Control_Block'Elab_Spec;
      E133 := E133 + 1;
      System.File_Io'Elab_Body;
      E126 := E126 + 1;
      System.Tasking.Initialization'Elab_Body;
      E158 := E158 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E057 := E057 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E139 := E139 + 1;
      Ada.Real_Time.Timing_Events'Elab_Spec;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E109 := E109 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E160 := E160 + 1;
      System.Tasking.Queuing'Elab_Body;
      E164 := E164 + 1;
      System.Tasking.Stages'Elab_Body;
      E170 := E170 + 1;
      Ada.Real_Time.Timing_Events'Elab_Body;
      E143 := E143 + 1;
      E055 := E055 + 1;
      E005 := E005 + 1;
      E177 := E177 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\izanj\OneDrive\Escritorio\TrabajoADA\obj\reactordef.o
   --   C:\Users\izanj\OneDrive\Escritorio\TrabajoADA\obj\actuadordef.o
   --   C:\Users\izanj\OneDrive\Escritorio\TrabajoADA\obj\sensordef.o
   --   C:\Users\izanj\OneDrive\Escritorio\TrabajoADA\obj\main.o
   --   -LC:\Users\izanj\OneDrive\Escritorio\TrabajoADA\obj\
   --   -LC:/gnat/2011/lib/gcc/i686-pc-mingw32/4.5.3/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
