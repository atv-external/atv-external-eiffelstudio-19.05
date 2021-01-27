note
	description: "Summary description for {SHARED_DATABASE}."
	date: "$Date: 2018-09-06 16:07:18 +0000 (Thu, 06 Sep 2018) $"
	revision: "$Revision: 102137 $"

class
	SHARED_DATABASE

feature -- Database

	database: separate MESSAGES_API
		once ("PROCESS")
			create Result.make
		end

end
