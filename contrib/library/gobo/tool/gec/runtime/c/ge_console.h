/*
	description:

		"C functions used to implement class CONSOLE"

	system: "Gobo Eiffel Compiler"
	copyright: "Copyright (c) 2007-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"
*/

#ifndef GE_CONSOLE_H
#define GE_CONSOLE_H
#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

#ifdef __cplusplus
extern "C" {
#endif

/*
 * Initialize mutex to determine whether a new
 * console needs to be created.
 */
#ifdef EIF_WINDOWS
extern void GE_init_console(void);
#else
#define GE_init_console()
#endif

/*
 * Create a new DOS console if needed (i.e. in case of a Windows application).
 */
#ifdef EIF_WINDOWS
extern void GE_show_console(void);
#else
#define GE_show_console()
#endif

#ifdef __cplusplus
}
#endif

#endif
