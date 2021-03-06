note
	description: "Defines the date(s) that the task runs by month, week, and day of the week. Task Scheduler."
	generator: "Automatically generated by the EiffelCOM Wizard."

class
	X_MONTHLYDOW_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

create
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER)
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	w_which_week: INTEGER
			-- 
		do
			Result := ccom_x_monthlydow_w_which_week (item)
		end

	rgf_days_of_the_week: INTEGER
			-- 
		do
			Result := ccom_x_monthlydow_rgf_days_of_the_week (item)
		end

	rgf_months: INTEGER
			-- 
		do
			Result := ccom_x_monthlydow_rgf_months (item)
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size of structure
		do
			Result := c_size_of_x_monthlydow
		end

feature -- Basic Operations

	set_w_which_week (a_w_which_week: INTEGER)
			-- Set `w_which_week' with `a_w_which_week'.
		do
			ccom_x_monthlydow_set_w_which_week (item, a_w_which_week)
		end

	set_rgf_days_of_the_week (a_rgf_days_of_the_week: INTEGER)
			-- Set `rgf_days_of_the_week' with `a_rgf_days_of_the_week'.
		do
			ccom_x_monthlydow_set_rgf_days_of_the_week (item, a_rgf_days_of_the_week)
		end

	set_rgf_months (a_rgf_months: INTEGER)
			-- Set `rgf_months' with `a_rgf_months'.
		do
			ccom_x_monthlydow_set_rgf_months (item, a_rgf_months)
		end

feature {NONE}  -- Externals

	c_size_of_x_monthlydow: INTEGER
			-- Size of structure
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW.h%"]"
		alias 
			"sizeof (ecom_MS_TaskSched_lib::_MONTHLYDOW)"
		end

	ccom_x_monthlydow_w_which_week (a_pointer: POINTER): INTEGER
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *):EIF_REFERENCE"
		end

	ccom_x_monthlydow_set_w_which_week (a_pointer: POINTER; arg2: INTEGER)
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *, long)"
		end

	ccom_x_monthlydow_rgf_days_of_the_week (a_pointer: POINTER): INTEGER
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *):EIF_REFERENCE"
		end

	ccom_x_monthlydow_set_rgf_days_of_the_week (a_pointer: POINTER; arg2: INTEGER)
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *, long)"
		end

	ccom_x_monthlydow_rgf_months (a_pointer: POINTER): INTEGER
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *):EIF_REFERENCE"
		end

	ccom_x_monthlydow_set_rgf_months (a_pointer: POINTER; arg2: INTEGER)
			-- 
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__MONTHLYDOW_impl.h%"](ecom_MS_TaskSched_lib::_MONTHLYDOW *, long)"
		end

end -- X_MONTHLYDOW_RECORD


