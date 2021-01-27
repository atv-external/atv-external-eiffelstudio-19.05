note

	description:

		"Sort records for XM_XSLT_SORTED_NODE_ITERATOR"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2007-2015, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class	XM_XSLT_NODE_SORT_RECORD

inherit

	ANY

	KL_IMPORTED_ANY_ROUTINES

create

	make

feature {NONE} -- Initialization

	make (an_item: XM_XPATH_NODE; a_key_list: DS_ARRAYED_LIST [detachable XM_XPATH_ATOMIC_VALUE]; a_count: INTEGER)
			-- Establish invariant.
		require
			item_not_void: an_item /= Void
			key_list_not_void: a_key_list /= Void
			strictly_positive_record_number: a_count > 0
		do
			item := an_item
			key_list := a_key_list
			record_number := a_count
		ensure
			item_set: item = an_item
			key_list_set: key_list = a_key_list
			record_number_set: record_number = a_count
		end

feature -- Access

	item: XM_XPATH_NODE
			-- Node

	key_list: DS_ARRAYED_LIST [detachable XM_XPATH_ATOMIC_VALUE]
			-- Evaluated sort keys

	record_number: INTEGER
			-- Position of `item' in original sequence

feature -- Conversion

	is_group_node_sort_record: BOOLEAN
			-- Is `Current' a group node sort record?
		do
			Result := False
		end

	as_group_node_sort_record: XM_XSLT_GROUP_NODE_SORT_RECORD
			-- `Current' seen as a group node sort record
		require
			group_node_sort_record: is_group_node_sort_record
		do
			check group_node_sort_record: False then end
		ensure
			same_object: ANY_.same_objects (Result, Current)
		end

invariant

	item_not_void: item /= Void
	key_list_not_void: key_list /= Void
	strictly_positive_record_number: record_number > 0

end

