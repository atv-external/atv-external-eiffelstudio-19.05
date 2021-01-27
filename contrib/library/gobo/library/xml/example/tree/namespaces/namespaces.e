note

	description:

		"Reports information about Namespace declarations in XML files"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2001-2018, Andreas Leitner and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class NAMESPACES

inherit

	KL_SHARED_ARGUMENTS
	KL_SHARED_STANDARD_FILES

create

	make

feature {NONE} -- Initialization

	make
			-- Run.
		do
			Arguments.set_program_name ("namespaces")
			create error_handler.make_standard
			process_arguments
			if not has_error then
				process_data_file
			end
		end

feature -- Processing

	process_data_file
			-- Parse file.
		require
			filename_not_void: filename /= Void
			event_parser_not_void: event_parser /= Void
			tree_pipe_not_void: tree_pipe /= Void
		local
			formatter: NS_FORMATTER
			in: KL_TEXT_INPUT_FILE
			cannot_read: UT_CANNOT_READ_FILE_ERROR
			l_filename: like filename
			l_event_parser: like event_parser
			l_tree_pipe: like tree_pipe
		do
			l_filename := filename
			l_event_parser := event_parser
			l_tree_pipe := tree_pipe
			check precondition_filename: l_filename /= Void then end
			check precondition_event_parser: l_event_parser /= Void then end
			check precondition_tree_pipe: l_tree_pipe /= Void then end

			error_handler.report_info_message ("parsing data...")
			create in.make (l_filename)
			in.open_read
			if not in.is_open_read then
				create cannot_read.make (l_filename)
				error_handler.report_error (cannot_read)
				has_error := True
			else
				l_event_parser.parse_from_stream (in)
				in.close
				if l_tree_pipe.error.has_error then
					error_handler.report_error_message (l_tree_pipe.last_error)
					has_error := True
				else
					error_handler.report_info_message ("printing document...")
					create formatter.make
					formatter.process_document (l_tree_pipe.document)
					std.output.put_string (formatter.last_string)
					std.output.put_new_line
				end
			end
			error_handler.report_info_message ("exiting...")
		end

	process_arguments
			-- Read command line arguments.
		local
			parser_switch: STRING
			l_event_parser: like event_parser
			l_tree_pipe: like tree_pipe
		do
			if Arguments.argument_count /= 2 then
				error_handler.report_error (Usage_message)
				has_error := True
			else
				parser_switch := Arguments.argument (1)
				if parser_switch.is_equal ("--expat") then
					if not fact.is_expat_parser_available then
						error_handler.report_error_message ("expat is not availabe, please choose other parser backend")
						has_error := True
					else
						l_event_parser := fact.new_expat_parser
						event_parser := l_event_parser
					end
				else
					create {XM_EIFFEL_PARSER} l_event_parser.make
					event_parser := l_event_parser
				end
				if l_event_parser /= Void then
						-- Create and bind tree pipe.
					create l_tree_pipe.make
					tree_pipe := l_tree_pipe
					l_event_parser.set_callbacks (l_tree_pipe.start)
				end
				filename := Arguments.argument (2)
			end
		ensure
			filename_not_void: not has_error implies filename /= Void
			parser_not_void: not has_error implies event_parser /= Void
			tree_pipe_not_void: not has_error implies tree_pipe /= Void
		end

feature -- Parser

	fact: XM_EXPAT_PARSER_FACTORY
			-- Expat XML parser factory
		once
			create Result
		ensure
			factory_not_void: Result /= Void
		end

	event_parser: detachable XM_PARSER
			-- XML parser

	tree_pipe: detachable XM_TREE_CALLBACKS_PIPE
			-- Tree generating callbacks

feature -- Access

	filename: detachable STRING
			-- File name

	has_error: BOOLEAN
			-- Error status

	error_handler: UT_ERROR_HANDLER
			-- Error handler

feature {NONE} -- Implementation

	Usage_message: UT_USAGE_MESSAGE
			-- Usage message
		local
			a_message: STRING
		once
			create a_message.make (31)
			a_message.append_character ('(')
			if fact.is_expat_parser_available then
				a_message.append_string ("--expat|")
			end
			a_message.append_string ("--eiffel) <input-file>")
			create Result.make (a_message)
		ensure
			usage_message_not_void: Result /= Void
		end

invariant

	error_handler_not_void: error_handler /= Void

end
