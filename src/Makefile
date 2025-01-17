##############################################################################
#
#
# Makefile for C6000 run-time support library version 7.4.24
#
#
##############################################################################
#
# This Makefile is automatically-generated: you usually should not edit it. 
#
##############################################################################


##############################################################################
#
# This Makefile is specific to compiler RTS library version 7.4.24.  
# The format is subject to change without notice.  This Makefile is intended
# for use with mklib, which understands which 'make' variables to set to build
# each distinct version of the RTS library.
#
# This Makefile uses GNU make language extensions.
#
##############################################################################

##############################################################################
#
# GROUPS
#
# The source files are set up in a modular fashion using "groups."  Groups
# represent major feature clusters, and usually specify source files which
# implement that feature.  When building a library which needs a particular
# feature, the group which represents that feature is "activated" by setting a
# 'make' variable.  This variable can be set directly by the user, or may be
# inferred from the setting of other variables.  Groups (and the files they
# contain) not needed for a certain library are not activated.  Some groups
# are always activated.  Groups which are not always activated are enclosed in
# an "ifeq" testing the corresponding 'make' variable (the name of the
# variable is the name of the group).
#
# Groups can specify any kind of source file (e.g. C, C++, assembly), but do
# not list header files, or source files included from other source files.
# This Makefile is focused on how to build the object files, not listing all
# of the necessary files.  Some groups do not list any source files; these
# groups may still carry information such as extra options to use when that
# group is active, or may activate other groups.  Some groups exist only to be
# tested as part of the activation condition of other groups.
#
# Groups can specify extra compiler options to use when that group is active.
# These can be options intended for all targets (UNIVERSAL_FLAGS), such as the
# CPU version, or can be intended only for a certain type of files (CPP_FLAGS)
# (e.g. the option "--exceptions")
#
##############################################################################

##############################################################################
#
# OPTIONS
#
# You can append or override some options through 'make' variables specified
# on the command line.  Not all options can be changed this way, and some
# options are dangerous to use in a Makefile (e.g. "--skip_assembler").
# Options added by groups below should not be altered; if the option is
# undesired, you're probably building the wrong library.  For example, if you
# don't want "--exceptions", you shouldn't be using EXCEPTIONS=1.
#
# You can append options to the standard list by using EXTRA_FLAGS.  This is
# useful for enabling debugging support or activating silicon errata
# workarounds:
#
# gmake LIB=some.lib EXTRA_FLAGS="-g"
#
# You can completely replace the standard list by using STANDARD_FLAGS, but
# this should almost never be necessary.  WARNING: This Makefile will not
# optimize the files if you replace the standard list and your replacement
# options do not include the right optimization flags.
#
# gmake LIB=some.lib STANDARD_FLAGS="-o3 -oe"
#
##############################################################################

