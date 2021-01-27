note

	status: "See notice at end of class.";
	Date: "$Date: 2008-12-29 20:27:11 +0000 (Mon, 29 Dec 2008) $"
	Revision: "$Revision: 76420 $"
	Access: execute, immediate, prepare
	Product: EiffelStore
	Database: All_Bases

class DB_EXEC_USE

inherit

	HANDLE_USE

feature -- Status report

	immediate_execution: BOOLEAN
			-- Are requests immediately executed?
			-- (default is `no').
		do
			Result := handle.execution_type.immediate_execution
		end

	is_tracing: BOOLEAN
			-- Is trace option for SQL queries on?
		do
			Result := handle.execution_type.is_tracing
		end

	trace_output: FILE
			-- Trace destination file
		do
			Result := handle.execution_type.trace_output
		end

feature -- Status setting

	set_immediate
			-- Set queries to be executed with a
			-- `EXECUTE IMMEDIATE' SQL  statement.
		do
			handle.execution_type.set_immediate
		ensure
			execution_status: immediate_execution
		end

	unset_immediate
			-- Set queries to be executed with a
			-- `PREPARE' followed by a `EXECUTE' SQL statement.
		do
			handle.execution_type.unset_immediate
		ensure
			execution_status: not immediate_execution
		end

	set_trace
			-- Trace queries sent to database server.
		do
			handle.execution_type.set_trace
		ensure
			trace_status: is_tracing
		end

	unset_trace
			-- Do not trace queries sent to database server.
		do
			handle.execution_type.unset_trace
		ensure
			trace_status: not is_tracing
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- class DB_EXEC_USE


