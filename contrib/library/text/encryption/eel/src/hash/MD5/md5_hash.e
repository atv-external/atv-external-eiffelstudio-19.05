note
	description: "Summary description for {MD5_HASH}."
	author: ""
	date: "$Date: 2013-08-23 14:06:19 +0000 (Fri, 23 Aug 2013) $"
	revision: "$Revision: 92891 $"

class
	MD5_HASH

inherit
	HASH
		undefine
			is_equal
		end

	MD5

create
	make,
	make_copy

feature -- Access

	block_size: INTEGER = 64
			-- <Precursor>	

	output_size: INTEGER = 16
			-- <Precursor>

end
