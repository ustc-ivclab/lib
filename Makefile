dollar := \$

.PHONY: libc.a
libc.a: rts6200.lib.libinfo rts6200_eh.lib.libinfo rts6200_elf.lib.libinfo rts6200_elf40.lib.libinfo rts6200_elf40_eh.lib.libinfo rts6200_elf_eh.lib.libinfo rts6200e.lib.libinfo rts6200e_eh.lib.libinfo rts6200e_elf.lib.libinfo rts6200e_elf40.lib.libinfo rts6200e_elf40_eh.lib.libinfo rts6200e_elf_eh.lib.libinfo rts6200v.lib.libinfo rts6200v_eh.lib.libinfo rts6400.lib.libinfo rts6400_eh.lib.libinfo rts6400_elf.lib.libinfo rts6400_elf40.lib.libinfo rts6400_elf40_eh.lib.libinfo rts6400_elf_eh.lib.libinfo rts6400e.lib.libinfo rts6400e_eh.lib.libinfo rts6400e_elf.lib.libinfo rts6400e_elf40.lib.libinfo rts6400e_elf40_eh.lib.libinfo rts6400e_elf_eh.lib.libinfo rts64plus.lib.libinfo rts64plus_eh.lib.libinfo rts64plus_elf.lib.libinfo rts64plus_elf40.lib.libinfo rts64plus_elf40_eh.lib.libinfo rts64plus_elf_eh.lib.libinfo rts64plus_elf_mt.lib.libinfo rts64plus_elf_mt_eh.lib.libinfo rts64plus_elf_no_parallel_loads.lib.libinfo rts64plus_elf_no_parallel_loads_eh.lib.libinfo rts64pluse.lib.libinfo rts64pluse_eh.lib.libinfo rts64pluse_elf.lib.libinfo rts64pluse_elf40.lib.libinfo rts64pluse_elf40_eh.lib.libinfo rts64pluse_elf_eh.lib.libinfo rts64pluse_elf_mt.lib.libinfo rts64pluse_elf_mt_eh.lib.libinfo rts64pluse_elf_no_parallel_loads.lib.libinfo rts64pluse_elf_no_parallel_loads_eh.lib.libinfo rts64plusv.lib.libinfo rts64plusv_eh.lib.libinfo rts6600_coff.lib.libinfo rts6600_coff_eh.lib.libinfo rts6600_elf.lib.libinfo rts6600_elf40.lib.libinfo rts6600_elf40_eh.lib.libinfo rts6600_elf_eh.lib.libinfo rts6600_elf_mt.lib.libinfo rts6600_elf_mt_eh.lib.libinfo rts6600e_coff.lib.libinfo rts6600e_coff_eh.lib.libinfo rts6600e_elf.lib.libinfo rts6600e_elf40.lib.libinfo rts6600e_elf40_eh.lib.libinfo rts6600e_elf_eh.lib.libinfo rts6600e_elf_mt.lib.libinfo rts6600e_elf_mt_eh.lib.libinfo rts6700.lib.libinfo rts6700_eh.lib.libinfo rts6700_elf.lib.libinfo rts6700_elf40.lib.libinfo rts6700_elf40_eh.lib.libinfo rts6700_elf_eh.lib.libinfo rts6700e.lib.libinfo rts6700e_eh.lib.libinfo rts6700e_elf.lib.libinfo rts6700e_elf40.lib.libinfo rts6700e_elf40_eh.lib.libinfo rts6700e_elf_eh.lib.libinfo rts6740.lib.libinfo rts6740_eh.lib.libinfo rts6740_elf.lib.libinfo rts6740_elf40.lib.libinfo rts6740_elf40_eh.lib.libinfo rts6740_elf_eh.lib.libinfo rts6740_elf_mt.lib.libinfo rts6740_elf_mt_eh.lib.libinfo rts6740e.lib.libinfo rts6740e_eh.lib.libinfo rts6740e_elf.lib.libinfo rts6740e_elf40.lib.libinfo rts6740e_elf40_eh.lib.libinfo rts6740e_elf_eh.lib.libinfo rts6740e_elf_mt.lib.libinfo rts6740e_elf_mt_eh.lib.libinfo rts67plus.lib.libinfo rts67plus_eh.lib.libinfo rts67plus_elf.lib.libinfo rts67plus_elf40.lib.libinfo rts67plus_elf40_eh.lib.libinfo rts67plus_elf_eh.lib.libinfo rts67pluse.lib.libinfo rts67pluse_eh.lib.libinfo rts67pluse_elf.lib.libinfo rts67pluse_elf40.lib.libinfo rts67pluse_elf40_eh.lib.libinfo rts67pluse_elf_eh.lib.libinfo rtscgemv.lib.libinfo rtscgemv_eh.lib.libinfo rtstesla_be_coff.lib.libinfo rtstesla_be_coff_eh.lib.libinfo rtstesla_be_elf.lib.libinfo rtstesla_be_elf40.lib.libinfo rtstesla_be_elf40_eh.lib.libinfo rtstesla_be_elf_eh.lib.libinfo rtstesla_le_coff.lib.libinfo rtstesla_le_coff_eh.lib.libinfo rtstesla_le_elf.lib.libinfo rtstesla_le_elf40.lib.libinfo rtstesla_le_elf40_eh.lib.libinfo rtstesla_le_elf_eh.lib.libinfo __TI_${dollar}${dollar}LIBINFO
	rm -rf $@
	ar6x a $@ $^

