note

	description:

		"Identifier equality testers"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_IDENTIFIER_TESTER

inherit

	KL_EQUALITY_TESTER [ET_IDENTIFIER]
		redefine
			test
		end

feature -- Status report

	test (v, u: ET_IDENTIFIER): BOOLEAN
			-- Are `v' and `u' considered equal?
		do
			if v = u then
				Result := True
			elseif v = Void then
				Result := False
			elseif u = Void then
				Result := False
			else
				Result := v.same_identifier (u)
			end
		end

end
