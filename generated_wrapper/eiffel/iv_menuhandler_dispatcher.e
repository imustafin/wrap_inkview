note

	description: "[
		WrapC generates code to register a few numbers of Eiffel callback receivers per callback type, by default the number of Eiffel callbacks receivers per type is 3. 
		If you need to define a different number of callbacks per type  you can use the configuration file as follows:
		
		<rule>
 			<match>
				<identifier name=".*"/>
				<type name="callback"/>		
  			</match>
  			<wrapper type="default">
				<callbacks_per_type value="10"/>
			</wrapper>
		</rule>
		
		identifier: Constrains the name of elements: here any identifer.
		type: Constrains the construct type: here callback.
		callbacks_per_type: Number of callbacks.
		
		How to use this wrapper?
			1. Create an object instance of this class 
				create object.make
			2. Register a callback calling the feature register_callaback_n where n is between 1 and the number of callbacks per type by default 3.
			2.1 Before to register the callback check that's available using the feature is_callback_n_available.
				if object.is_callback_n_available then
					object.register_callack_n (agent my_eiffel_callback)
					...
			3. Call the dispatcher
				object.c_dispatcher_n
			4. If you need to release a callaback, call the feature release_callback_n
				object.release_callback_n
				
		To learn more check the web: https://github.com/eiffel-wrap-c/WrapC/blob/master/doc/Readme.md#callbacks
	]"

	generator: "Eiffel Wrapper Generator"

class IV_MENUHANDLER_DISPATCHER

inherit

	EWG_INKVIEW_CALLBACK_C_GLUE_CODE_FUNCTIONS_API
		export {NONE} all end
	DISPOSABLE

create
	make

feature -- Initialization

	make
				-- Dispatcher initialization.
		do
			set_iv_menuhandler_object ($Current)
		end

feature -- Access: Routine 

	routine_1: detachable PROCEDURE [TUPLE [a_index: INTEGER]] 
			--Eiffel routine to be call on callback.

	routine_2: detachable PROCEDURE [TUPLE [a_index: INTEGER]] 
			--Eiffel routine to be call on callback.

	routine_3: detachable PROCEDURE [TUPLE [a_index: INTEGER]] 
			--Eiffel routine to be call on callback.

feature -- Access: Dispatcher


	c_dispatcher_1: POINTER
			-- The dispatcher `c_dispatcher_1` is connected to a C function,
			-- that can be given to the C library as a callback target
			-- and on the other hand the Eiffel feature `on_callback_1`
			-- When its C function gets called, the dispatcher
			-- calls`on_callback_1`on the Eiffel side.
		do
			Result := get_iv_menuhandler_stub_1
		end

	c_dispatcher_2: POINTER
			-- The dispatcher `c_dispatcher_2` is connected to a C function,
			-- that can be given to the C library as a callback target
			-- and on the other hand the Eiffel feature `on_callback_2`
			-- When its C function gets called, the dispatcher
			-- calls`on_callback_2`on the Eiffel side.
		do
			Result := get_iv_menuhandler_stub_2
		end

	c_dispatcher_3: POINTER
			-- The dispatcher `c_dispatcher_3` is connected to a C function,
			-- that can be given to the C library as a callback target
			-- and on the other hand the Eiffel feature `on_callback_3`
			-- When its C function gets called, the dispatcher
			-- calls`on_callback_3`on the Eiffel side.
		do
			Result := get_iv_menuhandler_stub_3
		end

feature -- Access: Callback

	on_callback_1 (a_index: INTEGER)  
			-- Callback target.
		do
			if attached routine_1 as l_routine then 
				l_routine (a_index)
			end
		end

	on_callback_2 (a_index: INTEGER)  
			-- Callback target.
		do
			if attached routine_2 as l_routine then 
				l_routine (a_index)
			end
		end

	on_callback_3 (a_index: INTEGER)  
			-- Callback target.
		do
			if attached routine_3 as l_routine then 
				l_routine (a_index)
			end
		end


feature -- Access: Status Report

	is_callback_1_available: BOOLEAN
			-- Is callback available?
		do
			Result := routine_1 = Void 
		end

	is_callback_2_available: BOOLEAN
			-- Is callback available?
		do
			Result := routine_2 = Void 
		end

	is_callback_3_available: BOOLEAN
			-- Is callback available?
		do
			Result := routine_3 = Void 
		end


feature -- Register: Callbacks

	register_callback_1 (a_routine: like routine_1)
			-- Register callback target `a_routine`.
		require
			is_callback_1_unset: is_callback_1_available
		do
			routine_1 := a_routine
			set_iv_menuhandler_entry_1 ($on_callback_1)
		ensure
			callback_1_set: attached routine_1
		end

	register_callback_2 (a_routine: like routine_1)
			-- Register callback target `a_routine`.
		require
			is_callback_2_unset: is_callback_2_available
		do
			routine_2 := a_routine
			set_iv_menuhandler_entry_2 ($on_callback_2)
		ensure
			callback_2_set: attached routine_2
		end

	register_callback_3 (a_routine: like routine_1)
			-- Register callback target `a_routine`.
		require
			is_callback_3_unset: is_callback_3_available
		do
			routine_3 := a_routine
			set_iv_menuhandler_entry_3 ($on_callback_3)
		ensure
			callback_3_set: attached routine_3
		end


feature -- Release: Callbacks

	release_callback_1
			-- Release callback target.
		do
			routine_1 := Void
		ensure
			callback_1_unset: routine_1 = Void
		end

	release_callback_2
			-- Release callback target.
		do
			routine_2 := Void
		ensure
			callback_2_unset: routine_2 = Void
		end

	release_callback_3
			-- Release callback target.
		do
			routine_3 := Void
		ensure
			callback_3_unset: routine_3 = Void
		end


feature {NONE} -- Implementation

	dispose
			-- Wean `Current`.
		do
			release_iv_menuhandler_object
			set_iv_menuhandler_object (default_pointer)
		end


end
