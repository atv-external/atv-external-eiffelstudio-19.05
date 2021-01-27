note

	description:

		"AVL tree nodes with a balance factor"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2008, Daniel Tuser and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DS_AVL_TREE_NODE [G, K]

inherit

	DS_BINARY_SEARCH_TREE_NODE [G, K]

	DS_AVL_TREE_CONTAINER_NODE [G, K]

create {DS_AVL_TREE}

	make

end
