note

	description:

		"Iterators over groups. `item' Always points to first item in group"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004-2015, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class	XM_XSLT_GROUP_ITERATOR [G -> XM_XPATH_ITEM]

inherit

	XM_XPATH_SEQUENCE_ITERATOR [G]

	XM_XPATH_ERROR_TYPES

feature -- Access

	current_grouping_key: detachable XM_XPATH_ATOMIC_VALUE
			-- Grouping key for current group;
			-- (or `Void' for group-starting/ending-with)
		deferred
		end

feature -- Status report

	is_group_node_iterator: BOOLEAN
			-- Is `Current' a group-node-iterator?
		do
			Result := False
		end

feature -- Evaluation

	current_group_iterator: detachable XM_XPATH_SEQUENCE_ITERATOR [G]
			-- Iterator over the members of the current group, in population order.
		deferred
		end

feature -- Conversion

	as_group_node_iterator: XM_XSLT_GROUP_NODE_ITERATOR
			-- `Current' seen as a group-node-iterator.
		require
			group_node_iterator: is_group_node_iterator
		do
			check is_group_node_iterator: False then end
		ensure
			same_object: ANY_.same_objects (Result, Current)
		end

end

