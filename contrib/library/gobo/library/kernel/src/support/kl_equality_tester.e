note

	description:

		"Equality testers"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 1999-2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class KL_EQUALITY_TESTER [G]

inherit

	ANY

feature -- Status report

	test (v, u: detachable G): BOOLEAN
			-- Are `v' and `u' considered equal?
			-- (Use '~' by default.)
		do
			if v = u then
				Result := True
			else
				Result := v ~ u
			end
		end

end
