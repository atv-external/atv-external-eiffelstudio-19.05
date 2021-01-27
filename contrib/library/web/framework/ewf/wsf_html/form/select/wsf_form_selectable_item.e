note
	description: "Summary description for {WSF_FORM_SELECTABLE_ITEM}."
	date: "$Date: 2017-04-14 10:56:12 +0000 (Fri, 14 Apr 2017) $"
	revision: "$Revision: 100193 $"

deferred class
	WSF_FORM_SELECTABLE_ITEM

feature -- Status report

	is_selected	: BOOLEAN
		deferred
		end

	is_same_value (v: READABLE_STRING_GENERAL): BOOLEAN
		deferred
		end

feature -- Change

	set_is_selected (b: like is_selected)
		deferred
		end

end
