note
	description: "[
		Exception raised when $ is applied to melted feature
		]"
	library: "Free implementation of ELKS library"
	copyright: "Copyright (c) 1986-2006, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class
	ADDRESS_APPLIED_TO_MELTED_FEATURE

inherit
	EIFFELSTUDIO_SPECIFIC_LANGUAGE_EXCEPTION

feature -- Access

	frozen code: INTEGER
			-- Exception code
		do
			Result := {EXCEP_CONST}.dollar_applied_to_melted_feature
		end

	tag: IMMUTABLE_STRING_32
			-- <Precursor>
		once
			create Result.make_from_string_8 ("CECIL cannot call melted code.")
		end

end
