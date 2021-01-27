note
	description: "Worker implementation that executes CP_TASK objects."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CP_TASK_WORKER

inherit
	CP_WORKER [CP_TASK, CP_DYNAMIC_TYPE_IMPORTER [CP_TASK]]

create
	make

feature -- Basic operations

	do_work (a_item: CP_TASK)
			-- <Precursor>
		do
			a_item.start
		end

end
