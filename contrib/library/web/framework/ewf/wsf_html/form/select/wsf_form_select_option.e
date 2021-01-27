note
	description : "Objects that ..."
	author      : "$Author: jfiat $"
	date        : "$Date: 2017-04-14 10:56:12 +0000 (Fri, 14 Apr 2017) $"
	revision    : "$Revision: 100193 $"

class
	WSF_FORM_SELECT_OPTION

inherit
	WSF_FORM_SELECTABLE_ITEM

	SHARED_HTML_ENCODER

create
	make

feature {NONE} -- Initialization

	make (a_value: READABLE_STRING_GENERAL; a_text: detachable like text)
			-- Initialize `Current'.
		do
			value := a_value.as_string_32
			if a_text = Void then
				text := html_encoder.general_encoded_string (a_value)
			else
				text := a_text
			end
		end

feature -- Status

	is_selected: BOOLEAN

	is_same_value (v: READABLE_STRING_GENERAL): BOOLEAN
		do
			Result := value.same_string_general (v)
		end

	is_same_text (v: like text): BOOLEAN
		do
			Result := text.same_string (v)
		end

feature -- Access

	value: READABLE_STRING_32

	text: READABLE_STRING_8

	description: detachable READABLE_STRING_8

feature -- Change

	set_is_selected (b: like is_selected)
		do
			is_selected := b
		end

	set_description (d: like description)
		do
			description := d
		end

end
