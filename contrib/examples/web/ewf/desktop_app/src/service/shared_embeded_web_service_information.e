note
	description: "Summary description for {SHARED_EMBEDED_WEB_SERVICE_INFORMATION}."
	author: ""
	date: "$Date: 2015-06-10 16:48:30 +0000 (Wed, 10 Jun 2015) $"
	revision: "$Revision: 97452 $"

class
	SHARED_EMBEDED_WEB_SERVICE_INFORMATION

feature	-- Access

	port_number: INTEGER
		do
			Result := separate_port_number (port_number_cell)
		end

	set_port_number (a_port: like port_number)
		do
			separate_set_port_number (port_number_cell, a_port)
		end

	separate_port_number (cl: like port_number_cell): like port_number
		do
			Result := cl.item
		end

	separate_set_port_number (cl: like port_number_cell; a_port: like port_number)
		do
			cl.replace (a_port)
		end

	port_number_cell: separate CELL [INTEGER]
		once ("process")
			create Result.put (0)
		end

end
