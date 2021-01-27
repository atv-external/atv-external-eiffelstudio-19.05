note
	description: "[
			Message response to redirect client to new location.
		]"
	date: "$Date: 2015-04-30 08:41:13 +0000 (Thu, 30 Apr 2015) $"
	revision: "$Revision: 97217 $"

class
	CMS_REDIRECTION_RESPONSE_MESSAGE

inherit
	CMS_RESPONSE_MESSAGE

create
	make

feature {NONE} -- Initialization

	make (a_location: READABLE_STRING_8)
		do
			initialize
			status_code := {HTTP_STATUS_CODE}.see_other
			header.put_location (a_location)
		end

end
