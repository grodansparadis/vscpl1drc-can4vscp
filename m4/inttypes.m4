# inttypes.m4 serial 1 (gettext-0.11.4)
dnl Copyright © 1997-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Paul Eggert.

# Define HAVE_INTTYPES_H if <inttypes.h> exists and doesn't clash with
# <sys/types.h>.

AC_DEFUN([gt_HEADER_INTTYPES_H],
[
  AC_CACHE_CHECK([for inttypes.h], gt_cv_header_inttypes_h,
  [
    AC_TRY_COMPILE(
      [#include <sys/types.h>
#include <inttypes.h>],
      [], gt_cv_header_inttypes_h=yes, gt_cv_header_inttypes_h=no)
  ])
  if test $gt_cv_header_inttypes_h = yes; then
    AC_DEFINE_UNQUOTED(HAVE_INTTYPES_H, 1,
      [Define if <inttypes.h> exists and doesn't clash with <sys/types.h>.])
  fi
])
