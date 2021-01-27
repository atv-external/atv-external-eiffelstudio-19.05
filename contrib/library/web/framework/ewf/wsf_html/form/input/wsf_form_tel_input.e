note
	description: "[
		Represent an input type tel
		Example
		<input type="tel" name="tel" id="tel" required>
	]"
	date: "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision: "$Revision: 99933 $"
	EIS: "name=tel", "src=https://html.spec.whatwg.org/multipage/forms.html#telephone-state-(type=tel)"

class
	WSF_FORM_TEL_INPUT

inherit
	WSF_FORM_INPUT

create
	make,
	make_with_text

feature -- Access

	input_type: STRING = "tel"
end
