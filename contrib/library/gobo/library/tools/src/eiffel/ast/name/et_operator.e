note

	description:

		"Eiffel operators"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002-2005, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_OPERATOR

inherit

	ET_CALL_NAME

	ET_TOKEN_CODES
		export {NONE} all end

feature -- Access

	lower_name: STRING
			-- Lower-name of feature call
			-- (May return the same object as `name' if already in lower case.)
		do
			Result := name
		end

end
