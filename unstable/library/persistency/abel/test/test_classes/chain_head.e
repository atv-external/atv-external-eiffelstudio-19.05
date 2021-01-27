note
	description: "Summary description for {CHAIN_HEAD}."
	author: ""
	date: "$Date: 2012-07-09 16:28:45 +0000 (Mon, 09 Jul 2012) $"
	revision: "$Revision: 89089 $"

class
	CHAIN_HEAD

create
	make

feature {NONE} -- Initialization

	make (t: CHAIN_TAIL)
			-- Initialization for `Current'.
		do
			tail := t
		end

feature

	level: INTEGER = 0

	tail: CHAIN_TAIL

end
