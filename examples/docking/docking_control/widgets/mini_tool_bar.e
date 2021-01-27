note
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2009-08-06 08:38:56 +0000 (Thu, 06 Aug 2009) $"
	revision: "$Revision: 80133 $"

class
	MINI_TOOL_BAR

inherit
	MINI_TOOL_BAR_IMP

create
	make

feature {NONE} -- Initialization

	make
			-- Creation method
		do
			create_all_widgets
			create_all_actions
			
			default_create
		end

	user_initialization
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
		end

	create_all_widgets
			-- Create all widgets
		do
			create l_ev_button_1
			create l_ev_check_button_1
			create l_ev_checkable_list_1
			create l_ev_list_item_1
			create l_ev_checkable_tree_1
			create l_ev_tree_item_1
			create l_ev_tree_item_2
			create l_ev_combo_box_1
			create l_ev_drawing_area_1
			create l_ev_grid_1
			create l_ev_header_1
			create l_ev_horizontal_progress_bar_1
			create l_ev_horizontal_range_1
			create l_ev_horizontal_scroll_bar_1
			create l_ev_vertical_separator_1
			create l_ev_horizontal_separator_1
			create l_ev_label_1
			create l_ev_radio_button_1
			create l_ev_spin_button_1
		end

	create_all_actions
			-- Create all actions
		do
			create string_constant_set_procedures.make (10)
			create string_constant_retrieval_functions.make (10)
			create integer_constant_set_procedures.make (10)
			create integer_constant_retrieval_functions.make (10)
			create pixmap_constant_set_procedures.make (10)
			create pixmap_constant_retrieval_functions.make (10)
			create integer_interval_constant_retrieval_functions.make (10)
			create integer_interval_constant_set_procedures.make (10)
			create font_constant_set_procedures.make (10)
			create font_constant_retrieval_functions.make (10)
			create pixmap_constant_retrieval_functions.make (10)
			create color_constant_set_procedures.make (10)
			create color_constant_retrieval_functions.make (10)
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"


end