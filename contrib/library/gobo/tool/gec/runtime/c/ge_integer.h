/*
	description:

		"C functions used to implement class INTEGER"

	system: "Gobo Eiffel Compiler"
	copyright: "Copyright (c) 2005-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"
*/

#ifndef GE_INTEGER_H
#define GE_INTEGER_H
#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

#include <math.h>

#ifndef GE_power
#define GE_power(x,y) pow((x),(y))
#endif

#endif
