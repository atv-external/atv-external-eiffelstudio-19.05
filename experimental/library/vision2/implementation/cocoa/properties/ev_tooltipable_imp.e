note
	description: "Eiffel Vision tooltipable. Cocoa implementation."
	author: "Daniel Furrer"
	keywords: "tooltip, popup"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

deferred class
	EV_TOOLTIPABLE_IMP

inherit
	EV_TOOLTIPABLE_I

feature -- Initialization

	tooltip: STRING_32
			-- Tooltip that has been set.
		do
			if attached internal_tooltip_string as l_tooltip then
				Result := l_tooltip.twin
			else
				create Result.make_empty
			end
		end

feature -- Element change

	set_tooltip (a_tooltip: READABLE_STRING_GENERAL)
			-- Set `tooltip' to `a_text'.
		do
			internal_tooltip_string := a_tooltip.as_string_32.twin
		end

feature {NONE} -- Implementation

	internal_tooltip_string: detachable STRING_32

end -- EV_TOOLTIPABLE_IMP
