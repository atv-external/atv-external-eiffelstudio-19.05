note

	description:

		"Test root"

	library:    "Gobo Eiffel Tools Library"
	author:     "Eric Bezault <ericb@gobosoft.com>"
	copyright:  "Copyright (c) 2001, Eric Bezault and others"
	license:    "MIT License"
	date:       "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision:   "$Revision: 102790 $"

class AA

create

	make

feature

	make
		local
			b: BB
			i: INTEGER
		do
			create b
			b.put_string ("toto")
			b.put_character ('A')
				-- Should crash here at run-time if the Eiffel
				-- compiler didn't complain beforehand:
			i := b.string_item.count
		end

end -- class AA