##############################################################################
# Available libraries
#
# You can build each 7.4.24 library using the appropriate command:
#
# gmake library LIB=rts6200.lib NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6200_eh.lib EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1
# gmake library LIB=rts6200_elf.lib EABI=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6200_elf40.lib C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1
# gmake library LIB=rts6200_elf40_eh.lib EABI_TDEH=1 EABI=1 EXCEPTIONS=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6200_elf_eh.lib C6000=1 NOT_VENC_ASM=1 C6XABI=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1
# gmake library LIB=rts6200e.lib BIG_ENDIAN=1 C6000=1 NOT_VENC_ASM=1
# gmake library LIB=rts6200e_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1
# gmake library LIB=rts6200e_elf.lib EABI=1 BIG_ENDIAN=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6200e_elf40.lib BIG_ENDIAN=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
# gmake library LIB=rts6200e_elf40_eh.lib C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1
# gmake library LIB=rts6200e_elf_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6200v.lib VENC=1 C_MEMCPY=1 NOASM_RTS=1
# gmake library LIB=rts6200v_eh.lib VENC=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 NOASM_RTS=1 C_MEMCPY=1
# gmake library LIB=rts6400.lib C6000=1 NOT_VENC_ASM=1 C6400=1
# gmake library LIB=rts6400_eh.lib EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6400=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6400_elf.lib C6400=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1 EABI=1
# gmake library LIB=rts6400_elf40.lib EABI=1 ELF40=1 C6000=1 C6400=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6400_elf40_eh.lib EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 C6400=1 NOT_VENC_ASM=1 ELF40=1 C6000=1
# gmake library LIB=rts6400_elf_eh.lib C6000=1 C6XABI=1 C6400=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1
# gmake library LIB=rts6400e.lib BIG_ENDIAN=1 C6000=1 C6400=1 NOT_VENC_ASM=1
# gmake library LIB=rts6400e_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1 C6400=1
# gmake library LIB=rts6400e_elf.lib C6XABI=1 C6400=1 NOT_VENC_ASM=1 C6000=1 BIG_ENDIAN=1 EABI=1
# gmake library LIB=rts6400e_elf40.lib EABI=1 BIG_ENDIAN=1 C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 C6400=1
# gmake library LIB=rts6400e_elf40_eh.lib NOT_VENC_ASM=1 C6XABI=1 ELF40=1 C6400=1 C6000=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
# gmake library LIB=rts6400e_elf_eh.lib C6000=1 NOT_VENC_ASM=1 C6XABI=1 C6400=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1
# gmake library LIB=rts64plus.lib NOT_VENC_ASM=1 C64P=1 C6000=1
# gmake library LIB=rts64plus_eh.lib FULL_PORTABLE_EH=1 EXCEPTIONS=1 C64P=1 C6000=1 NOT_VENC_ASM=1
# gmake library LIB=rts64plus_elf.lib EABI=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1 C6000=1
# gmake library LIB=rts64plus_elf40.lib C64P=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1
# gmake library LIB=rts64plus_elf40_eh.lib EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 ELF40=1 C64P=1 C6000=1
# gmake library LIB=rts64plus_elf_eh.lib EABI_TDEH=1 EABI=1 EXCEPTIONS=1 C64P=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts64plus_elf_mt.lib EABI=1 C6XABI=1 MT=1 NOT_VENC_ASM=1 C64P=1 C6000=1
# gmake library LIB=rts64plus_elf_mt_eh.lib EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 C64P=1 C6000=1
# gmake library LIB=rts64plus_elf_no_parallel_loads.lib EABI=1 NO_PARALLEL_LOADS=1 C6000=1 C64P=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts64plus_elf_no_parallel_loads_eh.lib EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1 NO_PARALLEL_LOADS=1 C6000=1
# gmake library LIB=rts64pluse.lib BIG_ENDIAN=1 NOT_VENC_ASM=1 C6000=1 C64P=1
# gmake library LIB=rts64pluse_eh.lib FULL_PORTABLE_EH=1 EXCEPTIONS=1 BIG_ENDIAN=1 NOT_VENC_ASM=1 C6000=1 C64P=1
# gmake library LIB=rts64pluse_elf.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 C64P=1 BIG_ENDIAN=1 EABI=1
# gmake library LIB=rts64pluse_elf40.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C64P=1 BIG_ENDIAN=1 EABI=1
# gmake library LIB=rts64pluse_elf40_eh.lib NOT_VENC_ASM=1 C6XABI=1 C64P=1 ELF40=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6000=1
# gmake library LIB=rts64pluse_elf_eh.lib EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C64P=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts64pluse_elf_mt.lib EABI=1 BIG_ENDIAN=1 C64P=1 C6000=1 C6XABI=1 MT=1 NOT_VENC_ASM=1
# gmake library LIB=rts64pluse_elf_mt_eh.lib C64P=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1
# gmake library LIB=rts64pluse_elf_no_parallel_loads.lib EABI=1 BIG_ENDIAN=1 C64P=1 NO_PARALLEL_LOADS=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts64pluse_elf_no_parallel_loads_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6000=1 NO_PARALLEL_LOADS=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1
# gmake library LIB=rts64plusv.lib C64P=1 NOASM_RTS=1 C_MEMCPY=1 VENC=1
# gmake library LIB=rts64plusv_eh.lib C_MEMCPY=1 NOASM_RTS=1 C64P=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 VENC=1
# gmake library LIB=rts6600_coff.lib NOT_VENC_ASM=1 COFFABI=1 C6000=1 C6600=1
# gmake library LIB=rts6600_coff_eh.lib C6600=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6000=1 COFFABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6600_elf.lib C6600=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1
# gmake library LIB=rts6600_elf40.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C6600=1 EABI=1
# gmake library LIB=rts6600_elf40_eh.lib EXCEPTIONS=1 C6600=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
# gmake library LIB=rts6600_elf_eh.lib EABI=1 EABI_TDEH=1 EXCEPTIONS=1 C6600=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6600_elf_mt.lib C6000=1 NOT_VENC_ASM=1 MT=1 C6XABI=1 EABI=1 C6600=1
# gmake library LIB=rts6600_elf_mt_eh.lib C6XABI=1 NOT_VENC_ASM=1 MT=1 C6000=1 C6600=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
# gmake library LIB=rts6600e_coff.lib C6000=1 NOT_VENC_ASM=1 COFFABI=1 BIG_ENDIAN=1 C6600=1
# gmake library LIB=rts6600e_coff_eh.lib NOT_VENC_ASM=1 COFFABI=1 C6000=1 FULL_PORTABLE_EH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6600=1
# gmake library LIB=rts6600e_elf.lib EABI=1 C6600=1 BIG_ENDIAN=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6600e_elf40.lib EABI=1 C6600=1 BIG_ENDIAN=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6600e_elf40_eh.lib EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1 C6600=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6600e_elf_eh.lib EABI_TDEH=1 EABI=1 C6600=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
# gmake library LIB=rts6600e_elf_mt.lib C6600=1 BIG_ENDIAN=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 C6000=1
# gmake library LIB=rts6600e_elf_mt_eh.lib C6000=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6600=1
# gmake library LIB=rts6700.lib NOT_VENC_ASM=1 C6700=1 C6000=1
# gmake library LIB=rts6700_eh.lib FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6700=1 C6000=1 NOT_VENC_ASM=1
# gmake library LIB=rts6700_elf.lib EABI=1 C6000=1 C6700=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6700_elf40.lib EABI=1 C6000=1 C6700=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6700_elf40_eh.lib EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 C6700=1 ELF40=1 C6000=1
# gmake library LIB=rts6700_elf_eh.lib EXCEPTIONS=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 C6700=1
# gmake library LIB=rts6700e.lib NOT_VENC_ASM=1 C6700=1 C6000=1 BIG_ENDIAN=1
# gmake library LIB=rts6700e_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 NOT_VENC_ASM=1 C6000=1 C6700=1
# gmake library LIB=rts6700e_elf.lib C6700=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 BIG_ENDIAN=1
# gmake library LIB=rts6700e_elf40.lib BIG_ENDIAN=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 C6700=1 ELF40=1
# gmake library LIB=rts6700e_elf40_eh.lib ELF40=1 C6700=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1
# gmake library LIB=rts6700e_elf_eh.lib EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1 C6700=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6740.lib NOT_VENC_ASM=1 C6000=1 C6740=1
# gmake library LIB=rts6740_eh.lib C6000=1 NOT_VENC_ASM=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6740=1
# gmake library LIB=rts6740_elf.lib EABI=1 C6740=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
# gmake library LIB=rts6740_elf40.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C6740=1 EABI=1
# gmake library LIB=rts6740_elf40_eh.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 EXCEPTIONS=1 C6740=1 EABI_TDEH=1 EABI=1
# gmake library LIB=rts6740_elf_eh.lib NOT_VENC_ASM=1 C6XABI=1 C6000=1 EXCEPTIONS=1 C6740=1 EABI_TDEH=1 EABI=1
# gmake library LIB=rts6740_elf_mt.lib C6740=1 EABI=1 NOT_VENC_ASM=1 MT=1 C6XABI=1 C6000=1
# gmake library LIB=rts6740_elf_mt_eh.lib EXCEPTIONS=1 C6740=1 EABI=1 EABI_TDEH=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1
# gmake library LIB=rts6740e.lib BIG_ENDIAN=1 C6740=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6740e_eh.lib NOT_VENC_ASM=1 C6000=1 C6740=1 FULL_PORTABLE_EH=1 BIG_ENDIAN=1 EXCEPTIONS=1
# gmake library LIB=rts6740e_elf.lib C6000=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 BIG_ENDIAN=1 C6740=1
# gmake library LIB=rts6740e_elf40.lib BIG_ENDIAN=1 C6740=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
# gmake library LIB=rts6740e_elf40_eh.lib C6740=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1
# gmake library LIB=rts6740e_elf_eh.lib C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 C6740=1 BIG_ENDIAN=1 EXCEPTIONS=1
# gmake library LIB=rts6740e_elf_mt.lib C6740=1 BIG_ENDIAN=1 EABI=1 C6XABI=1 MT=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts6740e_elf_mt_eh.lib C6000=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1 BIG_ENDIAN=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6740=1
# gmake library LIB=rts67plus.lib C6000=1 NOT_VENC_ASM=1 C67P=1
# gmake library LIB=rts67plus_eh.lib C6000=1 C67P=1 NOT_VENC_ASM=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1
# gmake library LIB=rts67plus_elf.lib EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts67plus_elf40.lib EABI=1 C67P=1 C6XABI=1 NOT_VENC_ASM=1 ELF40=1 C6000=1
# gmake library LIB=rts67plus_elf40_eh.lib C6XABI=1 C67P=1 NOT_VENC_ASM=1 ELF40=1 C6000=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
# gmake library LIB=rts67plus_elf_eh.lib EABI_TDEH=1 EABI=1 EXCEPTIONS=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1 C67P=1
# gmake library LIB=rts67pluse.lib BIG_ENDIAN=1 C6000=1 C67P=1 NOT_VENC_ASM=1
# gmake library LIB=rts67pluse_eh.lib C6000=1 C67P=1 NOT_VENC_ASM=1 EXCEPTIONS=1 BIG_ENDIAN=1 FULL_PORTABLE_EH=1
# gmake library LIB=rts67pluse_elf.lib BIG_ENDIAN=1 EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rts67pluse_elf40.lib ELF40=1 C6000=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 EABI=1 BIG_ENDIAN=1
# gmake library LIB=rts67pluse_elf40_eh.lib C6000=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C67P=1 C6XABI=1 ELF40=1
# gmake library LIB=rts67pluse_elf_eh.lib EXCEPTIONS=1 BIG_ENDIAN=1 EABI_TDEH=1 EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
# gmake library LIB=rtscgemv.lib VENC=1 C_MEMCPY=1 CGEM=1 NOASM_RTS=1
# gmake library LIB=rtscgemv_eh.lib VENC=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C_MEMCPY=1 CGEM=1 NOASM_RTS=1
# gmake library LIB=rtstesla_be_coff.lib C_MEMCPY=1 COFFABI=1 NOT_VENC_ASM=1 BIG_ENDIAN=1 TESLA=1
# gmake library LIB=rtstesla_be_coff_eh.lib BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 TESLA=1 NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1
# gmake library LIB=rtstesla_be_elf.lib BIG_ENDIAN=1 EABI=1 TESLA=1 NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1
# gmake library LIB=rtstesla_be_elf40.lib BIG_ENDIAN=1 TESLA=1 EABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 C6XABI=1 ELF40=1
# gmake library LIB=rtstesla_be_elf40_eh.lib NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1 ELF40=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 TESLA=1
# gmake library LIB=rtstesla_be_elf_eh.lib TESLA=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1
# gmake library LIB=rtstesla_le_coff.lib NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1 TESLA=1
# gmake library LIB=rtstesla_le_coff_eh.lib NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 TESLA=1
# gmake library LIB=rtstesla_le_elf.lib TESLA=1 EABI=1 NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1
# gmake library LIB=rtstesla_le_elf40.lib C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 ELF40=1 TESLA=1 EABI=1
# gmake library LIB=rtstesla_le_elf40_eh.lib ELF40=1 C6XABI=1 NOT_VENC_ASM=1 C_MEMCPY=1 EABI_TDEH=1 TESLA=1 EABI=1 EXCEPTIONS=1
# gmake library LIB=rtstesla_le_elf_eh.lib C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 EXCEPTIONS=1 EABI_TDEH=1 TESLA=1 EABI=1
##############################################################################

