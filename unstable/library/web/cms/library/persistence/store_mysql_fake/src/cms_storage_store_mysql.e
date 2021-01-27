note
	description: "Summary description for {CMS_STORAGE_STORE_MYSQL}."
	date: "$Date: 2017-09-06 20:42:15 +0000 (Wed, 06 Sep 2017) $"
	revision: "$Revision: 100740 $"

class
	CMS_STORAGE_STORE_MYSQL

inherit
	CMS_STORAGE_NULL

create
	make

feature

	make
		do
			default_create
		end

end -- class CMS_STORAGE_STORE_MYSQL
