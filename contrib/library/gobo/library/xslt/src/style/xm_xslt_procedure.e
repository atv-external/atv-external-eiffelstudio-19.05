note

	description:

	"Element nodes in an XSLT stylesheet that can contain local variable declaration.%
%Specifically, xsl:template, xsl:variable, xsl:param, xsl:function or xsl:attribute-sets"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004-2015, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class XM_XSLT_PROCEDURE

feature -- Access

	slot_manager: XM_XPATH_SLOT_MANAGER
			-- Slot manager

invariant

	slot_manager_not_void: slot_manager /= Void

end
