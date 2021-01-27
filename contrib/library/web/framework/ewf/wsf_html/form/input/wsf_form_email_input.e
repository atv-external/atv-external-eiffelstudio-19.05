note
	description: "[
		Represent the intput type email
		Example:
		<input type="email" name="email" required>
	]"
	date: "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision: "$Revision: 99933 $"
	EIS: "name=email", "src=https://html.spec.whatwg.org/multipage/forms.html#e-mail-state-(type=email)"

class
	WSF_FORM_EMAIL_INPUT

inherit

	WSF_FORM_INPUT

create
	make,
	make_with_text

feature -- Access

	input_type: STRING = "email"

end
