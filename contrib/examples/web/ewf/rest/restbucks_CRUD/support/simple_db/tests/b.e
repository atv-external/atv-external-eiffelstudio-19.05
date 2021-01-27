note
	description: "Summary description for {B}."
	author: ""
	date: "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision: "$Revision: 99933 $"

class
	B

create
	make

feature

	make (k: STRING; b: BOOLEAN; v: STRING)
		do
			key := k
			value := v
			state := b
		end

feature -- Access

	key: STRING

	value: STRING

	state: BOOLEAN

end
