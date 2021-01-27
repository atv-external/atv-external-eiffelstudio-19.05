note
	description: "JWT signature is based on Current algorithm"
	date: "$Date: 2018-11-07 23:13:21 +0000 (Wed, 07 Nov 2018) $"
	revision: "$Revision: 102406 $"

deferred class
	JWT_ALG

feature -- Access

	name: READABLE_STRING_8
		deferred
		end

	encoded_string (a_message: READABLE_STRING_8; a_secret: READABLE_STRING_8): STRING
		deferred
		end

feature -- Status report

	is_none: BOOLEAN
			-- Is Current algorithm is "none" ?
		do
		end

end
