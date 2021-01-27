note
	description: "Basic Email Service customized for cms site"
	author: ""
	date: "$Date: 2015-06-24 14:11:02 +0000 (Wed, 24 Jun 2015) $"
	revision: "$Revision: 97549 $"

deferred class
	EMAIL_SERVICE_PARAMETERS

feature	-- Access

	smtp_server: IMMUTABLE_STRING_8
		deferred
		end

	admin_email: IMMUTABLE_STRING_8
		deferred
		end

end
