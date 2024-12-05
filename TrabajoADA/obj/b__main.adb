pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E077 : Short_Integer; pragma Import (Ada, E077, "system__stack_usage_E");
   E009 : Short_Integer; pragma Import (Ada, E009, "system__soft_links_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__containers_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "ada__io_exceptions_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__tags_E");
   E108 : Short_Integer; pragma Import (Ada, E108, "ada__streams_E");
   E057 : Short_Integer; pragma Import (Ada, E057, "interfaces__c_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "interfaces__c__strings_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "system__task_info_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__secondary_stack_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__finalization_root_E");
   E107 : Short_Integer; pragma Import (Ada, E107, "ada__finalization_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "system__storage_pools_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "ada__finalization__heap_management_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "system__os_lib_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "system__pool_global_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "system__file_control_block_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "system__file_io_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__tasking__initialization_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "system__tasking__protected_objects_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__real_time_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__real_time__timing_events_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "ada__text_io_E");
   E147 : Short_Integer; pragma Import (Ada, E147, "system__tasking__protected_objects__entries_E");
   E151 : Short_Integer; pragma Import (Ada, E151, "system__tasking__queuing_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "system__tasking__stages_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "reactordef_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "actuadordef_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "sensordef_E");

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
         E104 := E104 - 1;
         F1;
      end;
      E147 := E147 - 1;
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
         E162 := E162 - 1;
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
         E166 := E166 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_control_block__finalize_spec");
      begin
         E172 := E172 - 1;
         F7;
      end;
      E132 := E132 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__pool_global__finalize_spec");
      begin
         F8;
      end;
      E120 := E120 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "ada__finalization__heap_management__finalize_spec");
      begin
         F9;
      end;
      E118 := E118 - 1;
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
          (False, False, True, True, False, False, False, False, 
           False, True, True, True, True, False, False, True, 
           True, False, True, True, False, True, True, True, 
           True, True, True, False, True, True, False, True, 
           False, True, True, False, True, True, False, False, 
           False, True, False, False, True, False, True, False, 
           False, False, False, True, False, True, True, True, 
           False, False, True, False, True, True, False, True, 
           True, False, True, False, False, True, True, False, 
           True, False),
         Count => (0, 0, 1, 1, 0, 1, 0),
         Unknown => (False, False, False, False, False, True, False));
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
      E077 := E077 + 1;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      Ada.Containers'Elab_Spec;
      E105 := E105 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E137 := E137 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E108 := E108 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E073 := E073 + 1;
      E059 := E059 + 1;
      E057 := E057 + 1;
      Ada.Tags'Elab_Body;
      E110 := E110 + 1;
      System.Soft_Links'Elab_Body;
      E009 := E009 + 1;
      System.Secondary_Stack'Elab_Body;
      E014 := E014 + 1;
      System.Finalization_Root'Elab_Spec;
      E118 := E118 + 1;
      Ada.Finalization'Elab_Spec;
      E107 := E107 + 1;
      System.Storage_Pools'Elab_Spec;
      E126 := E126 + 1;
      Ada.Finalization.Heap_Management'Elab_Spec;
      E120 := E120 + 1;
      System.Os_Lib'Elab_Body;
      E169 := E169 + 1;
      System.Pool_Global'Elab_Spec;
      E132 := E132 + 1;
      System.File_Control_Block'Elab_Spec;
      E172 := E172 + 1;
      System.File_Io'Elab_Body;
      E166 := E166 + 1;
      System.Tasking.Initialization'Elab_Body;
      E145 := E145 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E049 := E049 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E100 := E100 + 1;
      Ada.Real_Time.Timing_Events'Elab_Spec;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E162 := E162 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E147 := E147 + 1;
      System.Tasking.Queuing'Elab_Body;
      E151 := E151 + 1;
      System.Tasking.Stages'Elab_Body;
      E157 := E157 + 1;
      Ada.Real_Time.Timing_Events'Elab_Body;
      E104 := E104 + 1;
      E007 := E007 + 1;
      E005 := E005 + 1;
      E159 := E159 + 1;
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
