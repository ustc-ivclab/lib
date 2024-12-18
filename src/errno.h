/*****************************************************************************/
/*  ERRNO.H  v7.4.24                                                         */
/*                                                                           */
/* Copyright (c) 1995-2018 Texas Instruments Incorporated                    */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/

#ifndef _ERRNO
#define _ERRNO



#ifdef __cplusplus
//----------------------------------------------------------------------------
// <cerrno> IS RECOMMENDED OVER <errno.h>.  <errno.h> IS PROVIDED FOR
// COMPATIBILITY WITH C AND THIS USAGE IS DEPRECATED IN C++
//----------------------------------------------------------------------------
extern "C" namespace std
{
#endif /* __cplusplus */

#include <linkage.h>
#include <_tls.h>


   #if defined(__TMS320C6X__) && defined(__TI_EABI__)
   /*------------------------------------------------------------------------*/
   /* Under EABI, use function to access errno since it likely has TLS in    */
   /* a thread-safe version of the RTS library.                              */
   /*------------------------------------------------------------------------*/
    extern int *__c6xabi_errno_addr(void);
    __TI_TLS_DATA_DECL(int, __errno);

    #ifdef __cplusplus
     #define errno (*::std::__c6xabi_errno_addr())
    #else
     #define errno (*__c6xabi_errno_addr())
    #endif

   /*------------------------------------------------------------------------*/
   /* Change #defines for CLIB ABI conformance.                              */
   /*------------------------------------------------------------------------*/
    #define EDOM   33
    #define ERANGE 34
    #define ENOENT 2
    #define EFPOS  152
    #define EILSEQ 88

   #else /* defined(__TMS320C6X__) && defined(__TI_EABI__) */
   /*------------------------------------------------------------------------*/
   /* Old style definition of errno.                                         */
   /*------------------------------------------------------------------------*/
    extern _DATA_ACCESS int errno;
    
    #ifdef __cplusplus
      #define errno ::std::errno
    #else
      #define errno errno
    #endif

   /*------------------------------------------------------------------------*/
   /* Change #defines for CLIB ABI conformance.                              */
   /*------------------------------------------------------------------------*/
    #define EDOM   1
    #define ERANGE 2
    #define ENOENT 3
    #define EFPOS  5
    #define EILSEQ 6

   #endif /* defined(__TMS320C6X__) && defined(__TI_EABI__) */


#ifdef __cplusplus
} /* extern "C" namespace std */
#endif /* __cplusplus */

#endif  /* _ERRNO */

#if defined(__cplusplus) && !defined(_CPP_STYLE_HEADER)


#endif /* _CPP_STYLE_HEADER */

