note
	description: "MYSQL_ROW C Struct Wrapper"
	author: "haroth@student.ethz.ch"
	date: "$Date: 2012-03-16 09:50:04 +0000 (Fri, 16 Mar 2012) $"
	revision: "$Revision: 88416 $"

class
	MYSQLI_INTERNAL_ROW

inherit
	MEMORY_STRUCTURE
	MYSQLI_EXTERNALS

create{MYSQLI_EXTERNALS}
	make

feature

	structure_size: INTEGER
		do
			Result := size_of_mysql_row_struct
		end

end