mklib: mklib.cc
%.libinfo: %
	libinfo6x -o$@ $^
__TI_${dollar}${dollar}LIBINFO:
	touch $@

rts6200.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6000=1
rts6200_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1
rts6200_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1
rts6200_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1
rts6200_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI_TDEH=1 EABI=1 EXCEPTIONS=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts6200_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 C6XABI=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1
rts6200e.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 C6000=1 NOT_VENC_ASM=1
rts6200e_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1
rts6200e_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 BIG_ENDIAN=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
rts6200e_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
rts6200e_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1
rts6200e_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1
rts6200v.lib:
	$(MAKE) -Csrc library LIB=../$@ VENC=1 C_MEMCPY=1 NOASM_RTS=1
rts6200v_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ VENC=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 NOASM_RTS=1 C_MEMCPY=1
rts6400.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 C6400=1
rts6400_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6400=1 NOT_VENC_ASM=1 C6000=1
rts6400_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ C6400=1 C6XABI=1 NOT_VENC_ASM=1 C6000=1 EABI=1
rts6400_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 ELF40=1 C6000=1 C6400=1 C6XABI=1 NOT_VENC_ASM=1
rts6400_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 C6400=1 NOT_VENC_ASM=1 ELF40=1 C6000=1
rts6400_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 C6XABI=1 C6400=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1
rts6400e.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 C6000=1 C6400=1 NOT_VENC_ASM=1
rts6400e_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 C6000=1 NOT_VENC_ASM=1 C6400=1
rts6400e_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ C6XABI=1 C6400=1 NOT_VENC_ASM=1 C6000=1 BIG_ENDIAN=1 EABI=1
rts6400e_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 BIG_ENDIAN=1 C6000=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 C6400=1
rts6400e_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 ELF40=1 C6400=1 C6000=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
rts6400e_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 C6XABI=1 C6400=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1
rts64plus.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C64P=1 C6000=1
rts64plus_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ FULL_PORTABLE_EH=1 EXCEPTIONS=1 C64P=1 C6000=1 NOT_VENC_ASM=1
rts64plus_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1 C6000=1
rts64plus_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ C64P=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1
rts64plus_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 ELF40=1 C64P=1 C6000=1
rts64plus_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI_TDEH=1 EABI=1 EXCEPTIONS=1 C64P=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts64plus_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6XABI=1 MT=1 NOT_VENC_ASM=1 C64P=1 C6000=1
rts64plus_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 C64P=1 C6000=1
rts64plus_elf_no_parallel_loads.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 NO_PARALLEL_LOADS=1 C6000=1 C64P=1 NOT_VENC_ASM=1 C6XABI=1
rts64plus_elf_no_parallel_loads_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1 NO_PARALLEL_LOADS=1 C6000=1
rts64pluse.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 NOT_VENC_ASM=1 C6000=1 C64P=1
rts64pluse_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ FULL_PORTABLE_EH=1 EXCEPTIONS=1 BIG_ENDIAN=1 NOT_VENC_ASM=1 C6000=1 C64P=1
rts64pluse_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 C64P=1 BIG_ENDIAN=1 EABI=1
rts64pluse_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C64P=1 BIG_ENDIAN=1 EABI=1
rts64pluse_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C64P=1 ELF40=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 C6000=1
rts64pluse_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C64P=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts64pluse_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 BIG_ENDIAN=1 C64P=1 C6000=1 C6XABI=1 MT=1 NOT_VENC_ASM=1
rts64pluse_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C64P=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1
rts64pluse_elf_no_parallel_loads.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 BIG_ENDIAN=1 C64P=1 NO_PARALLEL_LOADS=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts64pluse_elf_no_parallel_loads_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6000=1 NO_PARALLEL_LOADS=1 C6XABI=1 NOT_VENC_ASM=1 C64P=1
rts64plusv.lib:
	$(MAKE) -Csrc library LIB=../$@ C64P=1 NOASM_RTS=1 C_MEMCPY=1 VENC=1
