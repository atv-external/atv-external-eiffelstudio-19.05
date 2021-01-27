note

	description:

		"Call name equality testers"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_CALL_NAME_TESTER

inherit

	KL_EQUALITY_TESTER [ET_CALL_NAME]
		redefine
			test
		end

feature -- Status report

	test (v, u: ET_CALL_NAME): BOOLEAN
			-- Are `v' and `u' considered equal?
		do
			if v = u then
				Result := True
			elseif v = Void then
				Result := False
			elseif u = Void then
				Result := False
			else
				Result := v.same_call_name (u)
			end
		end

end
