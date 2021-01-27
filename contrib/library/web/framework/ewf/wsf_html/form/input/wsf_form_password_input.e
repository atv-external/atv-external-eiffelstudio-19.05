note
	date: "$Date: 2018-12-19 15:02:55 +0000 (Wed, 19 Dec 2018) $"
	revision: "$Revision: 102640 $"

class
	WSF_FORM_PASSWORD_INPUT

inherit
	WSF_FORM_INPUT

create
	make,
	make_with_text

feature -- Access

	input_type: STRING
		once
			Result := "password"
		end

end
