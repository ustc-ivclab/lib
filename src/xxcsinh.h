/* xxcsinh.h -- common csinh[fl] functionality */
#include <complex.h>
#include "xmath.h"
_STD_BEGIN

FCTYPE (FFUN(csinh))(FCTYPE x)
	{	/* find complex hyperbolic sine */
	return (FNAME(Cbuild)(
		FNAME(Sinh)(FFUN(creal)(x), FFUN(cos)(FFUN(cimag)(x))),
		FNAME(Cosh)(FFUN(creal)(x), FFUN(sin)(FFUN(cimag)(x)))));
	}
_STD_END

/*
 * Copyright (c) 1992-2004 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
V4.02:1476 */
