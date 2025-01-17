/******************************************************************************
*                                                             \  ___  /       *
*                                                               /   \         *
* Edison Design Group C++  Runtime                           - | \^/ | -      *
* Copyright 1993-2004 Edison Design Group, Inc.                 \   /         *
* All rights reserved.  Consult your license regarding        /  | |  \       *
* permissions and restrictions.                                  [_]          *
*                                                                             *
******************************************************************************/
/*

C++ operator new();

*/

#include "basics.h"
#include "runtime.h"

/* Note that operator new is not in the std namespace. */


extern void *operator new(size_t size) THROW(STD_NAMESPACE::bad_alloc)
/*
Allocate the specified memory size from free store.  If the allocation fails,
call *_new_handler() if defined (non-NULL pointer), and try the allocation
again.  The new_handler is permitted to
	- cause more memory to be available,
	- throw an exception, or
	- call exit or abort.

If the size passed by the caller is zero, it is incremented to one
because the behavior of malloc is unspecified when size is zero.
In C++, a call of operator new(0) must return a value distinct from other
calls of operator new.
*/
{
  void *ptr;

  if (size == 0) size = 1;
  while ((ptr = (void *)malloc(size)) == NULL) {
    /* The allocation failed -- call the current new handler routine.  Use
       the routine pointed to by _new_handler.  If this value is NULL, use
       the default new handler. */
    STD_NAMESPACE::new_handler	new_handler;
    new_handler = _new_handler != NULL ? _new_handler : __default_new_handler;
    (*new_handler) ();
#if !EXCEPTION_HANDLING
    /* A new handler is supposed to make more memory available, or to exit
       via an exception or by calling abort() or exit().  In order to support
       implementations without exception handling, the older protocol of
       returning a NULL value is supported by the default new handler.
       If the default new handler is being used, and exceptions are not
       enabled, return a NULL pointer. */
    if (new_handler == (STD_NAMESPACE::new_handler)__default_new_handler) {
      return (void *)NULL;
    }  /* if */
#endif /* EXCEPTION_HANDLING */
  }  /* while */
  return ptr;
}  /* operator new */

/******************************************************************************
*                                                             \  ___  /       *
*                                                               /   \         *
* Edison Design Group C++  Runtime                           - | \^/ | -      *
* Copyright 1993-2004 Edison Design Group, Inc.                 \   /         *
* All rights reserved.  Consult your license regarding        /  | |  \       *
* permissions and restrictions.                                  [_]          *
*                                                                             *
******************************************************************************/

