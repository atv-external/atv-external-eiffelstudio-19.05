note
	description: "NULL connector, mainly used for void-safety purpose or testing"
	date: "$Date: 2015-06-10 16:48:30 +0000 (Wed, 10 Jun 2015) $"
	revision: "$Revision: 97452 $"

class
	WGI_NULL_CONNECTOR

inherit
	WGI_CONNECTOR

create
	make

feature {NONE} -- Initialization

	make
		do
		end

feature -- Access

	Name: STRING_8 = "NULL"
			-- Name of Current connector

	Version: STRING_8 = "0.1"
			-- Version of Current connector	

feature -- Execution

	launch
		do
		end

note
	copyright: "2011-2012, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
