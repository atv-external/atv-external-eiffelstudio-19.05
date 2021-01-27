note

	description:

		"Context for namespace resolver"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_NAMESPACE_RESOLVER_CONTEXT

inherit

	ANY

	UC_UNICODE_FACTORY
		export {NONE} all end

	XM_UNICODE_STRUCTURE_FACTORY
		export {NONE} all end

	KL_IMPORTED_STRING_ROUTINES
		export {NONE} all end

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new context.
		do
			create context.make
		end

feature -- Element change

	add_default (a_namespace: STRING)
			-- Add default namespace to context.
		require
			a_namespace_not_void: a_namespace /= Void
			context_not_empty: not is_context_empty
		do
			add (a_namespace, Default_pseudo_prefix)
		end

	add (a_namespace: STRING; a_prefix: STRING)
			-- Add namespace to context.
		require
			a_namespace_not_void: a_namespace /= Void
			a_prefix_not_void: a_prefix /= Void
			not_has: not shallow_has (a_prefix)
			context_not_empty: not is_context_empty
		do
			context.last.force_new (a_namespace, a_prefix)
		end

feature -- Status report

	is_context_empty: BOOLEAN
			-- Is context stack empty?
		do
			Result := context.is_empty
		ensure
			definition: Result = context.is_empty
		end

	shallow_has (a_prefix: STRING): BOOLEAN
			-- Is this prefix known at the current level?
			-- (for duplicate declaration checks)
		require
			a_prefix_not_void: a_prefix /= Void
		do
			Result := context.count > 0 and then context.last.has (a_prefix)
		end

	has (a_prefix: STRING): BOOLEAN
			-- Is this prefix known?
		require
			a_prefix_not_void: a_prefix /= Void
		local
			a_cursor: DS_BILINEAR_CURSOR [DS_HASH_TABLE [STRING, STRING]]
		do
			a_cursor := context.new_cursor
			from a_cursor.finish until a_cursor.before loop
				Result := a_cursor.item.has (a_prefix)
				if Result then
					a_cursor.go_before
				else
					a_cursor.back
				end
			end
		end

feature -- Access

	resolve_default: STRING
			-- Resolve default namespace.
		do
			Result := resolve (Default_pseudo_prefix)
		ensure
			resoled_not_void: Result /= Void
		end

	resolve (a_prefix: STRING): STRING
			-- Resolve a prefix.
		require
			a_prefix_not_void: a_prefix /= Void
		local
			a_cursor: DS_BILINEAR_CURSOR [DS_HASH_TABLE [STRING, STRING]]
		do
			Result := Default_namespace
			a_cursor := context.new_cursor
			from a_cursor.finish until a_cursor.before loop
				if a_cursor.item.has (a_prefix) then
					Result := a_cursor.item.item (a_prefix)
					a_cursor.go_before
				else
					a_cursor.back
				end
			end
		ensure
			resolved_not_void: Result /= Void
		end

feature -- Stack

	push
			-- Push element context.
		do
			context.force_last (new_string_string_table)
		end

	pop
			-- Pop element context.
		do
			if context.count > 0 then
				context.remove_last
			end
		end

feature {NONE} -- Implementation

	context: DS_BILINKED_LIST [DS_HASH_TABLE [STRING, STRING]]
			-- Really a DS_STACK but we need to see the content

feature {NONE} -- Constants

	Default_pseudo_prefix: STRING
			-- Default pseudo prefix
		once
			create Result.make_empty
		ensure
			prefix_not_void: Result /= Void
		end

	Default_namespace: STRING
			-- Default namespace (empty)
		once
			create Result.make_empty
		ensure
			namespace_not_void: Result /= Void
		end

invariant

	context_not_void: context /= Void

end
