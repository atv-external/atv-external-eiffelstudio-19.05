note

	description:

		"[
			Objects that can be passed to an XM_XPATH_SINGLETON_NODE_MAPPING_ITERATOR.
			Such objects, when given an XM_XPATH_NODE, generate
			zero or one nodes.
		]"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2007, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class XM_XPATH_SINGLETON_NODE_MAPPING_FUNCTION

feature -- Access

	mapped_node (a_node: XM_XPATH_NODE): detachable XM_XPATH_NODE
			-- `a_node' mapped to zero or one nodes
		require
			a_node_may_be_void: True
		deferred
		ensure
			result_may_be_void: True
		end

end