ifdef CMD_FILE
 -include $(CMD_FILE)
endif
#-----------------------------------------------------------------------------
# Basic definitions
#-----------------------------------------------------------------------------
STANDARD_FLAGS =  -o -oe -k -pdsw225 -q
ifeq (y,$(shell [ -e $(CGT_BIN)/cl6x ] && echo y))
  CC = $(CGT_BIN)/cl6x
else
  CC = cl6x
endif
ifeq (y,$(shell [ -e $(CGT_BIN)/ar6x ] && echo y))
  AR = $(CGT_BIN)/ar6x
else
  AR = ar6x
endif
CD = cd

#-----------------------------------------------------------------------------
# Group TARGET
#-----------------------------------------------------------------------------
UNIVERSAL_FLAGS += -mo --mem_model:data=far --no_visible_enums

TARGET_LINASM_SOURCE = \
	negll.sa

LINASM_SOURCE += $(TARGET_LINASM_SOURCE)


TARGET_C_SOURCE = \
	autoinit.c \
	cpp_init.c \
	boot.c \
	dtos.c \
	gsmfuncs.c \
	gsmvars.c \
	imath40.c \
	imath64.c \
	llshift.c \
	lltoa.c \
	memcpy62.c \
	mpyll.c \
	outprof.c \
	pprof_cio.c \
	pprof_user.c \
	trgmsg.c \
	memset.c \
	copy_zero_init.c \
	copy_decompress_none.c \
	copy_decompress_rle.c \
	copy_decompress_lzss.c

