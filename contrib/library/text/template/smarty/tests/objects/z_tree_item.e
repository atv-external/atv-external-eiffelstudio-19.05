note
	description : "Objects that ..."
	author      : "$Author: jfiat $"
	date        : "$Date: 2013-08-02 09:17:37 +0000 (Fri, 02 Aug 2013) $"
	revision    : "$Revision: 92838 $"

class
	Z_TREE_ITEM

inherit
	Z_TREE_NODE
		redefine
			make
		end

create
	make

feature {NONE} -- Initialization

	make (n: STRING)
			-- Initialize `Current'.
		do
			Precursor (n)
			create nodes.make
		end

feature -- Access

	nodes: LINKED_LIST [Z_TREE_NODE]

feature -- Change

	add_node (i: Z_TREE_NODE)
		do
			nodes.force (i)
			i.set_parent (Current)
		end

end
