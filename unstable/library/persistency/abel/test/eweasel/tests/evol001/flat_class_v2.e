note
	description: "Very simple class meant to test schema evolution scenarios."
	author: "Marco Piccioni"
	date: "$Date: 2012-03-16 09:46:14 +0000 (Fri, 16 Mar 2012) $"
	revision: "$Revision: 88415 $"
	version: "2"

class
	FLAT_CLASS

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			att_1 := "One"
			att_2 := "Two"
			att_3 := 3
			att_4 := 4
			att_5 := True
			att_6 := True
		end

feature -- Access

	att_1: STRING

	att_2: STRING

	att_3: INTEGER

	att_4: INTEGER

	att_5: BOOLEAN

	att_6: BOOLEAN

feature -- Status setting


invariant
	invariant_clause: att_3 + att_4 = 7

end
