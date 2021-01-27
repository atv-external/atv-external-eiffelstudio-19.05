note
	description: "Object represening and  access token (public, private pair) that can be used to make API requests on your own account's behalf"
	date: "$Date: 2018-11-16 13:29:33 +0000 (Fri, 16 Nov 2018) $"
	revision: "$Revision: 102478 $"

class
	TWITTER_ACCESS_TOKEN

create
	make

feature {NONE} -- Initialization

	make (a_access_key: detachable STRING; a_access_secret: detachable STRING)
		do
			access_key := a_access_key
			access_secret := a_access_secret
		end

feature -- Access Key

	access_key: detachable STRING
			-- The access token identifies the user making the request.

	access_secret: detachable STRING
			-- Secret token

end
