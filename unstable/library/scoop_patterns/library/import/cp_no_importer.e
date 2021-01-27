note
	description:
		"[
			A strategy that does not perform copies or import.
			
			This strategy should be used for expanded types or very
			large objects such as images.
			
			Note: Make sure that non-expanded objects are located on their
			own processor, if they are passed to components making use of 
			this import strategy. Otherwise a deadlock or unintentional 
			serialization may occur.
		]"
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CP_NO_IMPORTER [G]

inherit
	CP_IMPORT_STRATEGY [G]

feature

	import (object: separate G): separate G
			-- Don't import `object'.
		do
			Result := object
		ensure then
			Result = object
		end

end
