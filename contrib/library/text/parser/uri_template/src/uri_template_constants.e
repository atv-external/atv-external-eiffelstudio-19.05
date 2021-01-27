note
	description: "[
		Summary description for {URI_TEMPLATE_CONSTANTS}.

		see http://tools.ietf.org/html/rfc6570
	]"
	author: "Jocelyn Fiat"
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	URI_TEMPLATE_CONSTANTS

feature -- Operator

	Reserved_operator: CHARACTER = '+'

	Form_style_query_operator: CHARACTER = '?'

	Form_style_query_continuation: CHARACTER = '&'

	Path_style_parameters_operator: CHARACTER = ';'

	Path_segment_operator: CHARACTER = '/'

	Fragment_expansion: CHARACTER = '#'

	Label_operator: CHARACTER = '.'

feature -- Separator	

	Default_delimiter: CHARACTER = '=' --| Not included in the RFC, but was part of previous Draft

feature -- Explode	

	Explode_plus: CHARACTER = '+'

	Explode_star: CHARACTER = '*'

feature -- Modified	

	Modifier_substring: CHARACTER = ':'

	Modifier_remainder: CHARACTER = '^'

note
	copyright: "2011-2011, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
