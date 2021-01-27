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
		do
			create b
		end

end -- class AA
