note
	description: "Summary description for {SHA256_HASH}."
	author: ""
	date: "$Date: 2013-08-23 14:06:19 +0000 (Fri, 23 Aug 2013) $"
	revision: "$Revision: 92891 $"

class
	SHA256_HASH

inherit
	HASH
		undefine
			is_equal
		end

	SHA256

create
	make,
	make_copy

feature -- Access

	block_size: INTEGER = 64
			-- <Precursor>

	output_size: INTEGER = 32
			-- <Precursor>

end