rts64plusv_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C_MEMCPY=1 NOASM_RTS=1 C64P=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 VENC=1
rts6600_coff.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 COFFABI=1 C6000=1 C6600=1
rts6600_coff_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6600=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6000=1 COFFABI=1 NOT_VENC_ASM=1
rts6600_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ C6600=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1
rts6600_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C6600=1 EABI=1
rts6600_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 C6600=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
rts6600_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 EABI_TDEH=1 EXCEPTIONS=1 C6600=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
rts6600_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 MT=1 C6XABI=1 EABI=1 C6600=1
rts6600_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6XABI=1 NOT_VENC_ASM=1 MT=1 C6000=1 C6600=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
rts6600e_coff.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 COFFABI=1 BIG_ENDIAN=1 C6600=1
rts6600e_coff_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 COFFABI=1 C6000=1 FULL_PORTABLE_EH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6600=1
rts6600e_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6600=1 BIG_ENDIAN=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts6600e_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6600=1 BIG_ENDIAN=1 ELF40=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts6600e_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1 C6600=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1
rts6600e_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI_TDEH=1 EABI=1 C6600=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1
rts6600e_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ C6600=1 BIG_ENDIAN=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 MT=1 C6000=1
rts6600e_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6600=1
rts6700.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6700=1 C6000=1
rts6700_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6700=1 C6000=1 NOT_VENC_ASM=1
rts6700_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6000=1 C6700=1 NOT_VENC_ASM=1 C6XABI=1
rts6700_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6000=1 C6700=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1
rts6700_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI_TDEH=1 EABI=1 C6XABI=1 NOT_VENC_ASM=1 C6700=1 ELF40=1 C6000=1
rts6700_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 C6700=1
rts6700e.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6700=1 C6000=1 BIG_ENDIAN=1
rts6700e_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 NOT_VENC_ASM=1 C6000=1 C6700=1
rts6700e_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ C6700=1 C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 BIG_ENDIAN=1
rts6700e_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 C6700=1 ELF40=1
rts6700e_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ ELF40=1 C6700=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1
rts6700e_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6000=1 C6700=1 NOT_VENC_ASM=1 C6XABI=1
rts6740.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6000=1 C6740=1
rts6740_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C6740=1
rts6740_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6740=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1
rts6740_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 C6740=1 EABI=1
rts6740_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1 EXCEPTIONS=1 C6740=1 EABI_TDEH=1 EABI=1
rts6740_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6XABI=1 C6000=1 EXCEPTIONS=1 C6740=1 EABI_TDEH=1 EABI=1
rts6740_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ C6740=1 EABI=1 NOT_VENC_ASM=1 MT=1 C6XABI=1 C6000=1
rts6740_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 C6740=1 EABI=1 EABI_TDEH=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1
rts6740e.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 C6740=1 NOT_VENC_ASM=1 C6000=1
rts6740e_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C6000=1 C6740=1 FULL_PORTABLE_EH=1 BIG_ENDIAN=1 EXCEPTIONS=1
rts6740e_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 BIG_ENDIAN=1 C6740=1
rts6740e_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 C6740=1 EABI=1 NOT_VENC_ASM=1 C6XABI=1 C6000=1 ELF40=1
rts6740e_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6740=1 ELF40=1 NOT_VENC_ASM=1 C6XABI=1 EABI=1 EABI_TDEH=1 BIG_ENDIAN=1 EXCEPTIONS=1 C6000=1
rts6740e_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 C6XABI=1 NOT_VENC_ASM=1 EABI=1 EABI_TDEH=1 C6740=1 BIG_ENDIAN=1 EXCEPTIONS=1
rts6740e_elf_mt.lib:
	$(MAKE) -Csrc library LIB=../$@ C6740=1 BIG_ENDIAN=1 EABI=1 C6XABI=1 MT=1 NOT_VENC_ASM=1 C6000=1
