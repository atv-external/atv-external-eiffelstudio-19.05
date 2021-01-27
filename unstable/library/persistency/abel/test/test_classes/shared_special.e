note
	description: "Summary description for {SHARED_SPECIAL}."
	author: ""
	date: "$Date: 2013-12-14 00:20:32 +0000 (Sat, 14 Dec 2013) $"
	revision: "$Revision: 93724 $"

class
	SHARED_SPECIAL

create
	make

feature

	special: SPECIAL [INTEGER]

	make (a_special: like special)
		do
			special := a_special
		end

end
