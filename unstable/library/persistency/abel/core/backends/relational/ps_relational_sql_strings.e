note
	description: "Summary description for {PS_RELATIONAL_SQL_STRINGS}."
	author: ""
	date: "$Date: 2014-01-13 23:58:56 +0000 (Mon, 13 Jan 2014) $"
	revision: "$Revision: 93974 $"

deferred class
	PS_RELATIONAL_SQL_STRINGS

feature

	show_tables: STRING
		deferred
		end

	assemble_upsert (table: READABLE_STRING_8; columns: LIST [STRING]; values: LIST [STRING]): STRING
		deferred
		end
end
