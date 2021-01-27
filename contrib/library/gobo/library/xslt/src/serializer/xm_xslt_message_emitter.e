note
	description:

	"Emitters that write xsl:messages."

library: "Gobo Eiffel XSLT Library"
copyright: "Copyright (c) 2004, Colin Adams and others"
license: "MIT License"
date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
revision: "$Revision: 98678 $"

class XM_XSLT_MESSAGE_EMITTER

inherit

	XM_XSLT_XML_EMITTER
		redefine
			end_document
		end

create

	make

feature -- Events

	end_document
			-- Notify the end of the document
		do
			if is_output_open then
				output ("%N")
			end
			Precursor
		end

end


