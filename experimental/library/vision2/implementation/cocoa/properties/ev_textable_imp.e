note
	description: "Eiffel Vision textable. Cocoa implementation."
	author: "Daniel Furrer"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

deferred class
	EV_TEXTABLE_IMP

inherit
	EV_TEXTABLE_I

feature --

	initialize_textable
		do
			create internal_text.make_empty
		end

feature -- Access

	text: STRING_32
			-- Text of the label.
		do
			if attached internal_text as l_text then
				Result := l_text
			else
				create Result.make_empty
			end
		end

	text_alignment: INTEGER
			-- Alignment of the text in the label.
		do
			Result := alignment
		end

feature -- Status setting

	align_text_center
			-- Display `text' centered.
		do
			alignment := {EV_TEXT_ALIGNMENT_CONSTANTS}.ev_text_alignment_center
		end

	align_text_left
			-- Display `text' left aligned.
		do
			alignment := {EV_TEXT_ALIGNMENT_CONSTANTS}.ev_text_alignment_left
		end

	align_text_right
			-- Display `text' right aligned.
		do
			alignment := {EV_TEXT_ALIGNMENT_CONSTANTS}.ev_text_alignment_right
		end

feature -- Element change	

	set_text (a_text: READABLE_STRING_GENERAL)
			-- Assign `a_text' to `text'.
		do
			internal_text := a_text.to_string_32
		end

feature -- Internal

	internal_text: detachable STRING

feature {EV_ANY_IMP} -- Implementation

	accelerators_enabled: BOOLEAN
			-- Does `Current' have keyboard accelerators enabled?
		do
			Result := False
		end

	alignment: INTEGER -- the alignement

	filter_ampersand (s: STRING_32; char: CHARACTER)
			-- Replace occurrences of '&' from `s'  by `char' and
			-- replace occurrences of "&&" with '&'.
		require
			s_not_void: s /= Void
			s_has_at_least_one_ampersand: s.occurrences ('&') > 0
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > s.count
			loop
				if s.item (i) = '&' then
					if s.item (i + 1) /= '&' then
						s.put (char, i)
					else
						i := i + 1
					end
				end
				i := i + 1
			end
			s.replace_substring_all (once "&&", once "&")
		end

	u_lined_filter (s: READABLE_STRING_GENERAL): STRING_32
			-- Copy of `s' with underscores instead of ampersands.
			-- (If `s' does not contain ampersands, return `s'.)
		require
			s_not_void: s /= Void
		do
			Result := s.as_string_32
			Result.replace_substring_all (once  "_", once  "__")
			if s.has_code (('&').natural_32_code) then
				filter_ampersand (Result, '_')
			end
		end

end -- class EV_TEXTABLE_IMP