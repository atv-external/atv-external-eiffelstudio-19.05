note
	description: "Summary description for {WIKI_COMMENT}."
	author: ""
	date: "$Date: 2014-07-31 10:51:15 +0000 (Thu, 31 Jul 2014) $"
	revision: "$Revision: 95544 $"

class
	WIKI_COMMENT

inherit
	WIKI_STRING_ITEM

create
	make

feature {NONE} -- Initialization

	make (s: STRING)
		do
			text := s
		end

feature -- Access

	text: STRING

feature -- Status report

	is_empty: BOOLEAN
			-- Is empty text?
		do
			Result := text.is_empty
		end

feature -- Visitor

	process (a_visitor: WIKI_VISITOR)
		do
			a_visitor.visit_comment (Current)
		end

note
	copyright: "2011-2014, Jocelyn Fiat and Eiffel Software"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Jocelyn Fiat
			Contact: http://about.jocelynfiat.net/
		]"
end
