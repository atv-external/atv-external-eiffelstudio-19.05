note
	description: "Summary description for {HMAC_MD5}."
	author: ""
	date: "$Date: 2013-08-23 14:06:19 +0000 (Fri, 23 Aug 2013) $"
	revision: "$Revision: 92891 $"

class
	HMAC_MD5

inherit
	HMAC [MD5_HASH]

create
	make,
	make_ascii_key

feature {NONE} -- Implementation

	new_message_hash: like message_hash
			-- New message hash object.
		do
			create Result.make
		end

end -- class HMAC_MD5
