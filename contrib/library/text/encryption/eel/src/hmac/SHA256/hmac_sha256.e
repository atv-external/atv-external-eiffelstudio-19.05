note
	description: "Summary description for {HMAC_SHA256}."
	author: "Colin LeMahieu"
	date: "$Date: 2013-08-23 14:06:19 +0000 (Fri, 23 Aug 2013) $"
	revision: "$Revision: 92891 $"
	quote: "The bureaucracy is expanding to meet the needs of an expanding bureaucracy."

class
	HMAC_SHA256

inherit
	HMAC [SHA256_HASH]

create
	make,
	make_ascii_key

feature {NONE} -- Implementation

	new_message_hash: like message_hash
		do
			create Result.make
		end

end
