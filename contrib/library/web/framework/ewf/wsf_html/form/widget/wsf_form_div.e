note
	description : "Objects that ..."
	author      : "$Author: jfiat $"
	date        : "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision    : "$Revision: 99933 $"

class
	WSF_FORM_DIV

inherit
	WSF_WIDGET_DIV
		undefine
			extend
		end

	WSF_FORM_COMPOSITE

create
	make,
	make_with_item,
	make_with_items,
	make_with_text,
	make_with_text_and_css_id,
	make_with_item_and_css_id

end
