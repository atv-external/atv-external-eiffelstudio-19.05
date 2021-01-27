note
	description: "Summary description for {JWT_ERROR}."
	date: "$Date: 2017-06-20 16:16:59 +0000 (Tue, 20 Jun 2017) $"
	revision: "$Revision: 100534 $"

deferred class
	JWT_ERROR

feature -- Access

	id: STRING
		deferred
		end

	message: READABLE_STRING_8
		deferred
		end

end