rts6740e_elf_mt_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 EABI=1 EABI_TDEH=1 EXCEPTIONS=1 BIG_ENDIAN=1 MT=1 NOT_VENC_ASM=1 C6XABI=1 C6740=1
rts67plus.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 NOT_VENC_ASM=1 C67P=1
rts67plus_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 C67P=1 NOT_VENC_ASM=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1
rts67plus_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
rts67plus_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI=1 C67P=1 C6XABI=1 NOT_VENC_ASM=1 ELF40=1 C6000=1
rts67plus_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6XABI=1 C67P=1 NOT_VENC_ASM=1 ELF40=1 C6000=1 EXCEPTIONS=1 EABI_TDEH=1 EABI=1
rts67plus_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EABI_TDEH=1 EABI=1 EXCEPTIONS=1 C6000=1 NOT_VENC_ASM=1 C6XABI=1 C67P=1
rts67pluse.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 C6000=1 C67P=1 NOT_VENC_ASM=1
rts67pluse_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 C67P=1 NOT_VENC_ASM=1 EXCEPTIONS=1 BIG_ENDIAN=1 FULL_PORTABLE_EH=1
rts67pluse_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
rts67pluse_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ ELF40=1 C6000=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 EABI=1 BIG_ENDIAN=1
rts67pluse_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6000=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 NOT_VENC_ASM=1 C67P=1 C6XABI=1 ELF40=1
rts67pluse_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ EXCEPTIONS=1 BIG_ENDIAN=1 EABI_TDEH=1 EABI=1 C6XABI=1 C67P=1 NOT_VENC_ASM=1 C6000=1
rtscgemv.lib:
	$(MAKE) -Csrc library LIB=../$@ VENC=1 C_MEMCPY=1 CGEM=1 NOASM_RTS=1
rtscgemv_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ VENC=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 C_MEMCPY=1 CGEM=1 NOASM_RTS=1
rtstesla_be_coff.lib:
	$(MAKE) -Csrc library LIB=../$@ C_MEMCPY=1 COFFABI=1 NOT_VENC_ASM=1 BIG_ENDIAN=1 TESLA=1
rtstesla_be_coff_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EXCEPTIONS=1 FULL_PORTABLE_EH=1 TESLA=1 NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1
rtstesla_be_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 EABI=1 TESLA=1 NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1
rtstesla_be_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ BIG_ENDIAN=1 TESLA=1 EABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 C6XABI=1 ELF40=1
rtstesla_be_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1 ELF40=1 BIG_ENDIAN=1 EXCEPTIONS=1 EABI=1 EABI_TDEH=1 TESLA=1
rtstesla_be_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ TESLA=1 EABI_TDEH=1 EABI=1 EXCEPTIONS=1 BIG_ENDIAN=1 C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1
rtstesla_le_coff.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1 TESLA=1
rtstesla_le_coff_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ NOT_VENC_ASM=1 COFFABI=1 C_MEMCPY=1 FULL_PORTABLE_EH=1 EXCEPTIONS=1 TESLA=1
rtstesla_le_elf.lib:
	$(MAKE) -Csrc library LIB=../$@ TESLA=1 EABI=1 NOT_VENC_ASM=1 C_MEMCPY=1 C6XABI=1
rtstesla_le_elf40.lib:
	$(MAKE) -Csrc library LIB=../$@ C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 ELF40=1 TESLA=1 EABI=1
rtstesla_le_elf40_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ ELF40=1 C6XABI=1 NOT_VENC_ASM=1 C_MEMCPY=1 EABI_TDEH=1 TESLA=1 EABI=1 EXCEPTIONS=1
rtstesla_le_elf_eh.lib:
	$(MAKE) -Csrc library LIB=../$@ C6XABI=1 C_MEMCPY=1 NOT_VENC_ASM=1 EXCEPTIONS=1 EABI_TDEH=1 TESLA=1 EABI=1
