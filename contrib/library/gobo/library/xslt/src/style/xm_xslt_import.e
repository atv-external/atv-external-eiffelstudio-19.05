note

	description:

		"Objects that represent xsl:import elements in the stylesheet."

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XSLT_IMPORT

inherit

	XM_XSLT_MODULE

create

	make_style_element

feature -- Status report

	is_import: BOOLEAN
			-- Is this an xsl:import?
		do
			Result := True
		end

end

