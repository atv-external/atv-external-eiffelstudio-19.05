/*
	description: "Platform specific sizes of basic elements."
	date:		": 2013-03-15 14:03:31 +0000 (Fri, 15 Mar 2013) $"
	revision:	": 91388 $"
	copyright:	"Copyright (c) 1985-2006, Eiffel Software."
	license:	"GPL version 2 see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"Commercial license is available at http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Runtime.
			
			Eiffel Software's Runtime is free software; you can
			redistribute it and/or modify it under the terms of the
			GNU General Public License as published by the Free
			Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Runtime is distributed in the hope
			that it will be useful,	but WITHOUT ANY WARRANTY;
			without even the implied warranty of MERCHANTABILITY
			or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Runtime; if not,
			write to the Free Software Foundation, Inc.,
			51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"
*/

#ifndef _size_h_
#define _size_h_
#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

#include "eif_portable.h"

/* Basic sizes */
#define EIF_ALIGN	8		/* Alignment restrictions */
#define R64SIZ	8		/* Size of double */
#define I64SIZ	8	/* Size of integer 64 bits */
#define R32SIZ	4		/* Size of float */
#define REFSIZ	8		/* Size of char * */
/* Should be $longsize but for now it is 32 bits only. */
#define LNGSIZ	4	/* Size of long */
#define I16SIZ	2	/* Size of integer 16 bits */
#define CHRSIZ	1		/* Size of char */
#define PTRSIZ	8		/* Size of a function pointer: FIXME */
#define BYTSIZ	8		/* Size of a byte, in bits */
#define LNGPAD_2 LNGPAD(2)	/* equivalent to LNGPAD(2) */

#define REFPAD(n) (((((n)*REFSIZ)/EIF_ALIGN)+((((n)*REFSIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define CHRPAD(n) (((((n)*CHRSIZ)/EIF_ALIGN)+((((n)*CHRSIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define I16PAD(n) (((((n)*I16SIZ)/EIF_ALIGN)+((((n)*I16SIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define LNGPAD(n) (((((n)*LNGSIZ)/EIF_ALIGN)+((((n)*LNGSIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define R32PAD(n) (((((n)*R32SIZ)/EIF_ALIGN)+((((n)*R32SIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define I64PAD(n) (((((n)*I64SIZ)/EIF_ALIGN)+((((n)*I64SIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define R64PAD(n) (((((n)*R64SIZ)/EIF_ALIGN)+((((n)*R64SIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)
#define PTRPAD(n) (((((n)*PTRSIZ)/EIF_ALIGN)+((((n)*PTRSIZ)%EIF_ALIGN)?1:0))*EIF_ALIGN)

	/* Macros used to access fields in the object */
#define REFACS(n) ((n)*REFSIZ)
#define CHRACS(n) ((n)*CHRSIZ)
#define I16ACS(n) ((n)*I16SIZ)
#define LNGACS(n) ((n)*LNGSIZ)
#define R32ACS(n) ((n)*R32SIZ)
#define I64ACS(n) ((n)*I64SIZ)
#define R64ACS(n) ((n)*R64SIZ)
#define PTRACS(n) ((n)*PTRSIZ)

#endif