C_SOURCE += $(TARGET_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_LIBRARY_DOUBLE_IS_64
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group GENERIC_MATH_LIBRARY_DOUBLE
#-----------------------------------------------------------------------------

GENERIC_MATH_LIBRARY_DOUBLE_C_SOURCE = \
	absd.c \
	acos.c \
	acot.c \
	acot2.c \
	acoth.c \
	asin.c \
	asinh.c \
	atan.c \
	atan2.c \
	atanh.c \
	ceil.c \
	cos.c \
	cosh.c \
	cot.c \
	coth.c \
	exp.c \
	exp10.c \
	exp2.c \
	fabs.c \
	floor.c \
	fmod.c \
	fpclassify.c \
	frexp.c \
	isfinite.c \
	isinf.c \
	isnan.c \
	isnormal.c \
	ldexp.c \
	log.c \
	log10.c \
	log2.c \
	pow.c \
	powi.c \
	round.c \
	rsqrt.c \
	sinh.c \
	sqrt.c \
	tan.c \
	trunc.c

C_SOURCE += $(GENERIC_MATH_LIBRARY_DOUBLE_C_SOURCE)


GENERIC_MATH_LIBRARY_DOUBLE_C__SCHED_1_SOURCE = \
	acosh.c \
	sin.c

C__SCHED_1_SOURCE += $(GENERIC_MATH_LIBRARY_DOUBLE_C__SCHED_1_SOURCE)


GENERIC_MATH_LIBRARY_DOUBLE_C__SCHED_2_SOURCE = \
	tanh.c

C__SCHED_2_SOURCE += $(GENERIC_MATH_LIBRARY_DOUBLE_C__SCHED_2_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_LIBRARY_FLOAT
#-----------------------------------------------------------------------------

GENERIC_MATH_LIBRARY_FLOAT_C_SOURCE = \
	absf.c \
	acosf.c \
	acoshf.c \
	acot2f.c \
	acotf.c \
	acothf.c \
	asinf.c \
	asinhf.c \
	atanf.c \
	atan2f.c \
	atanhf.c \
	ceilf.c \
	cosf.c \
	coshf.c \
	cotf.c \
	cothf.c \
	exp10f.c \
	exp2f.c \
	expf.c \
	fabsf.c \
	floorf.c \
	fmodf.c \
	fpclassifyf.c \
	frexpf.c \
	isfinitef.c \
	isinff.c \
	isnanf.c \
	isnormalf.c \
	ldexpf.c \
	log10f.c \
	log2f.c \
	logf.c \
	powif.c \
	powf.c \
	roundf.c \
	rsqrtf.c \
	sinf.c \
	sinhf.c \
	sqrtf.c \
	tanf.c \
	tanhf.c \
	truncf.c

C_SOURCE += $(GENERIC_MATH_LIBRARY_FLOAT_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_BASIC_DOUBLE_IS_64
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group GENERIC_MATH_LIBRARY
#-----------------------------------------------------------------------------

GENERIC_MATH_LIBRARY_C_SOURCE = \
	div.c \
	ldiv.c \
	lldiv.c

C_SOURCE += $(GENERIC_MATH_LIBRARY_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_BASIC_FLOAT
#-----------------------------------------------------------------------------

GENERIC_MATH_BASIC_FLOAT_C_SOURCE = \
	addf.c \
	cmpf.c \
	cvtdf.c \
	divf.c \
	fixfi.c \
	fixfli.c \
	fixflli.c \
	fixfu.c \
	fixful.c \
	fixfull.c \
	fltif.c \
	fltlif.c \
	fltllif.c \
	fltuf.c \
	fltulf.c \
	fltullf.c \
	frcaddf.c \
	frcdivf.c \
	frcmpyf.c \
	frcmpyf_div.c \
	mpyf.c \
	negf.c \
	renormf.c \
	subf.c

C_SOURCE += $(GENERIC_MATH_BASIC_FLOAT_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_BASIC_DOUBLE
#-----------------------------------------------------------------------------

GENERIC_MATH_BASIC_DOUBLE_C_SOURCE = \
	addd.c \
	cmpd.c \
	cvtfd.c \
	divd.c \
	fixdi.c \
	fixdli.c \
	fixdlli.c \
	fixdu.c \
	fixdul.c \
	fixdull.c \
	fltid.c \
	fltlid.c \
	fltllid.c \
	fltud.c \
	fltuld.c \
	fltulld.c \
	frcaddd.c \
	frcdivd.c \
	frcmpyd.c \
	frcmpyd_div.c \
	mpyd.c \
	negd.c \
	renormd.c \
	subd.c

C_SOURCE += $(GENERIC_MATH_BASIC_DOUBLE_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_LIBRARY_MODF
#-----------------------------------------------------------------------------

GENERIC_MATH_LIBRARY_MODF_C_SOURCE = \
	modf.c \
	modff.c \
	modfl.c

C_SOURCE += $(GENERIC_MATH_LIBRARY_MODF_C_SOURCE)


#-----------------------------------------------------------------------------
# Group ELF40
#-----------------------------------------------------------------------------
ifeq ($(ELF40),1)
C6XABI=1
UNIVERSAL_FLAGS += --long_precision_bits=40
endif


#-----------------------------------------------------------------------------
# Group C99_COMPLEX
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group GENERIC_MATH_COMMON_64BIT
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group DINKUM_C99_COMPLEX
#-----------------------------------------------------------------------------
C_FLAGS += --gcc

DINKUM_C99_COMPLEX_C_SOURCE = \
	cabs.c \
	cabsf.c \
	cabsl.c \
	cacos.c \
	cacosf.c \
	cacosh.c \
	cacoshf.c \
	cacoshl.c \
	cacosl.c \
	carg.c \
	cargf.c \
	cargl.c \
	casin.c \
	casinf.c \
	casinh.c \
	casinhf.c \
	casinhl.c \
	casinl.c \
	catan.c \
	catanf.c \
	catanh.c \
	catanhf.c \
	catanhl.c \
	catanl.c \
	ccos.c \
	ccosf.c \
	ccosh.c \
	ccoshf.c \
	ccoshl.c \
	ccosl.c \
	cexp.c \
	cexpf.c \
	cexpl.c \
	cimag.c \
	cimagf.c \
	cimagl.c \
	clog.c \
	clog10.c \
	clog10f.c \
	clog10l.c \
	clogf.c \
	clogl.c \
	conj.c \
	conjf.c \
	conjl.c \
	cpow.c \
	cpowf.c \
	cpowl.c \
	cproj.c \
	cprojf.c \
	cprojl.c \
	creal.c \
	crealf.c \
	creall.c \
	csin.c \
	csinf.c \
	csinh.c \
	csinhf.c \
	csinhl.c \
	csinl.c \
	csqrt.c \
	csqrtf.c \
	csqrtl.c \
	ctan.c \
	ctanf.c \
	ctanl.c \
	ctanh.c \
	ctanhf.c \
	ctanhl.c \
	xcbuild.c \
	xfcbuild.c \
	xlcbuild.c \
	xcaddcc.c \
	xfcaddcc.c \
	xlcaddcc.c \
	xcaddcr.c \
	xfcaddcr.c \
	xlcaddcr.c \
	xcsubcc.c \
	xfcsubcc.c \
	xlcsubcc.c \
	xcsubcr.c \
	xfcsubcr.c \
	xlcsubcr.c \
	xcmulcc.c \
	xfcmulcc.c \
	xlcmulcc.c \
	xcmulcr.c \
	xfcmulcr.c \
	xlcmulcr.c \
	xcdivcc.c \
	xfcdivcc.c \
	xlcdivcc.c \
	xcdivcr.c \
	xlcdivcr.c \
	xfcdivcr.c

C_SOURCE += $(DINKUM_C99_COMPLEX_C_SOURCE)


#-----------------------------------------------------------------------------
# Group GENERIC
#-----------------------------------------------------------------------------
CPP_FLAGS += -fg --rtti
UNIVERSAL_FLAGS += -c --ti_lib --building_runtime -D_BOOL

#-----------------------------------------------------------------------------
# Group C6XABI
#-----------------------------------------------------------------------------
ifeq ($(C6XABI),1)
EABI=1
UNIVERSAL_FLAGS += --abi=eabi

C6XABI_C_SOURCE = \
	weak_return.c \
	divrem.c \
	tls.c

C_SOURCE += $(C6XABI_C_SOURCE)


C6XABI_CPP_SOURCE = \
	tdeh_pr_c6000.cpp

CPP_SOURCE += $(C6XABI_CPP_SOURCE)


C6XABI_ASM_SOURCE = \
	tdeh_uwentry_c6000.asm \
	tls_get_tp.asm

ASM_SOURCE += $(C6XABI_ASM_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_COMMON_32BIT
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group TESLA
#-----------------------------------------------------------------------------
ifeq ($(TESLA),1)
C_MEMCPY=1
UNIVERSAL_FLAGS += -mv=tesla

TESLA_ASM_SOURCE = \
	divi_t.asm \
	divu_t.asm \
	remi_t.asm \
	remu_t.asm \
	strasgi_t.asm

ASM_SOURCE += $(TESLA_ASM_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group EXCEPTIONS
#-----------------------------------------------------------------------------
ifeq ($(EXCEPTIONS),1)
CPP_FLAGS += --exceptions
endif


#-----------------------------------------------------------------------------
# Group COMPLEX_HEADERS
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group VENC
#-----------------------------------------------------------------------------
ifeq ($(VENC),1)
UNIVERSAL_FLAGS += --vencode
endif


#-----------------------------------------------------------------------------
# Group GENERIC_MATH_COMMON_DOUBLE
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group GENERIC_MATH_COMMON_FLOAT
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group GENERIC_MATH_COMMON
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Group FULL_PORTABLE_EH
#-----------------------------------------------------------------------------
ifneq ($(C6XABI),1)
ifeq ($(EXCEPTIONS),1)
FULL_PORTABLE_EH=1
endif
endif

ifeq ($(FULL_PORTABLE_EH),1)

FULL_PORTABLE_EH_CPP_SOURCE = \
	eh_util.cpp \
	throw_edg.cpp

CPP_SOURCE += $(FULL_PORTABLE_EH_CPP_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group C6740
#-----------------------------------------------------------------------------
ifeq ($(C6740),1)
UNIVERSAL_FLAGS += -mv6740
endif


#-----------------------------------------------------------------------------
# Group DINKUM_MATH_SUBSET_SHARED_WITH_COMPLEX
#-----------------------------------------------------------------------------

DINKUM_MATH_SUBSET_SHARED_WITH_COMPLEX_C_SOURCE = \
	xsin.c \
	xfsin.c \
	xlsin.c \
	xsinh.c \
	xfsinh.c \
	xlsinh.c \
	xcosh.c \
	xfcosh.c \
	xlcosh.c \
	xexp.c \
	xfexp.c \
	xlexp.c \
	xdtest.c \
	xfdtest.c \
	xldtest.c \
	xdscale.c \
	xfdscale.c \
	xldscale.c \
	xdnorm.c \
	xfdnorm.c \
	xldnorm.c \
	xvalues.c \
	xfvalues.c \
	xlvalues.c \
	xferaise.c \
	xhypot.c \
	xfhypot.c \
	xlhypot.c \
	hypot.c \
	hypotf.c \
	hypotl.c \
	log1p.c \
	log1pf.c \
	log1pl.c \
	xpoly.c \
	xfpoly.c \
	xlpoly.c

C_SOURCE += $(DINKUM_MATH_SUBSET_SHARED_WITH_COMPLEX_C_SOURCE)


#-----------------------------------------------------------------------------
# Group C6600
#-----------------------------------------------------------------------------
ifeq ($(C6600),1)
UNIVERSAL_FLAGS += -mv6600
endif


#-----------------------------------------------------------------------------
# Group NOASM_RTS
#-----------------------------------------------------------------------------
ifeq ($(VENC),1)
NOASM_RTS=1
endif

ifeq ($(NOASM_RTS),1)

NOASM_RTS_C_SOURCE = \
	divi_c.c \
	divu_c.c \
	remi_c.c \
	remu_c.c \
	strasgi_c.c

C_SOURCE += $(NOASM_RTS_C_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group C64P
#-----------------------------------------------------------------------------
ifeq ($(C64P),1)
UNIVERSAL_FLAGS += -mv64+
endif


#-----------------------------------------------------------------------------
# Group C6700
#-----------------------------------------------------------------------------
ifeq ($(C6700),1)
UNIVERSAL_FLAGS += -mv6700
C__SCHED_1_FLAGS += -mf3
C__SCHED_2_FLAGS += -mf1
endif


#-----------------------------------------------------------------------------
# Group MT
#-----------------------------------------------------------------------------
ifeq ($(MT),1)
UNIVERSAL_FLAGS += --multithread --use_libc_tls -D__TI_SHARED_DATA_SYNCHRONIZATION -D__TI_RECURSIVE_RESOURCE_MUTEXES
endif


#-----------------------------------------------------------------------------
# Group EDG_C99_COMPLEX_HELPER
#-----------------------------------------------------------------------------

EDG_C99_COMPLEX_HELPER_C_SOURCE = \
	c99_complex.c

C_SOURCE += $(EDG_C99_COMPLEX_HELPER_C_SOURCE)


#-----------------------------------------------------------------------------
# Group COFFABI
#-----------------------------------------------------------------------------
ifeq ($(COFFABI),1)
UNIVERSAL_FLAGS += --abi=coffabi
endif


#-----------------------------------------------------------------------------
# Group C_MEMCPY
#-----------------------------------------------------------------------------
ifeq ($(C_MEMCPY),1)
UNIVERSAL_FLAGS += -D_TI_USE_C_MEMCPY=1
endif


#-----------------------------------------------------------------------------
# Group NOT_VENC_ASM
#-----------------------------------------------------------------------------
ifneq ($(VENC),1)
NOT_VENC_ASM=1
endif

ifeq ($(NOT_VENC_ASM),1)

NOT_VENC_ASM_ASM_SOURCE = \
	push.asm \
	call_stub.asm \
	setjmp.asm

ASM_SOURCE += $(NOT_VENC_ASM_ASM_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group GENERIC_DINKUM
#-----------------------------------------------------------------------------

GENERIC_DINKUM_C_SOURCE = \
	signal.c \
	raise.c \
	fwide.c \
	stox.c

C_SOURCE += $(GENERIC_DINKUM_C_SOURCE)


GENERIC_DINKUM_CPP_SOURCE = \
	fiopen.cpp \
	iomanip.cpp \
	ios.cpp \
	iostream.cpp \
	limits.cpp \
	locale.cpp \
	locale0.cpp \
	nothrow.cpp \
	raisehan.cpp \
	string.cpp \
	strstrea.cpp \
	throw.cpp \
	wiostrea.cpp \
	wlocale.cpp \
	xfpostox.cpp \
	xlocale.cpp \
	xlocinfo.cpp

CPP_SOURCE += $(GENERIC_DINKUM_CPP_SOURCE)


GENERIC_DINKUM_CX_SOURCE = \
	wchar.cx

CX_SOURCE += $(GENERIC_DINKUM_CX_SOURCE)


GENERIC_DINKUM_CX0_SOURCE = \
	xatexit.cx0

CX0_SOURCE += $(GENERIC_DINKUM_CX0_SOURCE)


#-----------------------------------------------------------------------------
# Group C67P
#-----------------------------------------------------------------------------
ifeq ($(C67P),1)
UNIVERSAL_FLAGS += -mv67p
endif


#-----------------------------------------------------------------------------
# Group GENERIC_TI
#-----------------------------------------------------------------------------

GENERIC_TI_C_SOURCE = \
	cpy_tbl.c \
	ecvt.c \
	exit.c \
	fcvt.c \
	memory.c \
	_bufread.c \
	_data_synch.c \
	_io_perm.c \
	_lock.c \
	_mutex.c \
	_printfi.c \
	_printfi_min.c \
	_printfi_nf.c \
	_pthread.c \
	_scanfi.c \
	_scanfi_min.c \
	_scanfi_nf.c \
	_tvaltostr.c \
	abs.c \
	args_main.c \
	asctime.c \
	assert.c \
	atexit.c \
	atof.c \
	atoi.c \
	atol.c \
	atoll.c \
	bsearch.c \
	clearerr.c \
	clock.c \
	ctime_.c \
	ctype.c \
	defs.c \
	difftime.c \
	errno.c \
	fclose.c \
	feof.c \
	ferror.c \
	fflush.c \
	fgetc.c \
	fgetpos.c \
	fgets.c \
	fopen.c \
	fprintf.c \
	fputc.c \
	fputs.c \
	fread.c \
	fscanf.c \
	fseek.c \
	fsetpos.c \
	ftell.c \
	fwrite.c \
	getenv.c \
	gmtime.c \
	imaxabs.c \
	imaxdiv.c \
	isalnum.c \
	isalpha.c \
	isascii.c \
	iscntrl.c \
	isdigit.c \
	isgraph.c \
	islower.c \
	isprint.c \
	ispunct.c \
	isspace.c \
	isupper.c \
	isxdigit.c \
	localtim.c \
	lowlev.c \
	ltoa.c \
	memccpy.c \
	memchr.c \
	memcmp.c \
	memmov.c \
	mktime.c \
	multibyte.c \
	perror.c \
	printf.c \
	qsort.c \
	rand.c \
	remove.c \
	rewind.c \
	setbuf.c \
	setlocale.c \
	setvbuf.c \
	sinit.c \
	snprintf.c \
	sprintf.c \
	sscanf.c \
	strcat.c \
	strchr.c \
	strcmp.c \
	strcoll.c \
	strcpy.c \
	strcspn.c \
	strerror.c \
	strftime.c \
	strlen.c \
	strncat.c \
	strncmp.c \
	strncpy.c \
	strpbrk.c \
	strrchr.c \
	strspn.c \
	strstr.c \
	strtod.c \
	strtof.c \
	strtok.c \
	strtol.c \
	strtold.c \
	strtoll.c \
	strtoul.c \
	strtoull.c \
	strtoimax.c \
	strtoumax.c \
	strxfrm.c \
	time.c \
	tmpfile.c \
	tmpnam.c \
	tmzone.c \
	toascii.c \
	tolower.c \
	toupper.c \
	trgdrv.c \
	ungetc.c \
	vfprintf.c \
	vprintf.c \
	vsnprintf.c \
	vsprintf.c \
	wctype.c

C_SOURCE += $(GENERIC_TI_C_SOURCE)


#-----------------------------------------------------------------------------
# Group EABI
#-----------------------------------------------------------------------------
ifeq ($(EABI),1)

EABI_CPP_C_SOURCE = \
	decode.c

CPP_C_SOURCE += $(EABI_CPP_C_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group EABI_TDEH
#-----------------------------------------------------------------------------
ifeq ($(C6XABI),1)
ifeq ($(EXCEPTIONS),1)
EABI_TDEH=1
endif
endif

ifeq ($(EABI_TDEH),1)
CPP_FLAGS += --extern_c_can_throw
UNIVERSAL_FLAGS += -D__TI_TABLE_DRIVEN_EXCEPTIONS

EABI_TDEH_CPP_SOURCE = \
	tdeh_unwinder.cpp \
	tdeh_cpp_abi.cpp \
	tdeh_pr_common.cpp \
	tdeh_init.cpp

CPP_SOURCE += $(EABI_TDEH_CPP_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group BIG_ENDIAN
#-----------------------------------------------------------------------------
ifeq ($(BIG_ENDIAN),1)
UNIVERSAL_FLAGS += -me
endif


#-----------------------------------------------------------------------------
# Group NO_PARALLEL_LOADS
#-----------------------------------------------------------------------------
ifeq ($(NO_PARALLEL_LOADS),1)
UNIVERSAL_FLAGS += --no_parallel_loads
endif


#-----------------------------------------------------------------------------
# Group C6000
#-----------------------------------------------------------------------------
ifneq ($(TESLA),1)
ifneq ($(VENC),1)
C6000=1
endif
endif

ifeq ($(C6000),1)

C6000_ASM_SOURCE = \
	divi.asm \
	divu.asm \
	memcpy64.asm \
	remi.asm \
	remu.asm \
	strasg.asm

ASM_SOURCE += $(C6000_ASM_SOURCE)

endif


#-----------------------------------------------------------------------------
# Group CGEM
#-----------------------------------------------------------------------------
ifeq ($(CGEM),1)
UNIVERSAL_FLAGS += -mv=cgem --enable:cgem_64b
endif


#-----------------------------------------------------------------------------
# Group GENERIC_EDG
#-----------------------------------------------------------------------------

GENERIC_EDG_CPP_SOURCE = \
	array_del.cpp \
	array_new.cpp \
	array_nodel.cpp \
	array_nonew.cpp \
	array_pdel.cpp \
	array_pnew.cpp \
	delete.cpp \
	delnothrow.cpp \
	dtor_list.cpp \
	error.cpp \
	guard.cpp \
	memzero.cpp \
	new_.cpp \
	newhandler.cpp \
	newnothrow.cpp \
	placedel.cpp \
	placenew.cpp \
	pure_virt.cpp \
	rtti.cpp \
	set_new.cpp \
	typeinfo_.cpp \
	vars.cpp \
	vec_cctor.cpp \
	vec_newdel.cpp

CPP_SOURCE += $(GENERIC_EDG_CPP_SOURCE)


#-----------------------------------------------------------------------------
# Group C6400
#-----------------------------------------------------------------------------
ifeq ($(C6400),1)
UNIVERSAL_FLAGS += -mv6400
endif



OBJ := .
CX_OBJS = $(patsubst %.cx,$(OBJ)/%.obj,$(notdir $(CX_SOURCE)))

$(CX_OBJS): $(OBJ)/%.obj: %.cx
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

ASM_OBJS = $(patsubst %.asm,$(OBJ)/%.obj,$(notdir $(ASM_SOURCE)))

$(ASM_OBJS): $(OBJ)/%.obj: %.asm
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

C_OBJS = $(patsubst %.c,$(OBJ)/%.obj,$(notdir $(C_SOURCE)))

$(C_OBJS): $(OBJ)/%.obj: %.c
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

LINASM_OBJS = $(patsubst %.sa,$(OBJ)/%.obj,$(notdir $(LINASM_SOURCE)))

$(LINASM_OBJS): $(OBJ)/%.obj: %.sa
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

CX0_OBJS = $(patsubst %.cx0,$(OBJ)/%.obj,$(notdir $(CX0_SOURCE)))

$(CX0_OBJS): $(OBJ)/%.obj: %.cx0
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

CPP_C_OBJS = $(patsubst %.c,$(OBJ)/%.obj,$(notdir $(CPP_C_SOURCE)))

$(CPP_C_OBJS): $(OBJ)/%.obj: %.c
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(CPP_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

C__SCHED_2_OBJS = $(patsubst %.c,$(OBJ)/%.obj,$(notdir $(C__SCHED_2_SOURCE)))

$(C__SCHED_2_OBJS): $(OBJ)/%.obj: %.c
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) $(C__SCHED_2_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

CPP_OBJS = $(patsubst %.cpp,$(OBJ)/%.obj,$(notdir $(CPP_SOURCE)))

$(CPP_OBJS): $(OBJ)/%.obj: %.cpp
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(CPP_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

C__SCHED_1_OBJS = $(patsubst %.c,$(OBJ)/%.obj,$(notdir $(C__SCHED_1_SOURCE)))

$(C__SCHED_1_OBJS): $(OBJ)/%.obj: %.c
	$(CC) $^ $(STANDARD_FLAGS) $(EXTRA_FLAGS) $(UNIVERSAL_FLAGS) $(C_FLAGS) $(C__SCHED_1_FLAGS) -I$(INC) -fr=$(OBJ) -fs=$(OBJ) -ft=$(OBJ)

library: $(CX_OBJS) $(ASM_OBJS) $(C_OBJS) $(LINASM_OBJS) $(CX0_OBJS) $(CPP_C_OBJS) $(C__SCHED_2_OBJS) $(CPP_OBJS) $(C__SCHED_1_OBJS)
	$(CD) $(OBJ); $(AR) -qa $(LIB) *.obj

info:
	@echo $(UNIVERSAL_FLAGS)
	@echo $(STANDARD_FLAGS)
	@echo $(EXTRA_FLAGS)
	@echo $(C_FLAGS)
	@echo $(CPP_FLAGS)
	@echo
	@echo $(C_OBJS)
	@echo $(CPP_OBJS)
