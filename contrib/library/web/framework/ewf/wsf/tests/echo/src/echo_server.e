note
	description : "Objects that ..."
	author      : "$Author: jfiat $"
	date        : "$Date: 2015-06-10 16:48:30 +0000 (Wed, 10 Jun 2015) $"
	revision    : "$Revision: 97452 $"

class
	ECHO_SERVER

inherit
	WSF_DEFAULT_SERVICE [ECHO_SERVER_EXECUTION]

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize `Current'.
		do
			set_service_option ("port", 9091)
			set_service_option ("verbose", True)
			make_and_launch
		end

end
