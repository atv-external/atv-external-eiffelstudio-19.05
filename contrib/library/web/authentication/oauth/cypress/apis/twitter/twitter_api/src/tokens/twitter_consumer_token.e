note
	description: "Object representing Twitter Consumer Token a pair of public and private keys"
	date: "$Date: 2018-11-16 13:29:33 +0000 (Fri, 16 Nov 2018) $"
	revision: "$Revision: 102478 $"

class
	TWITTER_CONSUMER_TOKEN

create
	make

feature {NONE} -- Initialization

	make (a_api_key: detachable STRING; a_api_secret: detachable STRING)
		do
			api_key := a_api_key
			api_secret := a_api_secret
		end

feature -- Consumers Key

	api_key: detachable STRING
			-- Consumer key
			--| The consumer key identifies the application making the request.

	api_secret: detachable STRING
			-- Consumer secret.

end
