note
	description: "Helper for paramenter Names"
	date: "$Date: 2014-11-13 15:23:47 +0000 (Thu, 13 Nov 2014) $"
	revision: "$Revision: 96085 $"

deferred class
	PARAMETER_NAME_HELPER

feature -- String

	string_parameter (a_value: STRING; a_length: INTEGER): STRING
			-- Adjust a parameter `a_value' to the lenght `a_length'.
		require
			valid_length: a_length > 0
		do
			if a_value.count <= a_length then
				Result := a_value
			else
				create Result.make_from_string (a_value.substring (1, a_length))
			end
		end

end
