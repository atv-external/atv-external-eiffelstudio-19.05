note
	description: "Summary description for {JWT_MISMATCHED_ALG_ERROR}."
	date: "$Date: 2017-10-06 08:12:28 +0000 (Fri, 06 Oct 2017) $"
	revision: "$Revision: 100831 $"

class
	JWT_MISMATCHED_ALG_ERROR

inherit
	JWT_ERROR

create
	make

feature {NONE} -- Initialization

	make (a_alg, a_header_alg: READABLE_STRING_8)
		do
			alg := a_alg
			header_alg := a_header_alg
		end

feature -- Access

	alg: READABLE_STRING_8

	header_alg: READABLE_STRING_8

	id: STRING = "ALG_MISMATCH"

	message: READABLE_STRING_8
		do
			Result := "Header alg [" + header_alg + "] does not match given alg [" + alg + "]!"
		end

end
