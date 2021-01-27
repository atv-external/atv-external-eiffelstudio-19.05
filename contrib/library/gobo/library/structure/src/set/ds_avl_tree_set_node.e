note

	description:

		"AVL tree nodes with a balance factor"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2008, Daniel Tuser and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DS_AVL_TREE_SET_NODE [G]

inherit

	DS_BINARY_SEARCH_TREE_SET_NODE [G]

	DS_AVL_TREE_CONTAINER_NODE [G, G]
		rename
			key as item,
			set_key as set_item
		end

create {DS_AVL_TREE_SET}

	make

end
