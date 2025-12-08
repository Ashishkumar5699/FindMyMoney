.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug
Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 10.0.0.0 (10.0.25.52411 @Commit: b0f34d51fccc69fd334253924abd8d6853fad7aa)"
	.asciz "Microsoft.Maui.Essentials.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:
_mono_aot_Microsoft_Maui_Essentialsjit_code_start:
	.globl _mono_aot_Microsoft_Maui_Essentialsjit_code_start

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int:
.file 1 "/_/src/Essentials/src/Screenshot/Screenshot.ios.cs"
.loc 1 215 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90023bf
.word 0xf90027bf
.word 0x340000b9
.word 0xd280003e
.word 0x6b1e033f
.word 0x54000e81
.word 0x14000008
.loc 1 217 0
.word 0xf94013a0
.word 0xf9400801
.word 0xaa0103e0
.word 0x3940003e
bl _p_317
.word 0xaa0003fa
.word 0x14000013
.loc 1 218 0
.word 0xf94013a0
.word 0xf9400801
.word 0x1e220340
.word 0xd2a8591e
.word 0x9e6703c1
.word 0x1e211800
.word 0xbd0063a0
.word 0xbd4063a0
.word 0x1e22c000
.word 0xf9001fbf
.word 0xfd001fa0
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xaa0103e0
.word 0xfd401ba0
.word 0x3940003e
bl _p_318
.word 0xaa0003fa
.loc 1 219 0
.word 0xf90023ba
.loc 1 222 0
.word 0xf94023a1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #200]
.word 0xaa0103fa
.word 0xaa0003f9
.word 0xb50000da
.word 0xd2800c40
.word 0xf2a04000
.word 0xaa1903e1
bl _mono_create_corlib_exception_1
bl _p_26
.loc 1 224 0
.word 0xf94023a1
.word 0xaa0103e0
.word 0x3940003e
bl _p_319
.word 0xf90027a0
.loc 1 226 0
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf94017a1
.word 0x3940005e
bl _p_320
.loc 1 228 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #208]
.word 0x3980d410
.word 0xb5000050
bl _p_13

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #216]
.word 0xf940001a
.word 0xf9002bbf
.word 0x9400000a
.word 0xf9402ba0
.word 0xb4000040
bl _p_34
.word 0xf9002fbf
.word 0x94000019
.word 0xf9402fa0
.word 0xb4000040
bl _p_34
.word 0x14000029
.word 0xf90037be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94027a0
.word 0xb4000140
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94037be
.word 0xd61f03c0
.word 0xf9003fbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94023a0
.word 0xb4000140
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9403fbe
.word 0xd61f03c0
.loc 1 229 0
.word 0xaa1a03e0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.loc 1 219 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2802de1
bl _p_24
.word 0xaa0003e1
.word 0xd2800c60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_26

Lme_33:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string
Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string:
.file 2 "/_/src/Essentials/src/Preferences/Preferences.ios.tvos.watchos.macos.cs"
.loc 2 50 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001faf
.word 0xf9001ba0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9002fbf
.word 0x390183bf
.word 0xf90037bf
.word 0xf9002bbf
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9401fa0
.word 0xf940100f
bl _p_321
.loc 2 52 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9400000
.word 0xf9002fa0
.word 0xd2a00000
.word 0x390183a0
.word 0xf9402fb7
.word 0x910183a0
.word 0xf9003ba0
.word 0xaa1703e0
.word 0x910183a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1703e0
.word 0xf9403ba1
bl _p_150
.loc 2 54 0
.word 0xaa1a03e0
bl _p_148
.word 0xf90037a0
.loc 2 56 0
.word 0xb50002f9
.loc 2 58 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_149
.word 0xb40000c0
.loc 2 59 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_322
.loc 2 60 0
.word 0xf9003fbf
.word 0x9400019f
.word 0xf9403fa0
.word 0xb4000040
bl _p_34
.word 0xf90043bf
.word 0x940001ae
.word 0xf94043a0
.word 0xb4000040
bl _p_34
.word 0x140001b7
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xaa1a03f7
.word 0xb500245a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb400039a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003201
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54003101
.word 0xb980135a
.word 0x14000101
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002d01
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x54002c01
.word 0x39404340
.word 0x53001c1a
.word 0x140000df
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb400039a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540027e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xeb01001f
.word 0x10000011
.word 0x540026e1
.word 0xf9400b5a
.word 0x140000be
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540022e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x10000011
.word 0x540021e1
.word 0xfd400b40
.word 0xfd004ba0
.word 0x140000a9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001dc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xeb01001f
.word 0x10000011
.word 0x54001cc1
.word 0xbd401340
.word 0xbd008ba0
.word 0x14000087
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003da
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540018a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xeb01001f
.word 0x10000011
.word 0x540017a1
.word 0x91004340
.word 0xf9400000
.word 0xf9002ba0
.word 0x14000064
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb4000f7a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001361
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x54001261
.word 0x91004340
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400400
.word 0xf90027a0
.word 0x1400004f
.loc 2 66 0
.word 0xf94037a3
.word 0xaa0303e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_323
.loc 2 67 0
.word 0x14000055
.loc 2 69 0
.word 0xf94037a3
.word 0x93407f41
.word 0xaa0303e0
.word 0xaa1803e2
.word 0x3940007e
bl _p_324
.loc 2 70 0
.word 0x1400004e
.loc 2 72 0
.word 0xf94037a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_325
.loc 2 73 0
.word 0x14000047
.loc 2 75 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #368]
.word 0x3980d410
.word 0xb5000050
bl _p_13

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9400001
.word 0xaa1903e0
bl _p_326
.word 0xaa0003fa
.loc 2 76 0
.word 0xf94037a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_323
.loc 2 77 0
.word 0x14000033
.loc 2 79 0
.word 0xf94037a2
.word 0xfd404ba0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_327
.loc 2 80 0
.word 0x1400002c
.loc 2 82 0
.word 0xf94037a2
.word 0xaa0203e0
.word 0xbd408ba0
.word 0xaa1803e1
.word 0x3940005e
bl _p_328
.loc 2 83 0
.word 0x14000025
.loc 2 85 0
.word 0x910143a0
bl _p_329
.word 0xf90063a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #368]
.word 0x3980d410
.word 0xb5000050
bl _p_13
.word 0xf94063a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #376]
.word 0xf9400021
bl _p_330
.word 0xaa0003fa
.loc 2 86 0
.word 0xf94037a3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1803e2
.word 0x3940007e
bl _p_323
.loc 2 87 0
.word 0x1400000e
.loc 2 89 0
.word 0xf94037a0
.word 0xf90063a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #384]
.word 0x910103a0
bl _p_331
.word 0xaa0003e1
.word 0xf94063a3
.word 0xaa0303e0
.word 0xaa1803e2
.word 0x3940007e
bl _p_323
.loc 2 92 0
.word 0xf9003fbf
.word 0x9400000a
.word 0xf9403fa0
.word 0xb4000040
bl _p_34
.word 0xf90043bf
.word 0x94000019
.word 0xf94043a0
.word 0xb4000040
bl _p_34
.word 0x14000022
.word 0xf90053be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94037a0
.word 0xb4000140
.word 0xf94037a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94053be
.word 0xd61f03c0
.word 0xf9005bbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394183a0
.word 0x34000060
.word 0xf9402fa0
bl _p_151
.word 0xf9405bbe
.word 0xd61f03c0
.loc 2 94 0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_332

Lme_79:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string
Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string:
.loc 2 98 0 prologue_end
.word 0xa9af7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9002faf
.word 0xf9001fa0
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xf9402fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf90047bf
.word 0x390243bf
.word 0xf9004fbf
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf9003bbf
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xd2800017
.loc 2 100 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9400000
.word 0xf90047a0
.word 0xd2a00000
.word 0x390243a0
.word 0xf94047b6
.word 0x910243a0
.word 0xf90053a0
.word 0xaa1603e0
.word 0x910243a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1603e0
.word 0xf94053a1
bl _p_150
.loc 2 102 0
.word 0xaa1a03e0
bl _p_148
.word 0xf9004fa0
.loc 2 104 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_149
.word 0xb50001a0
.loc 2 105 0
.word 0xaa1903fa
.word 0xf90057bf
.word 0x94000245
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000254
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x14000263
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb400039a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004981
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54004881
.word 0xb980135a
.word 0x14000109
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004481
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x54004381
.word 0x39404340
.word 0x53001c1a
.word 0x140000f9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb400039a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003f61
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xeb01001f
.word 0x10000011
.word 0x54003e61
.word 0xf9400b5a
.word 0x140000ea
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003a61
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x10000011
.word 0x54003961
.word 0xfd400b40
.word 0xfd0067a0
.word 0x140000e9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003ba
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003541
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xeb01001f
.word 0x10000011
.word 0x54003441
.word 0xbd401340
.word 0xbd00c3a0
.word 0x140000d9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb40003da
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54003021
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xeb01001f
.word 0x10000011
.word 0x54002f21
.word 0x91004340
.word 0xf9400000
.word 0xf9003ba0
.word 0x140000c9
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xb400041a
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002ae1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x540029e1
.word 0x91004340
.word 0xf9400001
.word 0xf90033a1
.word 0xf9400400
.word 0xf90037a0
.word 0x140000cc
.word 0xaa1903fa
.word 0xeb1f033f
.word 0x54000140
.word 0xf9400320

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd280001a
.word 0x14000001
.word 0xaa1a03f9
.word 0xb5001c7a
.word 0x140000f3
.loc 2 110 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_333
.word 0xf9007ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xd2800281
bl _p_2
.word 0xf9407ba1
.word 0xb9001001
.word 0xaa0003f7
.loc 2 111 0
.word 0xf90057bf
.word 0x940000fc
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x9400010b
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x14000114
.loc 2 113 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_334
.word 0xf9007ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xd2800221
bl _p_2
.word 0xf9407ba1
.word 0x39004001
.word 0xaa0003f7
.loc 2 114 0
.word 0xf90057bf
.word 0x940000e3
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x940000f2
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x140000fb
.loc 2 116 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 117 0
.word 0xaa1a03e0
.word 0xf9007fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #368]
.word 0x3980d410
.word 0xb5000050
bl _p_13
.word 0xf9407fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #376]
.word 0xf9400021
bl _p_336
.word 0xf9007ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xd2800301
bl _p_2
.word 0xf9407ba1
.word 0xf9000801
.word 0xaa0003f7
.loc 2 118 0
.word 0xf90057bf
.word 0x940000bb
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x940000ca
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x140000d3
.loc 2 120 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_337
.word 0xfd0083a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800301
bl _p_2
.word 0xfd4083a0
.word 0xfd000800
.word 0xaa0003f7
.loc 2 121 0
.word 0xf90057bf
.word 0x940000a2
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x940000b1
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x140000ba
.loc 2 123 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_338
.word 0x1e204000
.word 0xfd0083a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2800281
bl _p_2
.word 0xfd4083a0
.word 0xbd001000
.word 0xaa0003f7
.loc 2 124 0
.word 0xf90057bf
.word 0x94000088
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000097
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x140000a0
.loc 2 126 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 127 0
.word 0xaa1a03e0
.word 0xf9007ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #368]
.word 0x3980d410
.word 0xb5000050
bl _p_13
.word 0xf9407ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #376]
.word 0xf9400021
bl _p_336
.word 0xaa0003fa
.loc 2 128 0
.word 0xaa1a03e0
.word 0x910143a1
.word 0xf9005fa1
bl _p_339
.word 0xf9405fbe
.word 0xf90003c0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd2800301
bl _p_2
.word 0x91004001
.word 0xf9402ba2
.word 0xf9000022
.word 0xaa0003f7
.loc 2 129 0
.word 0xf90057bf
.word 0x94000059
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000068
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x14000071
.loc 2 131 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 132 0
.word 0xaa1a03e0
.word 0x9101e3a1
bl _p_340
.word 0x53001c00
.word 0x34000740
.loc 2 134 0
.word 0xf9403fa0
.word 0xf90023a0
.word 0xf94043a0
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_2
.word 0x91004001
.word 0xf94023a2
.word 0xf9000022
.word 0xf94027a2
.word 0xf9000422
.word 0xaa0003f7
.loc 2 136 0
.word 0xf90057bf
.word 0x94000034
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000043
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x1400004c
.loc 2 139 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_335
.word 0xaa0003f7
.loc 2 140 0
.word 0xf90057bf
.word 0x94000023
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000032
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x1400003b
.loc 2 143 0
.word 0xf9402fa0
.word 0xf9401400

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #400]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000e0
.loc 2 144 0
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xaa1803e1
.word 0x3940005e
bl _p_335
.word 0xaa0003f7
.loc 2 147 0
.word 0xf90057bf
.word 0x9400000a
.word 0xf94057a0
.word 0xb4000040
bl _p_34
.word 0xf9005bbf
.word 0x94000019
.word 0xf9405ba0
.word 0xb4000040
bl _p_34
.word 0x14000022
.word 0xf9006bbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9404fa0
.word 0xb4000140
.word 0xf9404fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9406bbe
.word 0xd61f03c0
.word 0xf90073be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x394243a0
.word 0x34000060
.word 0xf94047a0
bl _p_151
.word 0xf94073be
.word 0xd61f03c0
.loc 2 150 0
.word 0xf9402fa0
.word 0xf9401002
.word 0xf9400441
.word 0xaa1703e0
bl _p_177
.word 0x14000002
.loc 2 151 0
.word 0xaa1a03e0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_332

Lme_7a:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow
Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow:
.file 3 "/_/src/Essentials/src/Platform/WindowStateManager.ios.cs"
.loc 3 138 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9016bb9

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90013bf
.word 0xf90017bf
.word 0xd28001a0
.word 0xd2a00001
.word 0xd2a00002
bl _p_234
.word 0x53001c00
.word 0x35000040
.word 0x14000089
.loc 3 142 0
bl _p_212
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_341
.word 0xf90013a0
.loc 3 143 0
.word 0xf94013a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x3940001e
bl _p_342

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #416]
bl _p_343
.word 0xaa0003e2

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xb5000660

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xf9400000
.word 0xf9004ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000ec0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xd2801001
bl _p_2
.word 0xf90047a0
.word 0xf9404ba1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000d20
.word 0xd5033bbf
.word 0xf94047a0
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0x92405842

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xf9002001

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #456]
.word 0xf9001402
.word 0xf9401822
.word 0xf9000c02
.word 0xf9401421
.word 0xf9000801
.word 0xf90043a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xd5033bbf
.word 0xf94043a0
.word 0xf9000020
.word 0xaa0003f9

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #464]
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_344
.word 0xaa0003fa
.loc 3 145 0
.word 0xaa1a03e0
.word 0xb5000060
.word 0xd280001a
.word 0x14000009
.word 0xaa1a03e0
.word 0x3940035e
bl _p_345

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #472]
bl _p_346
.word 0xaa0003fa
.word 0xf90017ba
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_34
.word 0x1400002a
.word 0xf9002bbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
.word 0xb4000140
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402bbe
.word 0xd61f03c0
.word 0xf9001fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 3 151 0
.word 0xf90017bf
bl _p_47
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xb4000060
.word 0xf9403ba0
bl _p_26
.word 0x14000007
.loc 3 156 0
bl _p_212
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_347
.word 0x14000002
.loc 3 157 0
.word 0xf94017a0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_332
.word 0xd2800c20
.word 0xaa1103e1
bl _p_332

Lme_d8:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows
Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows:
.loc 3 162 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9016bb9

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf90013bf
.word 0xf90017bf
.word 0xd28001a0
.word 0xd2a00001
.word 0xd2a00002
bl _p_234
.word 0x53001c00
.word 0x35000040
.word 0x14000085
.loc 3 166 0
bl _p_212
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_341
.word 0xf90013a0
.loc 3 167 0
.word 0xf94013a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #408]
.word 0x3940001e
bl _p_342

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #416]
bl _p_343
.word 0xaa0003e2

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xb5000660

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xf9400000
.word 0xf90043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000e40

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xd2801001
bl _p_2
.word 0xf9003fa0
.word 0xf94043a1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000ca0
.word 0xd5033bbf
.word 0xf9403fa0
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0x92405842

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #488]
.word 0xf9002001

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #496]
.word 0xf9001402
.word 0xf9401822
.word 0xf9000c02
.word 0xf9401421
.word 0xf9000801
.word 0xf9003ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #480]
.word 0xd5033bbf
.word 0xf9403ba0
.word 0xf9000020
.word 0xaa0003f9

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #464]
.word 0xaa1a03e0
.word 0xaa1903e1
bl _p_344
.word 0xaa0003fa
.loc 3 169 0
.word 0xaa1a03e0
.word 0xb5000060
.word 0xd280001a
.word 0x14000005
.word 0xaa1a03e0
.word 0x3940035e
bl _p_345
.word 0xaa0003fa
.word 0xf90017ba
.word 0xf9001bbf
.word 0x94000005
.word 0xf9401ba0
.word 0xb4000040
bl _p_34
.word 0x1400002a
.word 0xf90027be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf94013a0
.word 0xb4000140
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94027be
.word 0xd61f03c0
.word 0xf9001fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.loc 3 175 0
.word 0xf90017bf
bl _p_47
.word 0xf90037a0
.word 0xf94037a0
.word 0xb4000060
.word 0xf94037a0
bl _p_26
.word 0x14000007
.loc 3 180 0
bl _p_212
.word 0xaa0003e1
.word 0xaa0103e0
.word 0x3940003e
bl _p_348
.word 0x14000002
.loc 3 181 0
.word 0xf94017a0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_332
.word 0xd2800c20
.word 0xaa1103e1
bl _p_332

Lme_d9:
.text
ut_286:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Phone
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_286
	.long LDIFF_SYM3
.text
ut_287:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Tablet
.text
ut_288:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Desktop
.text
ut_289:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_TV
.text
ut_290:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Watch
.text
ut_291:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Unknown
.text
ut_292:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string
.text
ut_293:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom
.text
ut_294:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string
.text
ut_295:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_object
.text
ut_296:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_GetHashCode
.text
ut_297:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_ToString
.text
ut_298:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Equality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
.text
ut_299:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Inequality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
.text
ut_300:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__cctor
.text
ut_301:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Android
.text
ut_302:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_iOS
.text
ut_303:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_macOS
.text
ut_304:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_MacCatalyst
.text
ut_305:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Tizen
.text
ut_306:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_WinUI
.text
ut_307:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Unknown
.text
ut_308:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string
.text
ut_309:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Create_string
.text
ut_310:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform
.text
ut_311:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string
.text
ut_312:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_object
.text
ut_313:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_GetHashCode
.text
ut_314:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_ToString
.text
ut_315:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Equality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
.text
ut_316:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Inequality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
.text
ut_317:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__cctor
.text
ut_318:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single
.text
ut_319:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Width
.text
ut_320:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Height
.text
ut_321:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Density
.text
ut_322:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Orientation
.text
ut_323:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Rotation
.text
ut_324:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_RefreshRate
.text
ut_325:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Equality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
.text
ut_326:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Inequality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
.text
ut_327:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_object
.text
ut_328:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo
.text
ut_329:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_GetHashCode
.text
ut_330:
add x0, x0, 16
b _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_ToString
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT
Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT:
.file 4 "/_/src/Essentials/src/Preferences/Preferences.shared.cs"
.loc 4 287 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90017af

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf940101a
.word 0xb9800340
.word 0xf9002fbf
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf940201a
.loc 4 288 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #520]
.word 0xf94017a1
.word 0xf9401421
.word 0x910063a2
.word 0xf90033a2
.word 0xd63f0020
.word 0xf94033be
.word 0xa90007c0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #528]
.word 0xf94017a0
.word 0xf9401804
.word 0xf9400fa0
.word 0xf94013a1
.word 0xaa1a03e2
.word 0xd2800003
.word 0xd63f0080
.word 0x53001c00
.word 0x340000a0
.loc 4 292 0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.loc 4 290 0
.word 0x9100c3a0
.word 0xd2800541
.word 0xd2800022
bl _p_142

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2804021
bl _p_24
.word 0xaa0003e1
.word 0x9100c3a0
bl _p_349

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #536]
.word 0xf94017a0
.word 0xf9401c02
.word 0x9100c3a0
.word 0xaa1a03e1
.word 0xd63f0040

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2804521
bl _p_24
.word 0xaa0003e1
.word 0x9100c3a0
bl _p_349
.word 0x9100c3a0
bl _p_145
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_26
.word 0x17ffffd9

Lme_172:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string
Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string:
.loc 2 50 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf90027af
.word 0xf9001fa0
.word 0xaa0103f9
.word 0xf90023a2
.word 0xaa0303fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xf94027a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94027a0
.word 0xf9401018
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xf90037bf
.word 0x3901c3bf
.word 0xf9003fbf
.word 0xf90033bf
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf94027a0
.word 0xf940140f
.word 0xf94027a0
.word 0xf9401800
.word 0xd63f0000
.loc 2 52 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9400000
.word 0xf90037a0
.word 0xd2a00000
.word 0x3901c3a0
.word 0xf94037b6
.word 0x9101c3a0
.word 0xf90043a0
.word 0xaa1603e0
.word 0x9101c3a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1603e0
.word 0xf94043a1
bl _p_150
.loc 2 54 0
.word 0xaa1a03e0
bl _p_148
.word 0xf9003fa0
.loc 2 56 0
.word 0xf94023a1
.word 0xb9802b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9802b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9802b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9802b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xb50002fa
.loc 2 58 0
.word 0xf9403fa2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_149
.word 0xb40000c0
.loc 2 59 0
.word 0xf9403fa2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_322
.loc 2 60 0
.word 0xf90047bf
.word 0x940003ef
.word 0xf94047a0
.word 0xb4000040
bl _p_34
.word 0xf9004bbf
.word 0x940003fe
.word 0xf9404ba0
.word 0xb4000040
bl _p_34
.word 0x14000407
.word 0xf94023a1
.word 0xb9803300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9803301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9803300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9803300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xaa1603fa
.word 0xb50066d6
.word 0xf94023a1
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9803b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9803b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9803b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000856
.word 0xf94023a1
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9804301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9804300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9804300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54006de1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54006ce1
.word 0xb980131a
.word 0x140002c9
.word 0xf94023a1
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9804b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9804b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000876
.word 0xf94023a1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9805301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005f61
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x54005e61
.word 0x39404300
.word 0x53001c1a
.word 0x1400025b
.word 0xf94023a1
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9805b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000856
.word 0xf94023a1
.word 0xb9806300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9806301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540050c1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xeb01001f
.word 0x10000011
.word 0x54004fc1
.word 0xf9400ada
.word 0x140001ee
.word 0xf94023a1
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9806b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000876
.word 0xf94023a1
.word 0xb9807300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9807301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004241
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x10000011
.word 0x54004141
.word 0xfd400b00
.word 0xfd0053a0
.word 0x140001ab
.word 0xf94023a1
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9807b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000876
.word 0xf94023a1
.word 0xb9808300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9808301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540033a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xeb01001f
.word 0x10000011
.word 0x540032a1
.word 0xbd401300
.word 0xbd009ba0
.word 0x1400013d
.word 0xf94023a1
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9808b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb4000896
.word 0xf94023a1
.word 0xb9809300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9809301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54002501
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xeb01001f
.word 0x10000011
.word 0x54002401
.word 0x91004300
.word 0xf9400000
.word 0xf90033a0
.word 0x140000ce
.word 0xf94023a1
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb9809b01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xb40016f6
.word 0xf94023a1
.word 0xb980a300
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb980a301
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980a300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980a300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f8
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800018
.word 0x14000001
.word 0xf9400300
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54001641
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x54001541
.word 0x91004300
.word 0xf9400001
.word 0xf9002ba1
.word 0xf9400400
.word 0xf9002fa0
.word 0x14000065
.loc 2 66 0
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_323
.loc 2 67 0
.word 0x1400006b
.loc 2 69 0
.word 0xf9403fa3
.word 0x93407f41
.word 0xaa0303e0
.word 0xaa1903e2
.word 0x3940007e
bl _p_324
.loc 2 70 0
.word 0x14000064
.loc 2 72 0
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_325
.loc 2 73 0
.word 0x1400005d
.loc 2 75 0
.word 0xf94023a1
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf9400f02
.word 0xf9401303
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf94027a0
.word 0xf9401c00
bl _p_350
.word 0xb980ab01
.word 0x8b0102e1
.word 0xf9006ba0
.word 0x91004000
.word 0xf9400f02
.word 0xf9401302
.word 0xf94027a2
.word 0xf9402042
bl _mono_gsharedvt_value_copy
.word 0xf9406ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980ab00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
bl _p_351
.word 0xaa0003e1
.word 0xaa1a03e0
bl _p_326
.word 0xaa0003fa
.loc 2 76 0
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_323
.loc 2 77 0
.word 0x1400002b
.loc 2 79 0
.word 0xf9403fa2
.word 0xfd4053a0
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_327
.loc 2 80 0
.word 0x14000024
.loc 2 82 0
.word 0xf9403fa2
.word 0xaa0203e0
.word 0xbd409ba0
.word 0xaa1903e1
.word 0x3940005e
bl _p_328
.loc 2 83 0
.word 0x1400001d
.loc 2 85 0
.word 0x910183a0
bl _p_329
.word 0xf9006ba0
bl _p_351
.word 0xaa0003e1
.word 0xf9406ba0
bl _p_330
.word 0xaa0003fa
.loc 2 86 0
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xaa1903e2
.word 0x3940007e
bl _p_323
.loc 2 87 0
.word 0x1400000e
.loc 2 89 0
.word 0xf9403fa0
.word 0xf9006ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #384]
.word 0x910143a0
bl _p_331
.word 0xaa0003e1
.word 0xf9406ba3
.word 0xaa0303e0
.word 0xaa1903e2
.word 0x3940007e
bl _p_323
.loc 2 92 0
.word 0xf90047bf
.word 0x9400000a
.word 0xf94047a0
.word 0xb4000040
bl _p_34
.word 0xf9004bbf
.word 0x94000019
.word 0xf9404ba0
.word 0xb4000040
bl _p_34
.word 0x14000022
.word 0xf90057be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9403fa0
.word 0xb4000140
.word 0xf9403fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94057be
.word 0xd61f03c0
.word 0xf9005fbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3941c3a0
.word 0x34000060
.word 0xf94037a0
bl _p_151
.word 0xf9405fbe
.word 0xd61f03c0
.loc 2 94 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_332

Lme_173:
.text
	.align 4
	.no_dead_strip Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string
Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string:
.loc 2 98 0 prologue_end
.word 0xa9ad7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a8
.word 0xf9003baf
.word 0xf90027a0
.word 0xaa0103f9
.word 0xf9002ba2
.word 0xaa0303fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xf9403ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403ba0
.word 0xf9401018
.word 0xb9800300
.word 0x91003c10
.word 0x928001f1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f7
.word 0xf90053bf
.word 0x3902a3bf
.word 0xf9005bbf
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9401701
.word 0xf9401b02
.word 0xd63f0040
.word 0xd2800000
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf90047bf
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xd2800016
.loc 2 100 0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #240]
.word 0xf9400000
.word 0xf90053a0
.word 0xd2a00000
.word 0x3902a3a0
.word 0xf94053b5
.word 0x9102a3a0
.word 0xf9005fa0
.word 0xaa1503e0
.word 0x9102a3a1
bl _mono_monitor_enter_v4_fast
.word 0x93407c00
.word 0x35000080
.word 0xaa1503e0
.word 0xf9405fa1
bl _p_150
.loc 2 102 0
.word 0xaa1a03e0
bl _p_148
.word 0xf9005ba0
.loc 2 104 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_149
.word 0xb5000240
.loc 2 105 0
.word 0xf9402ba1
.word 0xb9804300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf90063bf
.word 0x9400046f
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x9400047e
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x140004ae
.word 0xf9402ba1
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9804b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9804b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9804b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000855
.word 0xf9402ba1
.word 0xb9805300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9805301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54008a41
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x10000011
.word 0x54008941
.word 0xb98012da
.word 0x140002f7
.word 0xf9402ba1
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9805b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9805b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9805b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000875
.word 0xf9402ba1
.word 0xb9806300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9806301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54007bc1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xeb01001f
.word 0x10000011
.word 0x54007ac1
.word 0x394042c0
.word 0x53001c1a
.word 0x1400029b
.word 0xf9402ba1
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9806b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9806b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9806b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000855
.word 0xf9402ba1
.word 0xb9807300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9807301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54006d21
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xeb01001f
.word 0x10000011
.word 0x54006c21
.word 0xf9400ada
.word 0x14000240
.word 0xf9402ba1
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9807b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9807b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9807b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000875
.word 0xf9402ba1
.word 0xb9808300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9808301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005ea1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x10000011
.word 0x54005da1
.word 0xfd400ac0
.word 0xfd0073a0
.word 0x140001eb
.word 0xf9402ba1
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9808b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9808b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9808b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000875
.word 0xf9402ba1
.word 0xb9809300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9809301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54005001
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xeb01001f
.word 0x10000011
.word 0x54004f01
.word 0xbd4012c0
.word 0xbd00dba0
.word 0x1400018f
.word 0xf9402ba1
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb9809b01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb9809b00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb9809b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb4000895
.word 0xf9402ba1
.word 0xb980a300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb980a301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980a300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980a300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800016
.word 0x14000001
.word 0xf94002c0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54004161
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xeb01001f
.word 0x10000011
.word 0x54004061
.word 0x910042c0
.word 0xf9400000
.word 0xf90047a0
.word 0x14000133
.word 0xf9402ba1
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb980ab01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980ab00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980ab00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xb40008d5
.word 0xf9402ba1
.word 0xb980b300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb980b301
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980b300
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980b300
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xf94002a0
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540032a1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xeb01001f
.word 0x10000011
.word 0x540031a1
.word 0x910042a0
.word 0xf9400001
.word 0xf9003fa1
.word 0xf9400400
.word 0xf90043a0
.word 0x140000e2
.word 0xf9402ba1
.word 0xb980bb00
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xd63f0060
.word 0xf940071a
.word 0xd280005e
.word 0xeb1e035f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e035f
.word 0x54000280
.word 0xf9403ba0
.word 0xf9401400
bl _p_350
.word 0xb980bb01
.word 0x8b0102e1
.word 0xf9008ba0
.word 0x91004000
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf9408ba0
.word 0xaa0003fa
.word 0x1400000b
.word 0xb980bb00
.word 0x8b0002e0
.word 0xf940001a
.word 0x14000007
.word 0xf9400b01
.word 0xb980bb00
.word 0x8b0002e0
.word 0xd63f0020
.word 0xaa0003fa
.word 0x14000001
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000140
.word 0xf9400340

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x54000041
.word 0x14000003
.word 0xd2800015
.word 0x14000001
.word 0xaa1503fa
.word 0xb5001a75
.word 0x140000e3
.loc 2 110 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_333
.word 0xf9008ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xd2800281
bl _p_2
.word 0xf9408ba1
.word 0xb9001001
.word 0xaa0003f6
.loc 2 111 0
.word 0xf90063bf
.word 0x940000ec
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x940000fb
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x14000104
.loc 2 113 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_334
.word 0xf9008ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xd2800221
bl _p_2
.word 0xf9408ba1
.word 0x39004001
.word 0xaa0003f6
.loc 2 114 0
.word 0xf90063bf
.word 0x940000d3
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x940000e2
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x140000eb
.loc 2 116 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 117 0
.word 0xaa1a03e0
.word 0xf9008fa0
bl _p_351
.word 0xaa0003e1
.word 0xf9408fa0
bl _p_336
.word 0xf9008ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xd2800301
bl _p_2
.word 0xf9408ba1
.word 0xf9000801
.word 0xaa0003f6
.loc 2 118 0
.word 0xf90063bf
.word 0x940000b3
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x940000c2
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x140000cb
.loc 2 120 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_337
.word 0xfd0093a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xd2800301
bl _p_2
.word 0xfd4093a0
.word 0xfd000800
.word 0xaa0003f6
.loc 2 121 0
.word 0xf90063bf
.word 0x9400009a
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x940000a9
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x140000b2
.loc 2 123 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_338
.word 0x1e204000
.word 0xfd0093a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2800281
bl _p_2
.word 0xfd4093a0
.word 0xbd001000
.word 0xaa0003f6
.loc 2 124 0
.word 0xf90063bf
.word 0x94000080
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x9400008f
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x14000098
.loc 2 126 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 127 0
.word 0xaa1a03e0
.word 0xf9008ba0
bl _p_351
.word 0xaa0003e1
.word 0xf9408ba0
bl _p_336
.word 0xaa0003fa
.loc 2 128 0
.word 0xaa1a03e0
.word 0x9101a3a1
.word 0xf9006ba1
bl _p_339
.word 0xf9406bbe
.word 0xf90003c0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xd2800301
bl _p_2
.word 0x91004001
.word 0xf94037a2
.word 0xf9000022
.word 0xaa0003f6
.loc 2 129 0
.word 0xf90063bf
.word 0x94000059
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x94000068
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x14000071
.loc 2 131 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_335
.word 0xaa0003fa
.loc 2 132 0
.word 0xaa1a03e0
.word 0x910243a1
bl _p_340
.word 0x53001c00
.word 0x34000740
.loc 2 134 0
.word 0xf9404ba0
.word 0xf9002fa0
.word 0xf9404fa0
.word 0xf90033a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xd2800401
bl _p_2
.word 0x91004001
.word 0xf9402fa2
.word 0xf9000022
.word 0xf94033a2
.word 0xf9000422
.word 0xaa0003f6
.loc 2 136 0
.word 0xf90063bf
.word 0x94000034
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x94000043
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x1400004c
.loc 2 139 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_335
.word 0xaa0003f6
.loc 2 140 0
.word 0xf90063bf
.word 0x94000023
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x94000032
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x1400003b
.loc 2 143 0
.word 0xf9403ba0
.word 0xf9401c00

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x1, [x16, #560]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340000e0
.loc 2 144 0
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xaa1903e1
.word 0x3940005e
bl _p_335
.word 0xaa0003f6
.loc 2 147 0
.word 0xf90063bf
.word 0x9400000a
.word 0xf94063a0
.word 0xb4000040
bl _p_34
.word 0xf90067bf
.word 0x94000019
.word 0xf94067a0
.word 0xb4000040
bl _p_34
.word 0x14000022
.word 0xf90077be

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9405ba0
.word 0xb4000140
.word 0xf9405ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x15, [x16, #224]
.word 0x928004f0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94077be
.word 0xd61f03c0
.word 0xf9007fbe

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x3942a3a0
.word 0x34000060
.word 0xf94053a0
bl _p_151
.word 0xf9407fbe
.word 0xd61f03c0
.loc 2 150 0
.word 0xf9400f01
.word 0xaa1603e0
bl _p_352
.word 0xaa0003fa
.word 0xf9400719
.word 0xd280005e
.word 0xeb1e033f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e033f
.word 0x540000e0
.word 0x91004359
.word 0x1400000c
.word 0xb980c300
.word 0x8b0002f9
.word 0xf900033a
.word 0x14000008
.word 0xf9401301
.word 0xb980cb00
.word 0x8b0002e8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb980cb00
.word 0x8b0002f9
.word 0xb980d300
.word 0x8b0002e0
.word 0xf9401702
.word 0xf9401f03
.word 0xaa1903e1
.word 0xd63f0060
.word 0xf94023a0
.word 0xb980d301
.word 0x8b0102e1
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0x14000009
.loc 2 151 0
.word 0xf94023a0
.word 0xb9804301
.word 0x8b0102e1
.word 0xf9401702
.word 0xf9401f02
.word 0xf9403ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8d37bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_332

Lme_174:
.text
ut_379:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_StructureToPtr_object_intptr_bool
.text
ut_380:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_PtrToStructure_intptr_object
.text
ut_381:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_StructureToPtr_object_intptr_bool
.text
ut_382:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_PtrToStructure_intptr_object
.text
ut_383:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_StructureToPtr_object_intptr_bool
.text
ut_384:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_PtrToStructure_intptr_object
.text
ut_385:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
.text
ut_386:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
.text
ut_387:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
.text
ut_388:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
.text
ut_389:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_StructureToPtr_object_intptr_bool
.text
ut_390:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_PtrToStructure_intptr_object
.text
ut_391:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_StructureToPtr_object_intptr_bool
.text
ut_392:
add x0, x0, 16
b _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_PtrToStructure_intptr_object
.text
	.align 4
	.no_dead_strip wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr:
.word 0xa9b57bfd
.word 0x910003fd
.word 0x1000001e
.word 0xf9001bbe
.word 0xa903d3b3
.word 0xa904dbb5
.word 0xa905e3b7
.word 0xa906ebb9
.word 0xa907f3bb
.word 0xf90047bd
.word 0x910003f1
.word 0xf9004bb1
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #88]
.word 0xd63f0000
.word 0xaa0003f8
.word 0x910083a0
.word 0xf9400301
.word 0xf90013a1
.word 0xf9000300

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #568]
.word 0x910063a0
bl _mono_threads_enter_gc_safe_region_unbalanced
.word 0xf90057a0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_353
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf90053a1
.word 0x910043a1
bl _mono_threads_exit_gc_safe_region_unbalanced
.word 0xf94053a0
.word 0xaa0003fa

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf94013a0
.word 0xf9000300
.word 0xaa1a03e0
.word 0xa94667b8
.word 0xf9403bba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0x91022320
.word 0xd280003e
.word 0xb900001e
.word 0xaa1903e0
bl _p_313
bl _p_312
.word 0xaa0003f9
.word 0xb5ffff20
.word 0x17fffff0

Lme_189:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_:
	.globl _callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor
_callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_354
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_18a:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete
_callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_355
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_18b:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete
_callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_356
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_18c:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_:
	.globl _callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish
_callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_357
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_18d:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor
_callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_358
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_18e:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_:
	.globl _callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor
_callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_359
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_18f:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia
_callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_360
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_190:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_:
	.globl _callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled
_callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_361
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_191:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor
_callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_362
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_192:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
	.globl _callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking
_callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xf90027bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910123a1
.word 0xd63f0040
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf94023a4
bl _p_363
.word 0xf9402ba0
.word 0x910123a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe20
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_193:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor
_callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_364
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_194:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_:
	.globl _callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss
_callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_365
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_195:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor
_callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_366
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_196:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_:
	.globl _callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled
_callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_367
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_197:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
	.globl _callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument
_callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xf90027bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910123a1
.word 0xd63f0040
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf94023a4
bl _p_368
.word 0xf9402ba0
.word 0x910123a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe20
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_198:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument
_callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_369
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_199:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor
_callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_370
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_19a:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_:
	.globl _callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged
_callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xb94033a3
.word 0xf9401fa4
bl _p_371
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_19b:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_:
	.globl _callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization
_callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_372
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_19c:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor
_callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_373
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_19d:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_:
	.globl _callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss
_callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_374
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_19e:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_:
	.globl _callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel
_callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x9100e3a1
.word 0xd63f0040
.word 0xf90023a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001c0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
bl _p_375
.word 0xf94023a0
.word 0x9100e3a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe40
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_19f:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact
_callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_376
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_1a0:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty
_callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_377
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_1a1:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity
_callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf90027a4
.word 0xf9002fbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910163a1
.word 0xd63f0040
.word 0xf9002bbf
.word 0xf90033a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002c0
.word 0x14000001
.word 0x910143a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
.word 0xf94027a4
bl _p_378
.word 0xf94037be
.word 0xf90003c0
.word 0xf94033a0
.word 0x910163a1
bl _mono_threads_detach_coop
.word 0xf9402ba0
.word 0xf9000fa0
.word 0xf9400bb4
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffd40
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_1a2:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_:
	.globl _callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData
_callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_379
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a3:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_:
	.globl _callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata
_callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_380
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a4:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
	.globl _callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated
_callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xf90027bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910123a1
.word 0xd63f0040
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf94023a4
bl _p_381
.word 0xf9402ba0
.word 0x910123a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe20
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a5:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_:
	.globl _callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration
_callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fba
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9001fa3
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000220
.word 0x14000001
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
.word 0xf9401fa3
bl _p_382
.word 0x53001c1a
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xaa1a03e0
.word 0xf9400bb5
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffde0
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a6:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor
_callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_383
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a7:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
	.globl _callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated
_callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xf90027bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910123a1
.word 0xd63f0040
.word 0xf9002ba0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf94023a4
bl _p_384
.word 0xf9402ba0
.word 0x910123a1
bl _mono_threads_detach_coop
.word 0xf9400bb5
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffe20
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1a8:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_:
	.globl _callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed
_callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0xf9401fa4
bl _p_385
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_1a9:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_:
	.globl _callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged
_callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xb94033a3
.word 0xf9401fa4
bl _p_386
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f4
.word 0xb4fffe20
.word 0x91022280
.word 0xd280003e
.word 0xb900001e
.word 0xaa1403e0
bl _p_313

Lme_1aa:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_:
	.globl _callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration
_callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration:
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf9000fba
.word 0xf90013a0
.word 0xf90017a1
.word 0xf9001ba2
.word 0xf9001fa3
.word 0xf90023bf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910103a1
.word 0xd63f0040
.word 0xf90027a0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x35000220
.word 0x14000001
.word 0xf94013a0
.word 0xf94017a1
.word 0xf9401ba2
.word 0xf9401fa3
bl _p_387
.word 0x53001c1a
.word 0xf94027a0
.word 0x910103a1
bl _mono_threads_detach_coop
.word 0xaa1a03e0
.word 0xf9400bb5
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffde0
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1ab:
.text
	.align 4
	.no_dead_strip wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_:
	.globl _callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor
_callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb5
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x2, [x16, #112]
.word 0xd2800000
.word 0x910143a1
.word 0xd63f0040
.word 0xf90027bf
.word 0xf9002fa0

adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x0, [x16, #48]
.word 0xb9400000
.word 0x350002a0
.word 0x14000001
.word 0x910123a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xf94023a3
bl _p_388
.word 0xf94033be
.word 0xf90003c0
.word 0xf9402fa0
.word 0x910143a1
bl _mono_threads_detach_coop
.word 0xf94027a0
.word 0xf9000fa0
.word 0xf9400bb5
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
bl _p_312
.word 0xaa0003f5
.word 0xb4fffd60
.word 0x910222a0
.word 0xd280003e
.word 0xb900001e
.word 0xaa1503e0
bl _p_313

Lme_1ac:
.text
	.align 3
jit_code_end:
_mono_aot_Microsoft_Maui_Essentialsjit_code_end:
	.globl _mono_aot_Microsoft_Maui_Essentialsjit_code_end

	.byte 0,0,0,0
.no_dead_strip _Microsoft_Maui_Essentials__Module__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_RemovePossibleQueryString_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticator_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult_get_Properties
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_GetCredentialsAsync
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager__ctor_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_AuthenticationServices_ASAuthorizationController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_OpenUrlCallback_System_Uri
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_get_DidFinishHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_set_DidFinishHandler_System_Action_1_SafariServices_SFSafariViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider__ctor_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_AuthenticationServices_ASWebAuthenticationSession
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_Announce_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReaderImplementation_Announce_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReaderImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_Screenshot_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_CaptureAsync_Microsoft_Maui_Media_IScreenshot_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_CaptureAsync_Microsoft_Maui_Media_IScreenshot_UIKit_UIView
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_CopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_get_CompletedHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_set_CompletedHandler_System_Action_1_Foundation_NSDictionary
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_get_CompletedHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_set_CompletedHandler_System_Action_1_PhotosUI_PHPickerResult__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_get_Handler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_set_Handler_System_Action
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_Dispose_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_get_IsCaptureSupported
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_CaptureAsync_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_CaptureAsync_UIKit_UIView
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass3_0__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass3_0__CaptureAsyncb__0_UIKit_UIGraphicsImageRendererContext
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass4_0__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass4_0__CaptureAsyncb__0_UIKit_UIGraphicsImageRendererContext
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_get_PickHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_set_PickHandler_System_Action_1_Foundation_NSUrl__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_get_CacheDirectory
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_OpenAppPackageFileAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_AppPackageFileExistsAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_CacheDirectory
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_OpenAppPackageFileAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_AppPackageFileExistsAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_ContainsKey_string_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_SetAsync_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_add_OnAppAction_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_remove_OnAppAction_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionEventArgs__ctor_Microsoft_Maui_ApplicationModel_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionEventArgs_get_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Title
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Title_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Subtitle
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Subtitle_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Id
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Id_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Icon
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Icon_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_RequestedTheme
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_RequestedLayoutDirection
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_BeginInvokeOnMainThread_System_Action
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_add_AuthorizationStatusChanged_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_remove_AuthorizationStatusChanged_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_OpenUrl_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_ContinueUserActivity_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_PerformActionForShortcutItem_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_Track
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchEver
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchEver_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchForCurrentVersion
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchForCurrentVersion_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchForCurrentBuild
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchForCurrentBuild_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__InitVersionTrackingb__12_0_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__InitVersionTrackingb__12_1_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_get_IsSupported
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_SetAsync_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_add_AppActionActivated_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_remove_AppActionActivated_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_PerformActionForShortcutItem_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__SetAsyncb__4_0_Microsoft_Maui_ApplicationModel_AppAction
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate__ctor_System_Action
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_Dispose_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManager_get_Default
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIViewController_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetCurrentUIViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetCurrentUIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIViewControllerb__2_0_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIViewControllerb__2_1_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIWindowb__3_0_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIWindowb__3_1_UIKit_UIWindow
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetKeyWindowb__4_0_UIKit_UIWindowScene
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetWindowsb__5_0_UIKit_UIWindowScene
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_PackageName
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_Name
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_VersionString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_BuildString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_RequestedTheme
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_RequestedLayoutDirection
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_System_Action_1_Contacts_CNContact
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_get_DidSelectContactHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__Xamarin_ConstructNSObject_ObjCRuntime_NativeHandle
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__Xamarin_ConstructINativeObject_ObjCRuntime_NativeHandle_bool
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource__ctor_Foundation_NSObject_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs__ctor_Microsoft_Maui_Devices_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_get_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_get_MainDisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_add_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_remove_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_GetMainDisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_StartScreenMetricsListeners
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_StopScreenMetricsListeners
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_OnMainDisplayInfoChanged_Foundation_NSNotification
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Platform
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Idiom
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Current
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Phone
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Tablet
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Desktop
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_TV
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Watch
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Unknown
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_object
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_GetHashCode
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_ToString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Equality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Inequality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Android
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_iOS
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_macOS
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_MacCatalyst
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Tizen
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_WinUI
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Unknown
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Create_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_object
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_GetHashCode
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_ToString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Equality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Inequality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__cctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Width
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Height
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Density
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Orientation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Rotation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_RefreshRate
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Equality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Inequality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_object
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_GetHashCode
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_ToString
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation_get_Platform
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation_get_Idiom
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_get_LocationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_get_LocationHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_get_ErrorHandler
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_set_ErrorHandler_System_Action_1_Microsoft_Maui_Devices_Sensors_GeolocationError
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
.no_dead_strip _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar____ctor
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupUnmanagedFunction_string_int
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupType_uint
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupTypeId_System_RuntimeTypeHandle
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___RegisterWrapperTypes_System_Collections_Generic_Dictionary_2_System_RuntimeTypeHandle_System_RuntimeTypeHandle
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___ConstructNSObject_System_RuntimeTypeHandle_ObjCRuntime_NativeHandle
.no_dead_strip _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___ConstructINativeObject_System_RuntimeTypeHandle_ObjCRuntime_NativeHandle_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Func_2_T_REF_TResult_REF_invoke_TResult_T_T_REF
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_EventHandler_1_TEventArgs_REF_invoke_void_object_TEventArgs_object_TEventArgs_REF
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_PtrToStructure_intptr_object
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_StructureToPtr_object_intptr_bool
.no_dead_strip _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_PtrToStructure_intptr_object
.no_dead_strip _mono_aot_Microsoft_Maui_Essentials_init_method
.no_dead_strip _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_mrgctx
.no_dead_strip _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_this
.no_dead_strip _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_vtable
.no_dead_strip _mono_aot_Microsoft_Maui_Essentials_icall_cold_wrapper_249

.text
	.align 3
method_addresses:
_mono_aot_Microsoft_Maui_Essentialsmethod_addresses:
	.globl _mono_aot_Microsoft_Maui_Essentialsmethod_addresses
	.no_dead_strip method_addresses
bl _Microsoft_Maui_Essentials__Module__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_RemovePossibleQueryString_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticator_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult_get_Properties
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_GetCredentialsAsync
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager__ctor_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_AuthenticationServices_ASAuthorizationController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_OpenUrlCallback_System_Uri
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_get_DidFinishHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_set_DidFinishHandler_System_Action_1_SafariServices_SFSafariViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider__ctor_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_AuthenticationServices_ASWebAuthenticationSession
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_Announce_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReader_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReaderImplementation_Announce_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Accessibility_SemanticScreenReaderImplementation__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_Screenshot_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_CaptureAsync_Microsoft_Maui_Media_IScreenshot_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_CaptureAsync_Microsoft_Maui_Media_IScreenshot_UIKit_UIView
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_CopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage
bl Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_get_CompletedHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_set_CompletedHandler_System_Action_1_Foundation_NSDictionary
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_get_CompletedHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_set_CompletedHandler_System_Action_1_PhotosUI_PHPickerResult__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_get_Handler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_set_Handler_System_Action
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_Dispose_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_get_IsCaptureSupported
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_CaptureAsync_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_CaptureAsync_UIKit_UIView
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass3_0__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass3_0__CaptureAsyncb__0_UIKit_UIGraphicsImageRendererContext
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass4_0__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation__c__DisplayClass4_0__CaptureAsyncb__0_UIKit_UIGraphicsImageRendererContext
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_get_PickHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_set_PickHandler_System_Action_1_Foundation_NSUrl__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_get_CacheDirectory
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_OpenAppPackageFileAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_AppPackageFileExistsAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystem_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_CacheDirectory
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_OpenAppPackageFileAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_AppPackageFileExistsAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_ContainsKey_string_string
bl Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string
bl Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation__cctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_SetAsync_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_add_OnAppAction_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_remove_OnAppAction_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActions_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionEventArgs__ctor_Microsoft_Maui_ApplicationModel_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionEventArgs_get_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Title
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Title_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Subtitle
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Subtitle_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Id
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Id_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_get_Icon
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction_set_Icon_string
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_RequestedTheme
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_RequestedLayoutDirection
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfo_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_BeginInvokeOnMainThread_System_Action
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_add_AuthorizationStatusChanged_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_remove_AuthorizationStatusChanged_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_OpenUrl_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_ContinueUserActivity_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Platform_PerformActionForShortcutItem_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_Track
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchEver
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchEver_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchForCurrentVersion
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchForCurrentVersion_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_IsFirstLaunchForCurrentBuild
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_set_IsFirstLaunchForCurrentBuild_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__InitVersionTrackingb__12_0_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__InitVersionTrackingb__12_1_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_get_IsSupported
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_SetAsync_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_add_AppActionActivated_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_remove_AppActionActivated_System_EventHandler_1_Microsoft_Maui_ApplicationModel_AppActionEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation_PerformActionForShortcutItem_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsImplementation__c__SetAsyncb__4_0_Microsoft_Maui_ApplicationModel_AppAction
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate__ctor_System_Action
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_Dispose_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManager_get_Default
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIViewController_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetCurrentUIViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetCurrentUIWindow
bl Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow
bl Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIViewControllerb__2_0_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIViewControllerb__2_1_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIWindowb__3_0_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetCurrentUIWindowb__3_1_UIKit_UIWindow
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetKeyWindowb__4_0_UIKit_UIWindowScene
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation__c__GetWindowsb__5_0_UIKit_UIWindowScene
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_PackageName
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_Name
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_VersionString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_BuildString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_RequestedTheme
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_get_RequestedLayoutDirection
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_System_Action_1_Contacts_CNContact
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_get_DidSelectContactHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__Xamarin_ConstructNSObject_ObjCRuntime_NativeHandle
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__Xamarin_ConstructINativeObject_ObjCRuntime_NativeHandle_bool
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource__ctor_Foundation_NSObject_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_UIKit_UIActivityViewController_Foundation_NSString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_UIKit_UIActivityViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs__ctor_Microsoft_Maui_Devices_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_get_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_get_MainDisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_add_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_remove_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplay_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_GetMainDisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_StartScreenMetricsListeners
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_StopScreenMetricsListeners
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_OnMainDisplayInfoChanged_Foundation_NSNotification
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChanged_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged
bl method_addresses
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase__ctor
bl method_addresses
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Platform
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Idiom
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfo_get_Current
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Phone
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Tablet
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Desktop
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_TV
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Watch
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_get_Unknown
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_object
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_GetHashCode
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_ToString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Equality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_op_Inequality_Microsoft_Maui_Devices_DeviceIdiom_Microsoft_Maui_Devices_DeviceIdiom
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Android
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_iOS
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_macOS
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_MacCatalyst
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Tizen
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_WinUI
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_get_Unknown
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Create_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_object
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_GetHashCode
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_ToString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Equality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_op_Inequality_Microsoft_Maui_Devices_DevicePlatform_Microsoft_Maui_Devices_DevicePlatform
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__cctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Width
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Height
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Density
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Orientation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_Rotation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_get_RefreshRate
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Equality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_op_Inequality_Microsoft_Maui_Devices_DisplayInfo_Microsoft_Maui_Devices_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_object
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_GetHashCode
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_ToString
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation_get_Platform
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation_get_Idiom
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceInfoImplementation__ctor
bl method_addresses
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_get_LocationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_get_LocationHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_set_LocationHandler_System_Action_1_CoreLocation_CLLocation
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_get_ErrorHandler
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_set_ErrorHandler_System_Action_1_Microsoft_Maui_Devices_Sensors_GeolocationError
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_CoreLocation_CLLocationManager
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
bl _Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar____ctor
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupUnmanagedFunction_string_int
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupType_uint
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___LookupTypeId_System_RuntimeTypeHandle
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___RegisterWrapperTypes_System_Collections_Generic_Dictionary_2_System_RuntimeTypeHandle_System_RuntimeTypeHandle
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___ConstructNSObject_System_RuntimeTypeHandle_ObjCRuntime_NativeHandle
bl _Microsoft_Maui_Essentials_ObjCRuntime___Registrar___ConstructINativeObject_System_RuntimeTypeHandle_ObjCRuntime_NativeHandle_bool
bl method_addresses
bl method_addresses
bl method_addresses
bl Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT
bl Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string
bl Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Func_2_T_REF_TResult_REF_invoke_TResult_T_T_REF
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Func_1_TResult_REF_invoke_TResult
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Action_1_T_REF_invoke_void_T_T_REF
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_EventHandler_1_TEventArgs_REF_invoke_void_object_TEventArgs_object_TEventArgs_REF
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Predicate_1_T_REF_invoke_bool_T_T_REF
bl _Microsoft_Maui_Essentials_wrapper_delegate_invoke_System_Comparison_1_T_REF_invoke_int_T_T_T_REF_T_REF
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DeviceIdiom_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DevicePlatform_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_Microsoft_Maui_Devices_DisplayInfo_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_System_Collections_Generic_KeyValuePair_2_string_string_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_bool_PtrToStructure_intptr_object
bl _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_StructureToPtr_object_intptr_bool
bl _Microsoft_Maui_Essentials_wrapper_other_System_Nullable_1_System_Runtime_InteropServices_NFloat_PtrToStructure_intptr_object
bl wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
bl wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
bl _mono_aot_Microsoft_Maui_Essentials_init_method
bl _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_mrgctx
bl _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_this
bl _mono_aot_Microsoft_Maui_Essentials_init_method_gshared_vtable
bl _mono_aot_Microsoft_Maui_Essentials_icall_cold_wrapper_249
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
_mono_aot_Microsoft_Maui_Essentialsunbox_trampolines:
	.globl _mono_aot_Microsoft_Maui_Essentialsunbox_trampolines

	.long 286,287,288,289,290,291,292,293
	.long 294,295,296,297,298,299,300,301
	.long 302,303,304,305,306,307,308,309
	.long 310,311,312,313,314,315,316,317
	.long 318,319,320,321,322,323,324,325
	.long 326,327,328,329,330,379,380,381
	.long 382,383,384,385,386,387,388,389
	.long 390,391,392
unbox_trampolines_end:
_mono_aot_Microsoft_Maui_Essentialsunbox_trampolines_end:
	.globl _mono_aot_Microsoft_Maui_Essentialsunbox_trampolines_end

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
_mono_aot_Microsoft_Maui_Essentialsunbox_trampoline_addresses:
	.globl _mono_aot_Microsoft_Maui_Essentialsunbox_trampoline_addresses
bl ut_286
bl ut_287
bl ut_288
bl ut_289
bl ut_290
bl ut_291
bl ut_292
bl ut_293
bl ut_294
bl ut_295
bl ut_296
bl ut_297
bl ut_298
bl ut_299
bl ut_300
bl ut_301
bl ut_302
bl ut_303
bl ut_304
bl ut_305
bl ut_306
bl ut_307
bl ut_308
bl ut_309
bl ut_310
bl ut_311
bl ut_312
bl ut_313
bl ut_314
bl ut_315
bl ut_316
bl ut_317
bl ut_318
bl ut_319
bl ut_320
bl ut_321
bl ut_322
bl ut_323
bl ut_324
bl ut_325
bl ut_326
bl ut_327
bl ut_328
bl ut_329
bl ut_330
bl ut_379
bl ut_380
bl ut_381
bl ut_382
bl ut_383
bl ut_384
bl ut_385
bl ut_386
bl ut_387
bl ut_388
bl ut_389
bl ut_390
bl ut_391
bl ut_392

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:
_mono_aot_Microsoft_Maui_Essentialsunwind_info:
	.globl _mono_aot_Microsoft_Maui_Essentialsunwind_info

	.byte 0,19,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,153,16,154,15,24,12,31,0,68,14,208,1,157,26,158
	.byte 25,68,13,29,68,151,24,152,23,68,153,22,154,21,27,12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,150,32
	.byte 151,31,68,152,30,153,29,68,154,28,19,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17,16,12
	.byte 31,0,68,14,112,157,14,158,13,68,13,29,68,154,12,27,12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,150
	.byte 26,151,25,68,152,24,153,23,68,154,22,29,12,31,0,68,14,176,2,157,38,158,37,68,13,29,68,149,36,150,35,68
	.byte 151,34,152,33,68,153,32,154,31,39,12,31,0,68,14,176,1,157,22,158,21,68,13,29,76,147,15,148,14,68,149,13
	.byte 150,12,68,151,11,152,10,68,153,9,154,8,68,155,7,156,6,16,12,31,0,68,14,112,157,14,158,13,68,13,29,68
	.byte 149,12,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8,16,12,31,0,68,14,80,157,10,158,9,68,13
	.byte 29,68,149,8,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,16,12,31,0,68,14,112,157,14,158,13
	.byte 68,13,29,68,148,12,19,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,68,154,7

.text
	.align 4
plt:
_mono_aot_Microsoft_Maui_Essentialsplt:
	.globl _mono_aot_Microsoft_Maui_Essentialsplt
mono_aot_Microsoft_Maui_Essentials_plt:
_p_1_plt_Microsoft_Maui_Essentials__jit_icall_mono_threads_state_poll_llvm:
	.globl _p_1_plt_Microsoft_Maui_Essentials__jit_icall_mono_threads_state_poll_llvm
.private_extern _p_1_plt_Microsoft_Maui_Essentials__jit_icall_mono_threads_state_poll_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_threads_state_poll
plt_Microsoft_Maui_Essentials__jit_icall_mono_threads_state_poll:
_p_1:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #584]
br x16
.word 2012
_p_2_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm:
	.globl _p_2_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
.private_extern _p_2_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_2:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #592]
br x16
.word 2015
_p_3_plt_Microsoft_Maui_Essentials_ObjCRuntime_RegistrarHelper_Register_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_3_plt_Microsoft_Maui_Essentials_ObjCRuntime_RegistrarHelper_Register_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_3_plt_Microsoft_Maui_Essentials_ObjCRuntime_RegistrarHelper_Register_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_RegistrarHelper_Register_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_ObjCRuntime_RegistrarHelper_Register_ObjCRuntime_IManagedRegistrar:
_p_3:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 2023
_p_4_plt_Microsoft_Maui_Essentials__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm:
	.globl _p_4_plt_Microsoft_Maui_Essentials__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
.private_extern _p_4_plt_Microsoft_Maui_Essentials__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_llvm_throw_corlib_exception_abs_trampoline
plt_Microsoft_Maui_Essentials__jit_icall_llvm_throw_corlib_exception_abs_trampoline:
_p_4:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 2028
_p_5_plt_Microsoft_Maui_Essentials_string_IndexOf_char_System_StringComparison_llvm:
	.globl _p_5_plt_Microsoft_Maui_Essentials_string_IndexOf_char_System_StringComparison_llvm
.private_extern _p_5_plt_Microsoft_Maui_Essentials_string_IndexOf_char_System_StringComparison_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_IndexOf_char_System_StringComparison
plt_Microsoft_Maui_Essentials_string_IndexOf_char_System_StringComparison:
_p_5:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 2031
_p_6_plt_Microsoft_Maui_Essentials_string_Substring_int_int_llvm:
	.globl _p_6_plt_Microsoft_Maui_Essentials_string_Substring_int_int_llvm
.private_extern _p_6_plt_Microsoft_Maui_Essentials_string_Substring_int_int_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Substring_int_int
plt_Microsoft_Maui_Essentials_string_Substring_int_int:
_p_6:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 2036
_p_7_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm:
	.globl _p_7_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm
.private_extern _p_7_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string:
_p_7:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 2041
_p_8_plt_Microsoft_Maui_Essentials_System_Uri_op_Equality_System_Uri_System_Uri_llvm:
	.globl _p_8_plt_Microsoft_Maui_Essentials_System_Uri_op_Equality_System_Uri_System_Uri_llvm
.private_extern _p_8_plt_Microsoft_Maui_Essentials_System_Uri_op_Equality_System_Uri_System_Uri_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_op_Equality_System_Uri_System_Uri
plt_Microsoft_Maui_Essentials_System_Uri_op_Equality_System_Uri_System_Uri:
_p_8:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 2052
_p_9_plt_Microsoft_Maui_Essentials_System_Uri_get_Query_llvm:
	.globl _p_9_plt_Microsoft_Maui_Essentials_System_Uri_get_Query_llvm
.private_extern _p_9_plt_Microsoft_Maui_Essentials_System_Uri_get_Query_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_get_Query
plt_Microsoft_Maui_Essentials_System_Uri_get_Query:
_p_9:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 2057
_p_10_plt_Microsoft_Maui_Essentials_System_Uri_get_Fragment_llvm:
	.globl _p_10_plt_Microsoft_Maui_Essentials_System_Uri_get_Fragment_llvm
.private_extern _p_10_plt_Microsoft_Maui_Essentials_System_Uri_get_Fragment_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_get_Fragment
plt_Microsoft_Maui_Essentials_System_Uri_get_Fragment:
_p_10:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 2062
_p_11_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string_llvm:
	.globl _p_11_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string_llvm
.private_extern _p_11_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_UnpackParameters_System_ReadOnlySpan_1_char_System_Collections_Generic_Dictionary_2_string_string:
_p_11:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 2067
_p_12_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm:
	.globl _p_12_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
.private_extern _p_12_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument
plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument:
_p_12:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 2069
_p_13_plt_Microsoft_Maui_Essentials__jit_icall_mono_generic_class_init_llvm:
	.globl _p_13_plt_Microsoft_Maui_Essentials__jit_icall_mono_generic_class_init_llvm
.private_extern _p_13_plt_Microsoft_Maui_Essentials__jit_icall_mono_generic_class_init_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_generic_class_init
plt_Microsoft_Maui_Essentials__jit_icall_mono_generic_class_init:
_p_13:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 2074
_p_14_plt_Microsoft_Maui_Essentials_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm:
	.globl _p_14_plt_Microsoft_Maui_Essentials_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm
.private_extern _p_14_plt_Microsoft_Maui_Essentials_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int
plt_Microsoft_Maui_Essentials_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int:
_p_14:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 2097
_p_15_plt_Microsoft_Maui_Essentials_System_ReadOnlySpan_1_char_ToString_llvm:
	.globl _p_15_plt_Microsoft_Maui_Essentials_System_ReadOnlySpan_1_char_ToString_llvm
.private_extern _p_15_plt_Microsoft_Maui_Essentials_System_ReadOnlySpan_1_char_ToString_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ReadOnlySpan_1_char_ToString
plt_Microsoft_Maui_Essentials_System_ReadOnlySpan_1_char_ToString:
_p_15:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 2117
_p_16_plt_Microsoft_Maui_Essentials_System_Uri_UnescapeDataString_string_llvm:
	.globl _p_16_plt_Microsoft_Maui_Essentials_System_Uri_UnescapeDataString_string_llvm
.private_extern _p_16_plt_Microsoft_Maui_Essentials_System_Uri_UnescapeDataString_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_UnescapeDataString_string
plt_Microsoft_Maui_Essentials_System_Uri_UnescapeDataString_string:
_p_16:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 2134
_p_17_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string_set_Item_string_string_llvm:
	.globl _p_17_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string_set_Item_string_string_llvm
.private_extern _p_17_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string_set_Item_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string_set_Item_string_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_string_set_Item_string_string:
_p_17:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 2139
_p_18_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocVector_intptr_intptr_llvm:
	.globl _p_18_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
.private_extern _p_18_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocVector_intptr_intptr
plt_Microsoft_Maui_Essentials_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_18:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 2150
_p_19_plt_Microsoft_Maui_Essentials_string__ctor_char___llvm:
	.globl _p_19_plt_Microsoft_Maui_Essentials_string__ctor_char___llvm
.private_extern _p_19_plt_Microsoft_Maui_Essentials_string__ctor_char___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string__ctor_char__
plt_Microsoft_Maui_Essentials_string__ctor_char__:
_p_19:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 2158
_p_20_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm:
	.globl _p_20_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
.private_extern _p_20_plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException
plt_Microsoft_Maui_Essentials_System_ThrowHelper_ThrowArgumentOutOfRangeException:
_p_20:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 2163
_p_21_plt_Microsoft_Maui_Essentials_System_Uri_get_Scheme_llvm:
	.globl _p_21_plt_Microsoft_Maui_Essentials_System_Uri_get_Scheme_llvm
.private_extern _p_21_plt_Microsoft_Maui_Essentials_System_Uri_get_Scheme_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_get_Scheme
plt_Microsoft_Maui_Essentials_System_Uri_get_Scheme:
_p_21:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 2168
_p_22_plt_Microsoft_Maui_Essentials_string_Equals_string_System_StringComparison_llvm:
	.globl _p_22_plt_Microsoft_Maui_Essentials_string_Equals_string_System_StringComparison_llvm
.private_extern _p_22_plt_Microsoft_Maui_Essentials_string_Equals_string_System_StringComparison_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Equals_string_System_StringComparison
plt_Microsoft_Maui_Essentials_string_Equals_string_System_StringComparison:
_p_22:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 2173
_p_23_plt_Microsoft_Maui_Essentials_System_Uri_get_Host_llvm:
	.globl _p_23_plt_Microsoft_Maui_Essentials_System_Uri_get_Host_llvm
.private_extern _p_23_plt_Microsoft_Maui_Essentials_System_Uri_get_Host_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri_get_Host
plt_Microsoft_Maui_Essentials_System_Uri_get_Host:
_p_23:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 2178
_p_24_plt_Microsoft_Maui_Essentials__jit_icall_mono_helper_ldstr_llvm:
	.globl _p_24_plt_Microsoft_Maui_Essentials__jit_icall_mono_helper_ldstr_llvm
.private_extern _p_24_plt_Microsoft_Maui_Essentials__jit_icall_mono_helper_ldstr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_helper_ldstr
plt_Microsoft_Maui_Essentials__jit_icall_mono_helper_ldstr:
_p_24:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 2183
_p_25_plt_Microsoft_Maui_Essentials__jit_icall_mono_create_corlib_exception_1_llvm:
	.globl _p_25_plt_Microsoft_Maui_Essentials__jit_icall_mono_create_corlib_exception_1_llvm
.private_extern _p_25_plt_Microsoft_Maui_Essentials__jit_icall_mono_create_corlib_exception_1_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_create_corlib_exception_1
plt_Microsoft_Maui_Essentials__jit_icall_mono_create_corlib_exception_1:
_p_25:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 2186
_p_26_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_exception_llvm:
	.globl _p_26_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_exception_llvm
.private_extern _p_26_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_exception_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_exception
plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_exception:
_p_26:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #784]
br x16
.word 2189
_p_27_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator_llvm:
	.globl _p_27_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator_llvm
.private_extern _p_27_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_AsPlatformCallback_Microsoft_Maui_Authentication_IWebAuthenticator:
_p_27:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #792]
br x16
.word 2191
_p_28_plt_Microsoft_Maui_Essentials_Foundation_NSUrl_get_AbsoluteString_llvm:
	.globl _p_28_plt_Microsoft_Maui_Essentials_Foundation_NSUrl_get_AbsoluteString_llvm
.private_extern _p_28_plt_Microsoft_Maui_Essentials_Foundation_NSUrl_get_AbsoluteString_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUrl_get_AbsoluteString
plt_Microsoft_Maui_Essentials_Foundation_NSUrl_get_AbsoluteString:
_p_28:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 2193
_p_29_plt_Microsoft_Maui_Essentials_System_Uri__ctor_string_llvm:
	.globl _p_29_plt_Microsoft_Maui_Essentials_System_Uri__ctor_string_llvm
.private_extern _p_29_plt_Microsoft_Maui_Essentials_System_Uri__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Uri__ctor_string
plt_Microsoft_Maui_Essentials_System_Uri__ctor_string:
_p_29:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 2198
_p_30_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri_llvm:
	.globl _p_30_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri_llvm
.private_extern _p_30_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_System_Uri:
_p_30:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 2203
_p_31_plt_Microsoft_Maui_Essentials_Foundation_NSUserActivity_get_WebPageUrl_llvm:
	.globl _p_31_plt_Microsoft_Maui_Essentials_Foundation_NSUserActivity_get_WebPageUrl_llvm
.private_extern _p_31_plt_Microsoft_Maui_Essentials_Foundation_NSUserActivity_get_WebPageUrl_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserActivity_get_WebPageUrl
plt_Microsoft_Maui_Essentials_Foundation_NSUserActivity_get_WebPageUrl:
_p_31:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 2205
_p_32_plt_Microsoft_Maui_Essentials_System_DateTime_get_UtcNow_llvm:
	.globl _p_32_plt_Microsoft_Maui_Essentials_System_DateTime_get_UtcNow_llvm
.private_extern _p_32_plt_Microsoft_Maui_Essentials_System_DateTime_get_UtcNow_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTime_get_UtcNow
plt_Microsoft_Maui_Essentials_System_DateTime_get_UtcNow:
_p_32:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 2210
_p_33_plt_Microsoft_Maui_Essentials_System_DateTimeOffset__ctor_System_DateTime_llvm:
	.globl _p_33_plt_Microsoft_Maui_Essentials_System_DateTimeOffset__ctor_System_DateTime_llvm
.private_extern _p_33_plt_Microsoft_Maui_Essentials_System_DateTimeOffset__ctor_System_DateTime_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTimeOffset__ctor_System_DateTime
plt_Microsoft_Maui_Essentials_System_DateTimeOffset__ctor_System_DateTime:
_p_33:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 2215
_p_34_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_thread_finish_async_abort_llvm:
	.globl _p_34_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_thread_finish_async_abort_llvm
.private_extern _p_34_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_thread_finish_async_abort_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_thread_finish_async_abort
plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_thread_finish_async_abort:
_p_34:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 2220
_p_35_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool_llvm:
	.globl _p_35_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool_llvm
.private_extern _p_35_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool
plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_ParseQueryString_System_Uri_bool:
_p_35:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 2223
_p_36_plt_Microsoft_Maui_Essentials__jit_icall_llvm_resume_unwind_trampoline_llvm:
	.globl _p_36_plt_Microsoft_Maui_Essentials__jit_icall_llvm_resume_unwind_trampoline_llvm
.private_extern _p_36_plt_Microsoft_Maui_Essentials__jit_icall_llvm_resume_unwind_trampoline_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_llvm_resume_unwind_trampoline
plt_Microsoft_Maui_Essentials__jit_icall_llvm_resume_unwind_trampoline:
_p_36:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 2225
_p_37_plt_Microsoft_Maui_Essentials_Foundation_NSObject__ctor_llvm:
	.globl _p_37_plt_Microsoft_Maui_Essentials_Foundation_NSObject__ctor_llvm
.private_extern _p_37_plt_Microsoft_Maui_Essentials_Foundation_NSObject__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject__ctor
plt_Microsoft_Maui_Essentials_Foundation_NSObject__ctor:
_p_37:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 2228
_p_38_plt_Microsoft_Maui_Essentials_AuthenticationServices_ASAuthorization_GetCredential_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm:
	.globl _p_38_plt_Microsoft_Maui_Essentials_AuthenticationServices_ASAuthorization_GetCredential_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm
.private_extern _p_38_plt_Microsoft_Maui_Essentials_AuthenticationServices_ASAuthorization_GetCredential_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_AuthenticationServices_ASAuthorization_GetCredential_AuthenticationServices_ASAuthorizationAppleIdCredential
plt_Microsoft_Maui_Essentials_AuthenticationServices_ASAuthorization_GetCredential_AuthenticationServices_ASAuthorizationAppleIdCredential:
_p_38:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 2233
_p_39_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetResult_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm:
	.globl _p_39_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetResult_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm
.private_extern _p_39_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetResult_AuthenticationServices_ASAuthorizationAppleIdCredential_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetResult_AuthenticationServices_ASAuthorizationAppleIdCredential
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetResult_AuthenticationServices_ASAuthorizationAppleIdCredential:
_p_39:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 2245
_p_40_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_LocalizedDescription_llvm:
	.globl _p_40_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_LocalizedDescription_llvm
.private_extern _p_40_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_LocalizedDescription_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSError_get_LocalizedDescription
plt_Microsoft_Maui_Essentials_Foundation_NSError_get_LocalizedDescription:
_p_40:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 2256
_p_41_plt_Microsoft_Maui_Essentials_System_Exception__ctor_string_llvm:
	.globl _p_41_plt_Microsoft_Maui_Essentials_System_Exception__ctor_string_llvm
.private_extern _p_41_plt_Microsoft_Maui_Essentials_System_Exception__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Exception__ctor_string
plt_Microsoft_Maui_Essentials_System_Exception__ctor_string:
_p_41:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 2261
_p_42_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetException_System_Exception_llvm:
	.globl _p_42_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetException_System_Exception_llvm
.private_extern _p_42_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetException_System_Exception_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetException_System_Exception
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_AuthenticationServices_ASAuthorizationAppleIdCredential_TrySetException_System_Exception:
_p_42:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 2266
_p_43_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_AuthManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_43_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_AuthManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_43_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_AuthManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_AuthManager_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_AuthManager_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_43:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 2277
_p_44_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorizationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_44_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorizationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_44_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorizationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorizationController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorizationController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_44:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 2289
_p_45_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_RetainAndAutoreleaseNSObject_Foundation_NSObject_llvm:
	.globl _p_45_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_RetainAndAutoreleaseNSObject_Foundation_NSObject_llvm
.private_extern _p_45_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_RetainAndAutoreleaseNSObject_Foundation_NSObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_RetainAndAutoreleaseNSObject_Foundation_NSObject
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_RetainAndAutoreleaseNSObject_Foundation_NSObject:
_p_45:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 2301
_p_46_plt_Microsoft_Maui_Essentials_System_Runtime_InteropServices_GCHandle__ctor_object_System_Runtime_InteropServices_GCHandleType_llvm:
	.globl _p_46_plt_Microsoft_Maui_Essentials_System_Runtime_InteropServices_GCHandle__ctor_object_System_Runtime_InteropServices_GCHandleType_llvm
.private_extern _p_46_plt_Microsoft_Maui_Essentials_System_Runtime_InteropServices_GCHandle__ctor_object_System_Runtime_InteropServices_GCHandleType_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_InteropServices_GCHandle__ctor_object_System_Runtime_InteropServices_GCHandleType
plt_Microsoft_Maui_Essentials_System_Runtime_InteropServices_GCHandle__ctor_object_System_Runtime_InteropServices_GCHandleType:
_p_46:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 2306
_p_47_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_get_undeniable_exception_llvm:
	.globl _p_47_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_get_undeniable_exception_llvm
.private_extern _p_47_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_get_undeniable_exception_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_get_undeniable_exception
plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_get_undeniable_exception:
_p_47:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 2311
_p_48_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorization_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_48_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorization_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_48_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorization_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorization_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASAuthorization_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_48:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 2314
_p_49_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization_llvm:
	.globl _p_49_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization_llvm
.private_extern _p_49_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_AuthenticationServices_ASAuthorization:
_p_49:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 2326
_p_50_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSError_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_50_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSError_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_50_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSError_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSError_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSError_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_50:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 2328
_p_51_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError_llvm:
	.globl _p_51_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError_llvm
.private_extern _p_51_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager_DidComplete_AuthenticationServices_ASAuthorizationController_Foundation_NSError:
_p_51:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 2340
_p_52_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri_llvm:
	.globl _p_52_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri_llvm
.private_extern _p_52_plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri
plt_Microsoft_Maui_Essentials_Microsoft_Maui_WebUtils_CanHandleCallback_System_Uri_System_Uri:
_p_52:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 2342
_p_53_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissViewControllerAsync_bool_llvm:
	.globl _p_53_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissViewControllerAsync_bool_llvm
.private_extern _p_53_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissViewControllerAsync_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissViewControllerAsync_bool
plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissViewControllerAsync_bool:
_p_53:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 2344
_p_54_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder_llvm:
	.globl _p_54_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder_llvm
.private_extern _p_54_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorOptions_get_ResponseDecoder:
_p_54:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 2349
_p_55_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder_llvm:
	.globl _p_55_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder_llvm
.private_extern _p_55_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorResult__ctor_System_Uri_Microsoft_Maui_Authentication_IWebAuthenticatorResponseDecoder:
_p_55:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 2351
_p_56_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_Microsoft_Maui_Authentication_WebAuthenticatorResult_TrySetResult_Microsoft_Maui_Authentication_WebAuthenticatorResult_llvm:
	.globl _p_56_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_Microsoft_Maui_Authentication_WebAuthenticatorResult_TrySetResult_Microsoft_Maui_Authentication_WebAuthenticatorResult_llvm
.private_extern _p_56_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_Microsoft_Maui_Authentication_WebAuthenticatorResult_TrySetResult_Microsoft_Maui_Authentication_WebAuthenticatorResult_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_Microsoft_Maui_Authentication_WebAuthenticatorResult_TrySetResult_Microsoft_Maui_Authentication_WebAuthenticatorResult
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_TaskCompletionSource_1_Microsoft_Maui_Authentication_WebAuthenticatorResult_TrySetResult_Microsoft_Maui_Authentication_WebAuthenticatorResult:
_p_56:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 2353
_p_57_plt_Microsoft_Maui_Essentials_System_Console_WriteLine_object_llvm:
	.globl _p_57_plt_Microsoft_Maui_Essentials_System_Console_WriteLine_object_llvm
.private_extern _p_57_plt_Microsoft_Maui_Essentials_System_Console_WriteLine_object_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Console_WriteLine_object
plt_Microsoft_Maui_Essentials_System_Console_WriteLine_object:
_p_57:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 2364
_p_58_plt_Microsoft_Maui_Essentials_SafariServices_SFSafariViewControllerDelegate__ctor_llvm:
	.globl _p_58_plt_Microsoft_Maui_Essentials_SafariServices_SFSafariViewControllerDelegate__ctor_llvm
.private_extern _p_58_plt_Microsoft_Maui_Essentials_SafariServices_SFSafariViewControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_SafariServices_SFSafariViewControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_SafariServices_SFSafariViewControllerDelegate__ctor:
_p_58:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 2369
_p_59_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_handle_ObjCRuntime_NativeHandle_llvm:
	.globl _p_59_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_handle_ObjCRuntime_NativeHandle_llvm
.private_extern _p_59_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_handle_ObjCRuntime_NativeHandle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_handle_ObjCRuntime_NativeHandle
plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_handle_ObjCRuntime_NativeHandle:
_p_59:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 2374
_p_60_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_flags_Foundation_NSObject_Flags_llvm:
	.globl _p_60_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_flags_Foundation_NSObject_Flags_llvm
.private_extern _p_60_plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_flags_Foundation_NSObject_Flags_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_flags_Foundation_NSObject_Flags
plt_Microsoft_Maui_Essentials_Foundation_NSObject_set_flags_Foundation_NSObject_Flags:
_p_60:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 2379
_p_61_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_llvm:
	.globl _p_61_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_llvm
.private_extern _p_61_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor:
_p_61:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 2384
_p_62_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_62_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_62_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_62:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 2386
_p_63_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_SafariServices_SFSafariViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_63_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_SafariServices_SFSafariViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_63_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_SafariServices_SFSafariViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_SafariServices_SFSafariViewController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_SafariServices_SFSafariViewController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_63:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 2398
_p_64_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController_llvm:
	.globl _p_64_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController_llvm
.private_extern _p_64_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_SafariServices_SFSafariViewController:
_p_64:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 2410
_p_65_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_HasNSObject_intptr_llvm:
	.globl _p_65_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_HasNSObject_intptr_llvm
.private_extern _p_65_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_HasNSObject_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_HasNSObject_intptr
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_HasNSObject_intptr:
_p_65:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 2412
_p_66_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_object_new_specific_llvm:
	.globl _p_66_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_object_new_specific_llvm
.private_extern _p_66_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_object_new_specific_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_object_new_specific
plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_object_new_specific:
_p_66:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 2417
_p_67_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_67_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_67_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_67:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 2420
_p_68_plt_Microsoft_Maui_Essentials_ObjCRuntime_NativeObjectExtensions_GetHandle_ObjCRuntime_INativeObject_llvm:
	.globl _p_68_plt_Microsoft_Maui_Essentials_ObjCRuntime_NativeObjectExtensions_GetHandle_ObjCRuntime_INativeObject_llvm
.private_extern _p_68_plt_Microsoft_Maui_Essentials_ObjCRuntime_NativeObjectExtensions_GetHandle_ObjCRuntime_INativeObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_NativeObjectExtensions_GetHandle_ObjCRuntime_INativeObject
plt_Microsoft_Maui_Essentials_ObjCRuntime_NativeObjectExtensions_GetHandle_ObjCRuntime_INativeObject:
_p_68:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 2422
_p_69_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_69_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_69_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_69:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 2427
_p_70_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASWebAuthenticationSession_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_70_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASWebAuthenticationSession_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_70_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASWebAuthenticationSession_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASWebAuthenticationSession_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_AuthenticationServices_ASWebAuthenticationSession_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_70:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 2439
_p_71_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_get_IsVoiceOverRunning_llvm:
	.globl _p_71_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_get_IsVoiceOverRunning_llvm
.private_extern _p_71_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_get_IsVoiceOverRunning_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_get_IsVoiceOverRunning
plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_get_IsVoiceOverRunning:
_p_71:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 2451
_p_72_plt_Microsoft_Maui_Essentials_Foundation_NSString__ctor_string_llvm:
	.globl _p_72_plt_Microsoft_Maui_Essentials_Foundation_NSString__ctor_string_llvm
.private_extern _p_72_plt_Microsoft_Maui_Essentials_Foundation_NSString__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSString__ctor_string
plt_Microsoft_Maui_Essentials_Foundation_NSString__ctor_string:
_p_72:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 2456
_p_73_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_PostNotification_UIKit_UIAccessibilityPostNotification_Foundation_NSObject_llvm:
	.globl _p_73_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_PostNotification_UIKit_UIAccessibilityPostNotification_Foundation_NSObject_llvm
.private_extern _p_73_plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_PostNotification_UIKit_UIAccessibilityPostNotification_Foundation_NSObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_PostNotification_UIKit_UIAccessibilityPostNotification_Foundation_NSObject
plt_Microsoft_Maui_Essentials_UIKit_UIAccessibility_PostNotification_UIKit_UIAccessibilityPostNotification_Foundation_NSObject:
_p_73:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 2461
_p_74_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot_llvm:
	.globl _p_74_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot_llvm
.private_extern _p_74_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotExtensions_AsPlatform_Microsoft_Maui_Media_IScreenshot:
_p_74:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 2466
_p_75_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int_llvm:
	.globl _p_75_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int_llvm
.private_extern _p_75_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int:
_p_75:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 2468
_p_76_plt_Microsoft_Maui_Essentials_UIKit_UIImage_get_Size_llvm:
	.globl _p_76_plt_Microsoft_Maui_Essentials_UIKit_UIImage_get_Size_llvm
.private_extern _p_76_plt_Microsoft_Maui_Essentials_UIKit_UIImage_get_Size_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIImage_get_Size
plt_Microsoft_Maui_Essentials_UIKit_UIImage_get_Size:
_p_76:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 2470
_p_77_plt_Microsoft_Maui_Essentials_UIKit_UIImagePickerControllerDelegate__ctor_llvm:
	.globl _p_77_plt_Microsoft_Maui_Essentials_UIKit_UIImagePickerControllerDelegate__ctor_llvm
.private_extern _p_77_plt_Microsoft_Maui_Essentials_UIKit_UIImagePickerControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIImagePickerControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIImagePickerControllerDelegate__ctor:
_p_77:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 2475
_p_78_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_llvm:
	.globl _p_78_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_llvm
.private_extern _p_78_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor:
_p_78:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 2480
_p_79_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_79_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_79_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_79:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 2482
_p_80_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImagePickerController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_80_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImagePickerController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_80_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImagePickerController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImagePickerController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImagePickerController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_80:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 2494
_p_81_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSDictionary_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_81_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSDictionary_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_81_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSDictionary_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSDictionary_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSDictionary_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_81:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 2506
_p_82_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary_llvm:
	.globl _p_82_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary_llvm
.private_extern _p_82_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_UIKit_UIImagePickerController_Foundation_NSDictionary:
_p_82:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 2518
_p_83_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController_llvm:
	.globl _p_83_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController_llvm
.private_extern _p_83_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_UIKit_UIImagePickerController:
_p_83:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 2520
_p_84_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_84_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_84_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_84:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 2522
_p_85_plt_Microsoft_Maui_Essentials_PhotosUI_PHPickerViewControllerDelegate__ctor_llvm:
	.globl _p_85_plt_Microsoft_Maui_Essentials_PhotosUI_PHPickerViewControllerDelegate__ctor_llvm
.private_extern _p_85_plt_Microsoft_Maui_Essentials_PhotosUI_PHPickerViewControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_PhotosUI_PHPickerViewControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_PhotosUI_PHPickerViewControllerDelegate__ctor:
_p_85:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 2524
_p_86_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_llvm:
	.globl _p_86_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_llvm
.private_extern _p_86_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor:
_p_86:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 2529
_p_87_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_87_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_87_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_87:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1272]
br x16
.word 2531
_p_88_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_PhotosUI_PHPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_88_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_PhotosUI_PHPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_88_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_PhotosUI_PHPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_PhotosUI_PHPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_PhotosUI_PHPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_88:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1280]
br x16
.word 2543
_p_89_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_PhotosUI_PHPickerResult_ObjCRuntime_NativeHandle_llvm:
	.globl _p_89_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_PhotosUI_PHPickerResult_ObjCRuntime_NativeHandle_llvm
.private_extern _p_89_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_PhotosUI_PHPickerResult_ObjCRuntime_NativeHandle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_PhotosUI_PHPickerResult_ObjCRuntime_NativeHandle
plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_PhotosUI_PHPickerResult_ObjCRuntime_NativeHandle:
_p_89:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1288]
br x16
.word 2555
_p_90_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult___llvm:
	.globl _p_90_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult___llvm
.private_extern _p_90_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult__
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_PhotosUI_PHPickerViewController_PhotosUI_PHPickerResult__:
_p_90:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1296]
br x16
.word 2567
_p_91_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_91_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_91_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_91:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1304]
br x16
.word 2569
_p_92_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_bool_llvm:
	.globl _p_92_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_bool_llvm
.private_extern _p_92_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_bool
plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_bool:
_p_92:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1312]
br x16
.word 2571
_p_93_plt_Microsoft_Maui_Essentials_UIKit_UIAdaptivePresentationControllerDelegate__ctor_llvm:
	.globl _p_93_plt_Microsoft_Maui_Essentials_UIKit_UIAdaptivePresentationControllerDelegate__ctor_llvm
.private_extern _p_93_plt_Microsoft_Maui_Essentials_UIKit_UIAdaptivePresentationControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIAdaptivePresentationControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIAdaptivePresentationControllerDelegate__ctor:
_p_93:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1320]
br x16
.word 2576
_p_94_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_llvm:
	.globl _p_94_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_llvm
.private_extern _p_94_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor:
_p_94:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1328]
br x16
.word 2581
_p_95_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_95_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_95_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_95:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1336]
br x16
.word 2583
_p_96_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIPresentationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_96_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIPresentationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_96_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIPresentationController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIPresentationController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIPresentationController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_96:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1344]
br x16
.word 2595
_p_97_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm:
	.globl _p_97_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm
.private_extern _p_97_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController:
_p_97:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1352]
br x16
.word 2607
_p_98_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_98_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_98_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_98:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1360]
br x16
.word 2609
_p_99_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat__ctor_llvm:
	.globl _p_99_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat__ctor_llvm
.private_extern _p_99_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat__ctor:
_p_99:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1368]
br x16
.word 2611
_p_100_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Opaque_bool_llvm:
	.globl _p_100_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Opaque_bool_llvm
.private_extern _p_100_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Opaque_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Opaque_bool
plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Opaque_bool:
_p_100:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1376]
br x16
.word 2616
_p_101_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_Screen_llvm:
	.globl _p_101_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_Screen_llvm
.private_extern _p_101_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_Screen_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_Screen
plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_Screen:
_p_101:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1384]
br x16
.word 2621
_p_102_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Scale_llvm:
	.globl _p_102_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Scale_llvm
.private_extern _p_102_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Scale_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Scale
plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Scale:
_p_102:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1392]
br x16
.word 2626
_p_103_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Scale_System_Runtime_InteropServices_NFloat_llvm:
	.globl _p_103_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Scale_System_Runtime_InteropServices_NFloat_llvm
.private_extern _p_103_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Scale_System_Runtime_InteropServices_NFloat_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Scale_System_Runtime_InteropServices_NFloat
plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRendererFormat_set_Scale_System_Runtime_InteropServices_NFloat:
_p_103:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1400]
br x16
.word 2631
_p_104_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer__ctor_CoreGraphics_CGSize_UIKit_UIGraphicsImageRendererFormat_llvm:
	.globl _p_104_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer__ctor_CoreGraphics_CGSize_UIKit_UIGraphicsImageRendererFormat_llvm
.private_extern _p_104_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer__ctor_CoreGraphics_CGSize_UIKit_UIGraphicsImageRendererFormat_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer__ctor_CoreGraphics_CGSize_UIKit_UIGraphicsImageRendererFormat
plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer__ctor_CoreGraphics_CGSize_UIKit_UIGraphicsImageRendererFormat:
_p_104:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1408]
br x16
.word 2636
_p_105_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer_CreateImage_System_Action_1_UIKit_UIGraphicsImageRendererContext_llvm:
	.globl _p_105_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer_CreateImage_System_Action_1_UIKit_UIGraphicsImageRendererContext_llvm
.private_extern _p_105_plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer_CreateImage_System_Action_1_UIKit_UIGraphicsImageRendererContext_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer_CreateImage_System_Action_1_UIKit_UIGraphicsImageRendererContext
plt_Microsoft_Maui_Essentials_UIKit_UIGraphicsImageRenderer_CreateImage_System_Action_1_UIKit_UIGraphicsImageRendererContext:
_p_105:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1416]
br x16
.word 2641
_p_106_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage_llvm:
	.globl _p_106_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage_llvm
.private_extern _p_106_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotResult__ctor_UIKit_UIImage:
_p_106:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1424]
br x16
.word 2646
_p_107_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_Microsoft_Maui_Media_IScreenshotResult_Microsoft_Maui_Media_IScreenshotResult_llvm:
	.globl _p_107_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_Microsoft_Maui_Media_IScreenshotResult_Microsoft_Maui_Media_IScreenshotResult_llvm
.private_extern _p_107_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_Microsoft_Maui_Media_IScreenshotResult_Microsoft_Maui_Media_IScreenshotResult_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_Microsoft_Maui_Media_IScreenshotResult_Microsoft_Maui_Media_IScreenshotResult
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_Microsoft_Maui_Media_IScreenshotResult_Microsoft_Maui_Media_IScreenshotResult:
_p_107:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1432]
br x16
.word 2648
_p_108_plt_Microsoft_Maui_Essentials_UIKit_UIImage__ctor_llvm:
	.globl _p_108_plt_Microsoft_Maui_Essentials_UIKit_UIImage__ctor_llvm
.private_extern _p_108_plt_Microsoft_Maui_Essentials_UIKit_UIImage__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIImage__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIImage__ctor:
_p_108:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1440]
br x16
.word 2660
_p_109_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception__llvm:
	.globl _p_109_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception__llvm
.private_extern _p_109_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_ScreenshotImplementation_TryRender_UIKit_UIView_System_Exception_:
_p_109:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1448]
br x16
.word 2665
_p_110_plt_Microsoft_Maui_Essentials_System_ArgumentNullException_ThrowIfNull_object_string_llvm:
	.globl _p_110_plt_Microsoft_Maui_Essentials_System_ArgumentNullException_ThrowIfNull_object_string_llvm
.private_extern _p_110_plt_Microsoft_Maui_Essentials_System_ArgumentNullException_ThrowIfNull_object_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ArgumentNullException_ThrowIfNull_object_string
plt_Microsoft_Maui_Essentials_System_ArgumentNullException_ThrowIfNull_object_string:
_p_110:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1456]
br x16
.word 2667
_p_111_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_Window_llvm:
	.globl _p_111_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_Window_llvm
.private_extern _p_111_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_Window_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIView_get_Window
plt_Microsoft_Maui_Essentials_UIKit_UIView_get_Window:
_p_111:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1464]
br x16
.word 2672
_p_112_plt_Microsoft_Maui_Essentials_UIKit_UIView_DrawViewHierarchy_CoreGraphics_CGRect_bool_llvm:
	.globl _p_112_plt_Microsoft_Maui_Essentials_UIKit_UIView_DrawViewHierarchy_CoreGraphics_CGRect_bool_llvm
.private_extern _p_112_plt_Microsoft_Maui_Essentials_UIKit_UIView_DrawViewHierarchy_CoreGraphics_CGRect_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIView_DrawViewHierarchy_CoreGraphics_CGRect_bool
plt_Microsoft_Maui_Essentials_UIKit_UIView_DrawViewHierarchy_CoreGraphics_CGRect_bool:
_p_112:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1472]
br x16
.word 2677
_p_113_plt_Microsoft_Maui_Essentials_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm:
	.globl _p_113_plt_Microsoft_Maui_Essentials_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm
.private_extern _p_113_plt_Microsoft_Maui_Essentials_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object
plt_Microsoft_Maui_Essentials_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object:
_p_113:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1480]
br x16
.word 2682
_p_114_plt_Microsoft_Maui_Essentials_UIKit_UIDocumentPickerDelegate__ctor_llvm:
	.globl _p_114_plt_Microsoft_Maui_Essentials_UIKit_UIDocumentPickerDelegate__ctor_llvm
.private_extern _p_114_plt_Microsoft_Maui_Essentials_UIKit_UIDocumentPickerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIDocumentPickerDelegate__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIDocumentPickerDelegate__ctor:
_p_114:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1488]
br x16
.word 2691
_p_115_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_llvm:
	.globl _p_115_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_llvm
.private_extern _p_115_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor:
_p_115:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1496]
br x16
.word 2696
_p_116_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_116_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_116_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_116:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1504]
br x16
.word 2698
_p_117_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIDocumentPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_117_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIDocumentPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_117_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIDocumentPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIDocumentPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIDocumentPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_117:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1512]
br x16
.word 2710
_p_118_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController_llvm:
	.globl _p_118_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController_llvm
.private_extern _p_118_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_UIKit_UIDocumentPickerViewController:
_p_118:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1520]
br x16
.word 2722
_p_119_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_Foundation_NSUrl_ObjCRuntime_NativeHandle_llvm:
	.globl _p_119_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_Foundation_NSUrl_ObjCRuntime_NativeHandle_llvm
.private_extern _p_119_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_Foundation_NSUrl_ObjCRuntime_NativeHandle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_Foundation_NSUrl_ObjCRuntime_NativeHandle
plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_Foundation_NSUrl_ObjCRuntime_NativeHandle:
_p_119:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1528]
br x16
.word 2724
_p_120_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl___llvm:
	.globl _p_120_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl___llvm
.private_extern _p_120_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl__
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl__:
_p_120:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1536]
br x16
.word 2736
_p_121_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSUrl_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_121_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSUrl_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_121_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSUrl_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSUrl_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSUrl_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_121:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1544]
br x16
.word 2738
_p_122_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl_llvm:
	.globl _p_122_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl_llvm
.private_extern _p_122_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_UIKit_UIDocumentPickerViewController_Foundation_NSUrl:
_p_122:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1552]
br x16
.word 2750
_p_123_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_123_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_123_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_123:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1560]
br x16
.word 2752
_p_124_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory_llvm:
	.globl _p_124_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory_llvm
.private_extern _p_124_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_get_PlatformCacheDirectory:
_p_124:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1568]
br x16
.word 2754
_p_125_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string_llvm:
	.globl _p_125_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string_llvm
.private_extern _p_125_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformOpenAppPackageFileAsync_string:
_p_125:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1576]
br x16
.word 2756
_p_126_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string_llvm:
	.globl _p_126_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string_llvm
.private_extern _p_126_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemImplementation_PlatformAppPackageFileExistsAsync_string:
_p_126:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1584]
br x16
.word 2758
_p_127_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory_llvm:
	.globl _p_127_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory_llvm
.private_extern _p_127_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_GetDirectory_Foundation_NSSearchPathDirectory:
_p_127:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1592]
br x16
.word 2760
_p_128_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string_llvm:
	.globl _p_128_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string_llvm
.private_extern _p_128_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_PlatformGetFullAppPackageFilePath_string:
_p_128:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1600]
br x16
.word 2762
_p_129_plt_Microsoft_Maui_Essentials_System_IO_File_OpenRead_string_llvm:
	.globl _p_129_plt_Microsoft_Maui_Essentials_System_IO_File_OpenRead_string_llvm
.private_extern _p_129_plt_Microsoft_Maui_Essentials_System_IO_File_OpenRead_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_IO_File_OpenRead_string
plt_Microsoft_Maui_Essentials_System_IO_File_OpenRead_string:
_p_129:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1608]
br x16
.word 2764
_p_130_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_System_IO_Stream_System_IO_Stream_llvm:
	.globl _p_130_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_System_IO_Stream_System_IO_Stream_llvm
.private_extern _p_130_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_System_IO_Stream_System_IO_Stream_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_System_IO_Stream_System_IO_Stream
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_System_IO_Stream_System_IO_Stream:
_p_130:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1616]
br x16
.word 2769
_p_131_plt_Microsoft_Maui_Essentials_System_IO_File_Exists_string_llvm:
	.globl _p_131_plt_Microsoft_Maui_Essentials_System_IO_File_Exists_string_llvm
.private_extern _p_131_plt_Microsoft_Maui_Essentials_System_IO_File_Exists_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_IO_File_Exists_string
plt_Microsoft_Maui_Essentials_System_IO_File_Exists_string:
_p_131:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1624]
br x16
.word 2781
_p_132_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_bool_bool_llvm:
	.globl _p_132_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_bool_bool_llvm
.private_extern _p_132_plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_bool_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_bool_bool
plt_Microsoft_Maui_Essentials_System_Threading_Tasks_Task_FromResult_bool_bool:
_p_132:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1632]
br x16
.word 2786
_p_133_plt_Microsoft_Maui_Essentials_string_Replace_char_char_llvm:
	.globl _p_133_plt_Microsoft_Maui_Essentials_string_Replace_char_char_llvm
.private_extern _p_133_plt_Microsoft_Maui_Essentials_string_Replace_char_char_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Replace_char_char
plt_Microsoft_Maui_Essentials_string_Replace_char_char:
_p_133:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1640]
br x16
.word 2798
_p_134_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string_llvm:
	.globl _p_134_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string_llvm
.private_extern _p_134_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FileSystemUtils_NormalizePath_string:
_p_134:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1648]
br x16
.word 2803
_p_135_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_MainBundle_llvm:
	.globl _p_135_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_MainBundle_llvm
.private_extern _p_135_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_MainBundle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_MainBundle
plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_MainBundle:
_p_135:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1656]
br x16
.word 2805
_p_136_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_BundlePath_llvm:
	.globl _p_136_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_BundlePath_llvm
.private_extern _p_136_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_BundlePath_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_BundlePath
plt_Microsoft_Maui_Essentials_Foundation_NSBundle_get_BundlePath:
_p_136:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1664]
br x16
.word 2810
_p_137_plt_Microsoft_Maui_Essentials_System_IO_Path_Combine_string_string_llvm:
	.globl _p_137_plt_Microsoft_Maui_Essentials_System_IO_Path_Combine_string_string_llvm
.private_extern _p_137_plt_Microsoft_Maui_Essentials_System_IO_Path_Combine_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_IO_Path_Combine_string_string
plt_Microsoft_Maui_Essentials_System_IO_Path_Combine_string_string:
_p_137:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1672]
br x16
.word 2815
_p_138_plt_Microsoft_Maui_Essentials_Foundation_NSSearchPath_GetDirectories_Foundation_NSSearchPathDirectory_Foundation_NSSearchPathDomain_bool_llvm:
	.globl _p_138_plt_Microsoft_Maui_Essentials_Foundation_NSSearchPath_GetDirectories_Foundation_NSSearchPathDirectory_Foundation_NSSearchPathDomain_bool_llvm
.private_extern _p_138_plt_Microsoft_Maui_Essentials_Foundation_NSSearchPath_GetDirectories_Foundation_NSSearchPathDirectory_Foundation_NSSearchPathDomain_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSSearchPath_GetDirectories_Foundation_NSSearchPathDirectory_Foundation_NSSearchPathDomain_bool
plt_Microsoft_Maui_Essentials_Foundation_NSSearchPath_GetDirectories_Foundation_NSSearchPathDirectory_Foundation_NSSearchPathDomain_bool:
_p_138:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1680]
br x16
.word 2820
_p_139_plt_Microsoft_Maui_Essentials_string_Concat_string_string_string_llvm:
	.globl _p_139_plt_Microsoft_Maui_Essentials_string_Concat_string_string_string_llvm
.private_extern _p_139_plt_Microsoft_Maui_Essentials_string_Concat_string_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Concat_string_string_string
plt_Microsoft_Maui_Essentials_string_Concat_string_string_string:
_p_139:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 2825
_p_140_plt_Microsoft_Maui_Essentials__jit_icall_mini_init_method_rgctx_llvm:
	.globl _p_140_plt_Microsoft_Maui_Essentials__jit_icall_mini_init_method_rgctx_llvm
.private_extern _p_140_plt_Microsoft_Maui_Essentials__jit_icall_mini_init_method_rgctx_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mini_init_method_rgctx
plt_Microsoft_Maui_Essentials__jit_icall_mini_init_method_rgctx:
_p_140:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 2830
_p_141_plt_Microsoft_Maui_Essentials_System_MemoryExtensions__IndexOfg__IndexOfComparer_93_1_System_Type_System_ReadOnlySpan_1_System_Type_System_Type_System_Collections_Generic_IEqualityComparer_1_System_Type_llvm:
	.globl _p_141_plt_Microsoft_Maui_Essentials_System_MemoryExtensions__IndexOfg__IndexOfComparer_93_1_System_Type_System_ReadOnlySpan_1_System_Type_System_Type_System_Collections_Generic_IEqualityComparer_1_System_Type_llvm
.private_extern _p_141_plt_Microsoft_Maui_Essentials_System_MemoryExtensions__IndexOfg__IndexOfComparer_93_1_System_Type_System_ReadOnlySpan_1_System_Type_System_Type_System_Collections_Generic_IEqualityComparer_1_System_Type_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_MemoryExtensions__IndexOfg__IndexOfComparer_93_1_System_Type_System_ReadOnlySpan_1_System_Type_System_Type_System_Collections_Generic_IEqualityComparer_1_System_Type
plt_Microsoft_Maui_Essentials_System_MemoryExtensions__IndexOfg__IndexOfComparer_93_1_System_Type_System_ReadOnlySpan_1_System_Type_System_Type_System_Collections_Generic_IEqualityComparer_1_System_Type:
_p_141:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 2833
_p_142_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm:
	.globl _p_142_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
.private_extern _p_142_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int:
_p_142:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 2849
_p_143_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm:
	.globl _p_143_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
.private_extern _p_143_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string:
_p_143:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 2854
_p_144_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type_llvm:
	.globl _p_144_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type_llvm
.private_extern _p_144_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type:
_p_144:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 2859
_p_145_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm:
	.globl _p_145_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
.private_extern _p_145_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear:
_p_145:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 2875
_p_146_plt_Microsoft_Maui_Essentials_System_NotSupportedException__ctor_string_llvm:
	.globl _p_146_plt_Microsoft_Maui_Essentials_System_NotSupportedException__ctor_string_llvm
.private_extern _p_146_plt_Microsoft_Maui_Essentials_System_NotSupportedException__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_NotSupportedException__ctor_string
plt_Microsoft_Maui_Essentials_System_NotSupportedException__ctor_string:
_p_146:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 2880
_p_147_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_fast_llvm:
	.globl _p_147_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_fast_llvm
.private_extern _p_147_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_fast_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_fast
plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_fast:
_p_147:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 2885
_p_148_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string_llvm:
	.globl _p_148_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string_llvm
.private_extern _p_148_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_PreferencesImplementation_GetUserDefaults_string:
_p_148:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 2888
_p_149_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_Item_string_llvm:
	.globl _p_149_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_Item_string_llvm
.private_extern _p_149_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_Item_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_Item_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_Item_string:
_p_149:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 2890
_p_150_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_internal_llvm:
	.globl _p_150_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_internal_llvm
.private_extern _p_150_plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_internal_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_internal
plt_Microsoft_Maui_Essentials__jit_icall_mono_monitor_enter_v4_internal:
_p_150:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 2895
_p_151_plt_Microsoft_Maui_Essentials_System_Threading_Monitor_Exit_object_llvm:
	.globl _p_151_plt_Microsoft_Maui_Essentials_System_Threading_Monitor_Exit_object_llvm
.private_extern _p_151_plt_Microsoft_Maui_Essentials_System_Threading_Monitor_Exit_object_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Threading_Monitor_Exit_object
plt_Microsoft_Maui_Essentials_System_Threading_Monitor_Exit_object:
_p_151:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 2898
_p_152_plt_Microsoft_Maui_Essentials_string_IsNullOrWhiteSpace_string_llvm:
	.globl _p_152_plt_Microsoft_Maui_Essentials_string_IsNullOrWhiteSpace_string_llvm
.private_extern _p_152_plt_Microsoft_Maui_Essentials_string_IsNullOrWhiteSpace_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_IsNullOrWhiteSpace_string
plt_Microsoft_Maui_Essentials_string_IsNullOrWhiteSpace_string:
_p_152:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 2903
_p_153_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_StandardUserDefaults_llvm:
	.globl _p_153_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_StandardUserDefaults_llvm
.private_extern _p_153_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_StandardUserDefaults_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_StandardUserDefaults
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_get_StandardUserDefaults:
_p_153:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 2908
_p_154_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType_llvm:
	.globl _p_154_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType_llvm
.private_extern _p_154_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults__ctor_string_Foundation_NSUserDefaultsType:
_p_154:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 2913
_p_155_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions_llvm:
	.globl _p_155_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions_llvm
.private_extern _p_155_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_AsPlatform_Microsoft_Maui_ApplicationModel_IAppActions:
_p_155:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 2918
_p_156_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_UserInfo_llvm:
	.globl _p_156_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_UserInfo_llvm
.private_extern _p_156_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_UserInfo_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_UserInfo
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_UserInfo:
_p_156:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 2921
_p_157_plt_Microsoft_Maui_Essentials_Foundation_NSString_op_Explicit_string_llvm:
	.globl _p_157_plt_Microsoft_Maui_Essentials_Foundation_NSString_op_Explicit_string_llvm
.private_extern _p_157_plt_Microsoft_Maui_Essentials_Foundation_NSString_op_Explicit_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSString_op_Explicit_string
plt_Microsoft_Maui_Essentials_Foundation_NSString_op_Explicit_string:
_p_157:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 2926
_p_158_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_TryGetValue_Foundation_NSString_Foundation_NSObject__llvm:
	.globl _p_158_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_TryGetValue_Foundation_NSString_Foundation_NSObject__llvm
.private_extern _p_158_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_TryGetValue_Foundation_NSString_Foundation_NSObject__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_TryGetValue_Foundation_NSString_Foundation_NSObject_
plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_TryGetValue_Foundation_NSString_Foundation_NSObject_:
_p_158:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 2931
_p_159_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedTitle_llvm:
	.globl _p_159_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedTitle_llvm
.private_extern _p_159_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedTitle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedTitle
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedTitle:
_p_159:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 2942
_p_160_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedSubtitle_llvm:
	.globl _p_160_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedSubtitle_llvm
.private_extern _p_160_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedSubtitle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedSubtitle
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_LocalizedSubtitle:
_p_160:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 2947
_p_161_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string_llvm:
	.globl _p_161_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string_llvm
.private_extern _p_161_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppAction__ctor_string_string_string_string:
_p_161:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 2952
_p_162_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_AddWithResize_Foundation_NSString_llvm:
	.globl _p_162_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_AddWithResize_Foundation_NSString_llvm
.private_extern _p_162_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_AddWithResize_Foundation_NSString_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_AddWithResize_Foundation_NSString
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_AddWithResize_Foundation_NSString:
_p_162:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 2960
_p_163_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject_llvm:
	.globl _p_163_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject_llvm
.private_extern _p_163_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_AddWithResize_Foundation_NSObject:
_p_163:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 2982
_p_164_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutIcon_FromTemplateImageName_string_llvm:
	.globl _p_164_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutIcon_FromTemplateImageName_string_llvm
.private_extern _p_164_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutIcon_FromTemplateImageName_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutIcon_FromTemplateImageName_string
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutIcon_FromTemplateImageName_string:
_p_164:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 2999
_p_165_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_ToArray_llvm:
	.globl _p_165_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_ToArray_llvm
.private_extern _p_165_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_ToArray_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_ToArray
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSString_ToArray:
_p_165:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 3004
_p_166_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_ToArray_llvm:
	.globl _p_166_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_ToArray_llvm
.private_extern _p_166_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_ToArray_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_ToArray
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_Foundation_NSObject_ToArray:
_p_166:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 3015
_p_167_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject__ctor_Foundation_NSString___Foundation_NSObject___llvm:
	.globl _p_167_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject__ctor_Foundation_NSString___Foundation_NSObject___llvm
.private_extern _p_167_plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject__ctor_Foundation_NSString___Foundation_NSObject___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject__ctor_Foundation_NSString___Foundation_NSObject__
plt_Microsoft_Maui_Essentials_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject__ctor_Foundation_NSString___Foundation_NSObject__:
_p_167:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 3026
_p_168_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem__ctor_string_string_string_UIKit_UIApplicationShortcutIcon_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_llvm:
	.globl _p_168_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem__ctor_string_string_string_UIKit_UIApplicationShortcutIcon_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_llvm
.private_extern _p_168_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem__ctor_string_string_string_UIKit_UIApplicationShortcutIcon_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem__ctor_string_string_string_UIKit_UIApplicationShortcutIcon_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem__ctor_string_string_string_UIKit_UIApplicationShortcutIcon_Foundation_NSDictionary_2_Foundation_NSString_Foundation_NSObject:
_p_168:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 3037
_p_169_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread_llvm:
	.globl _p_169_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread_llvm
.private_extern _p_169_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_PlatformIsMainThread:
_p_169:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 3042
_p_170_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread_llvm:
	.globl _p_170_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread_llvm
.private_extern _p_170_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_get_IsMainThread:
_p_170:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 3045
_p_171_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action_llvm:
	.globl _p_171_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action_llvm
.private_extern _p_171_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_MainThread_PlatformBeginInvokeOnMainThread_System_Action:
_p_171:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 3048
_p_172_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_Current_llvm:
	.globl _p_172_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_Current_llvm
.private_extern _p_172_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_Current_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_Current
plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_Current:
_p_172:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 3051
_p_173_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_IsMainThread_llvm:
	.globl _p_173_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_IsMainThread_llvm
.private_extern _p_173_plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_IsMainThread_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_IsMainThread
plt_Microsoft_Maui_Essentials_Foundation_NSThread_get_IsMainThread:
_p_173:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 3056
_p_174_plt_Microsoft_Maui_Essentials_Foundation_NSRunLoop_get_Main_llvm:
	.globl _p_174_plt_Microsoft_Maui_Essentials_Foundation_NSRunLoop_get_Main_llvm
.private_extern _p_174_plt_Microsoft_Maui_Essentials_Foundation_NSRunLoop_get_Main_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSRunLoop_get_Main
plt_Microsoft_Maui_Essentials_Foundation_NSRunLoop_get_Main:
_p_174:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 3061
_p_175_plt_Microsoft_Maui_Essentials_Foundation_NSObject_BeginInvokeOnMainThread_System_Action_llvm:
	.globl _p_175_plt_Microsoft_Maui_Essentials_Foundation_NSObject_BeginInvokeOnMainThread_System_Action_llvm
.private_extern _p_175_plt_Microsoft_Maui_Essentials_Foundation_NSObject_BeginInvokeOnMainThread_System_Action_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_BeginInvokeOnMainThread_System_Action
plt_Microsoft_Maui_Essentials_Foundation_NSObject_BeginInvokeOnMainThread_System_Action:
_p_175:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 3066
_p_176_plt_Microsoft_Maui_Essentials_System_Delegate_Combine_System_Delegate_System_Delegate_llvm:
	.globl _p_176_plt_Microsoft_Maui_Essentials_System_Delegate_Combine_System_Delegate_System_Delegate_llvm
.private_extern _p_176_plt_Microsoft_Maui_Essentials_System_Delegate_Combine_System_Delegate_System_Delegate_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Delegate_Combine_System_Delegate_System_Delegate
plt_Microsoft_Maui_Essentials_System_Delegate_Combine_System_Delegate_System_Delegate:
_p_176:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 3071
_p_177_plt_Microsoft_Maui_Essentials_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm:
	.globl _p_177_plt_Microsoft_Maui_Essentials_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm
.private_extern _p_177_plt_Microsoft_Maui_Essentials_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
plt_Microsoft_Maui_Essentials_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
_p_177:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 3076
_p_178_plt_Microsoft_Maui_Essentials_System_Delegate_Remove_System_Delegate_System_Delegate_llvm:
	.globl _p_178_plt_Microsoft_Maui_Essentials_System_Delegate_Remove_System_Delegate_System_Delegate_llvm
.private_extern _p_178_plt_Microsoft_Maui_Essentials_System_Delegate_Remove_System_Delegate_System_Delegate_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Delegate_Remove_System_Delegate_System_Delegate
plt_Microsoft_Maui_Essentials_System_Delegate_Remove_System_Delegate_System_Delegate:
_p_178:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 3084
_p_179_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager_llvm:
	.globl _p_179_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager_llvm
.private_extern _p_179_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_GetAuthorizationStatus_CoreLocation_CLLocationManager:
_p_179:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 3089
_p_180_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_llvm:
	.globl _p_180_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_llvm
.private_extern _p_180_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor:
_p_180:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 3092
_p_181_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_181_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_181_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_181:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 3095
_p_182_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_CoreLocation_CLLocationManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_182_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_CoreLocation_CLLocationManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_182_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_CoreLocation_CLLocationManager_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_CoreLocation_CLLocationManager_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_CoreLocation_CLLocationManager_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_182:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 3107
_p_183_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm:
	.globl _p_183_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm
.private_extern _p_183_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus:
_p_183:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 3119
_p_184_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager_llvm:
	.globl _p_184_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager_llvm
.private_extern _p_184_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_CoreLocation_CLLocationManager:
_p_184:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 3122
_p_185_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_185_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_185_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_185:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 3125
_p_186_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary_llvm:
	.globl _p_186_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary_llvm
.private_extern _p_186_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_OpenUrl_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUrl_Foundation_NSDictionary:
_p_186:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 3128
_p_187_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler_llvm:
	.globl _p_187_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler_llvm
.private_extern _p_187_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorExtensions_ContinueUserActivity_Microsoft_Maui_Authentication_IWebAuthenticator_UIKit_UIApplication_Foundation_NSUserActivity_UIKit_UIApplicationRestorationHandler:
_p_187:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 3130
_p_188_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler_llvm:
	.globl _p_188_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler_llvm
.private_extern _p_188_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_PerformActionForShortcutItem_Microsoft_Maui_ApplicationModel_IAppActions_UIKit_UIApplication_UIKit_UIApplicationShortcutItem_UIKit_UIOperationHandler:
_p_188:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 3132
_p_189_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default_llvm:
	.globl _p_189_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default_llvm
.private_extern _p_189_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTracking_get_Default:
_p_189:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 3135
_p_190_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo_llvm:
	.globl _p_190_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo_llvm
.private_extern _p_190_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation__ctor_Microsoft_Maui_Storage_IPreferences_Microsoft_Maui_ApplicationModel_IAppInfo:
_p_190:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 3138
_p_191_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string_llvm:
	.globl _p_191_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string_llvm
.private_extern _p_191_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_get_Item_string:
_p_191:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 3141
_p_192_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_string_System_Collections_Generic_IEnumerable_1_string_llvm:
	.globl _p_192_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_string_System_Collections_Generic_IEnumerable_1_string_llvm
.private_extern _p_192_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_string_System_Collections_Generic_IEnumerable_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_string_System_Collections_Generic_IEnumerable_1_string
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_string_System_Collections_Generic_IEnumerable_1_string:
_p_192:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 3152
_p_193_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track_llvm:
	.globl _p_193_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track_llvm
.private_extern _p_193_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_Track:
_p_193:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 3164
_p_194_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking_llvm:
	.globl _p_194_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking_llvm
.private_extern _p_194_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_InitVersionTracking:
_p_194:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 3167
_p_195_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm:
	.globl _p_195_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm
.private_extern _p_195_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor_System_Collections_Generic_IEqualityComparer_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor_System_Collections_Generic_IEqualityComparer_1_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string__ctor_System_Collections_Generic_IEqualityComparer_1_string:
_p_195:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 3170
_p_196_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string_llvm:
	.globl _p_196_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string_llvm
.private_extern _p_196_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_ReadHistory_string:
_p_196:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 3181
_p_197_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string_llvm:
	.globl _p_197_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string_llvm
.private_extern _p_197_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToList_string_System_Collections_Generic_IEnumerable_1_string:
_p_197:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 3184
_p_198_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string_llvm:
	.globl _p_198_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string_llvm
.private_extern _p_198_plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_Dictionary_2_string_System_Collections_Generic_List_1_string_Add_string_System_Collections_Generic_List_1_string:
_p_198:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 3196
_p_199_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion_llvm:
	.globl _p_199_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion_llvm
.private_extern _p_199_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentVersion:
_p_199:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 3207
_p_200_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_Contains_string_llvm:
	.globl _p_200_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_Contains_string_llvm
.private_extern _p_200_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_Contains_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_Contains_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_Contains_string:
_p_200:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 3210
_p_201_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild_llvm:
	.globl _p_201_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild_llvm
.private_extern _p_201_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_CurrentBuild:
_p_201:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 3221
_p_202_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string_llvm:
	.globl _p_202_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string_llvm
.private_extern _p_202_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_WriteHistory_string_System_Collections_Generic_IEnumerable_1_string:
_p_202:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 3224
_p_203_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_RemoveAll_System_Predicate_1_string_llvm:
	.globl _p_203_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_RemoveAll_System_Predicate_1_string_llvm
.private_extern _p_203_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_RemoveAll_System_Predicate_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_RemoveAll_System_Predicate_1_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_RemoveAll_System_Predicate_1_string:
_p_203:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 3227
_p_204_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_AddWithResize_string_llvm:
	.globl _p_204_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_AddWithResize_string_llvm
.private_extern _p_204_plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_AddWithResize_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_AddWithResize_string
plt_Microsoft_Maui_Essentials_System_Collections_Generic_List_1_string_AddWithResize_string:
_p_204:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 3242
_p_205_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild_llvm:
	.globl _p_205_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild_llvm
.private_extern _p_205_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledBuild:
_p_205:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 3259
_p_206_plt_Microsoft_Maui_Essentials_string_op_Inequality_string_string_llvm:
	.globl _p_206_plt_Microsoft_Maui_Essentials_string_op_Inequality_string_string_llvm
.private_extern _p_206_plt_Microsoft_Maui_Essentials_string_op_Inequality_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_op_Inequality_string_string
plt_Microsoft_Maui_Essentials_string_op_Inequality_string_string:
_p_206:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 3262
_p_207_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion_llvm:
	.globl _p_207_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion_llvm
.private_extern _p_207_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_VersionTrackingImplementation_get_LastInstalledVersion:
_p_207:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 3267
_p_208_plt_Microsoft_Maui_Essentials_string_Split_char___System_StringSplitOptions_llvm:
	.globl _p_208_plt_Microsoft_Maui_Essentials_string_Split_char___System_StringSplitOptions_llvm
.private_extern _p_208_plt_Microsoft_Maui_Essentials_string_Split_char___System_StringSplitOptions_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Split_char___System_StringSplitOptions
plt_Microsoft_Maui_Essentials_string_Split_char___System_StringSplitOptions:
_p_208:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 3270
_p_209_plt_Microsoft_Maui_Essentials_string_Join_string_System_Collections_Generic_IEnumerable_1_string_llvm:
	.globl _p_209_plt_Microsoft_Maui_Essentials_string_Join_string_System_Collections_Generic_IEnumerable_1_string_llvm
.private_extern _p_209_plt_Microsoft_Maui_Essentials_string_Join_string_System_Collections_Generic_IEnumerable_1_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Join_string_System_Collections_Generic_IEnumerable_1_string
plt_Microsoft_Maui_Essentials_string_Join_string_System_Collections_Generic_IEnumerable_1_string:
_p_209:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 3275
_p_210_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string_llvm:
	.globl _p_210_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string_llvm
.private_extern _p_210_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_GetPrivatePreferencesSharedName_string:
_p_210:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 3280
_p_211_plt_Microsoft_Maui_Essentials_string_op_Equality_string_string_llvm:
	.globl _p_211_plt_Microsoft_Maui_Essentials_string_op_Equality_string_string_llvm
.private_extern _p_211_plt_Microsoft_Maui_Essentials_string_op_Equality_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_op_Equality_string_string
plt_Microsoft_Maui_Essentials_string_op_Equality_string_string:
_p_211:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 3282
_p_212_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_SharedApplication_llvm:
	.globl _p_212_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_SharedApplication_llvm
.private_extern _p_212_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_SharedApplication_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_SharedApplication
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_SharedApplication:
_p_212:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 3287
_p_213_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_Select_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction_System_Func_2_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_llvm:
	.globl _p_213_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_Select_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction_System_Func_2_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_llvm
.private_extern _p_213_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_Select_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction_System_Func_2_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_Select_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction_System_Func_2_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_Select_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_Microsoft_Maui_ApplicationModel_AppAction_System_Func_2_Microsoft_Maui_ApplicationModel_AppAction_UIKit_UIApplicationShortcutItem:
_p_213:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 3292
_p_214_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToArray_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_UIKit_UIApplicationShortcutItem_llvm:
	.globl _p_214_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToArray_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_UIKit_UIApplicationShortcutItem_llvm
.private_extern _p_214_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToArray_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_UIKit_UIApplicationShortcutItem_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToArray_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_UIKit_UIApplicationShortcutItem
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_ToArray_UIKit_UIApplicationShortcutItem_System_Collections_Generic_IEnumerable_1_UIKit_UIApplicationShortcutItem:
_p_214:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 3304
_p_215_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_set_ShortcutItems_UIKit_UIApplicationShortcutItem___llvm:
	.globl _p_215_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_set_ShortcutItems_UIKit_UIApplicationShortcutItem___llvm
.private_extern _p_215_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_set_ShortcutItems_UIKit_UIApplicationShortcutItem___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_set_ShortcutItems_UIKit_UIApplicationShortcutItem__
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_set_ShortcutItems_UIKit_UIApplicationShortcutItem__:
_p_215:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 3316
_p_216_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor_llvm:
	.globl _p_216_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor_llvm
.private_extern _p_216_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_FeatureNotSupportedException__ctor:
_p_216:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 3321
_p_217_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_Type_llvm:
	.globl _p_217_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_Type_llvm
.private_extern _p_217_plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_Type_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_Type
plt_Microsoft_Maui_Essentials_UIKit_UIApplicationShortcutItem_get_Type:
_p_217:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 3324
_p_218_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem_llvm:
	.globl _p_218_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem_llvm
.private_extern _p_218_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToAppAction_UIKit_UIApplicationShortcutItem:
_p_218:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 3329
_p_219_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction_llvm:
	.globl _p_219_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction_llvm
.private_extern _p_219_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppActionsExtensions_ToShortcutItem_Microsoft_Maui_ApplicationModel_AppAction:
_p_219:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 3332
_p_220_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_220_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_220_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_220:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 3335
_p_221_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm:
	.globl _p_221_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm
.private_extern _p_221_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_UIKit_UIPresentationController:
_p_221:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 3347
_p_222_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow_llvm:
	.globl _p_222_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow_llvm
.private_extern _p_222_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow:
_p_222:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 3350
_p_223_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_get_PresentedViewController_llvm:
	.globl _p_223_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_get_PresentedViewController_llvm
.private_extern _p_223_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_get_PresentedViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIViewController_get_PresentedViewController
plt_Microsoft_Maui_Essentials_UIKit_UIViewController_get_PresentedViewController:
_p_223:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 3353
_p_224_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows_llvm:
	.globl _p_224_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows_llvm
.private_extern _p_224_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows:
_p_224:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 3358
_p_225_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_llvm:
	.globl _p_225_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_llvm
.private_extern _p_225_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_Runtime_InteropServices_NFloat
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OrderByDescending_UIKit_UIWindow_System_Runtime_InteropServices_NFloat_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_System_Runtime_InteropServices_NFloat:
_p_225:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 3361
_p_226_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool_llvm:
	.globl _p_226_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool_llvm
.private_extern _p_226_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_System_Func_2_UIKit_UIWindow_bool:
_p_226:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 3373
_p_227_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_RootViewController_llvm:
	.globl _p_227_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_RootViewController_llvm
.private_extern _p_227_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_RootViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_RootViewController
plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_RootViewController:
_p_227:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 3385
_p_228_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_WindowLevel_llvm:
	.globl _p_228_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_WindowLevel_llvm
.private_extern _p_228_plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_WindowLevel_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_WindowLevel
plt_Microsoft_Maui_Essentials_UIKit_UIWindow_get_WindowLevel:
_p_228:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 3390
_p_229_plt_Microsoft_Maui_Essentials_UIKit_UIWindowLevel_get_Normal_llvm:
	.globl _p_229_plt_Microsoft_Maui_Essentials_UIKit_UIWindowLevel_get_Normal_llvm
.private_extern _p_229_plt_Microsoft_Maui_Essentials_UIKit_UIWindowLevel_get_Normal_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIWindowLevel_get_Normal
plt_Microsoft_Maui_Essentials_UIKit_UIWindowLevel_get_Normal:
_p_229:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 3395
_p_230_plt_Microsoft_Maui_Essentials_UIKit_UIScene_get_Session_llvm:
	.globl _p_230_plt_Microsoft_Maui_Essentials_UIKit_UIScene_get_Session_llvm
.private_extern _p_230_plt_Microsoft_Maui_Essentials_UIKit_UIScene_get_Session_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScene_get_Session
plt_Microsoft_Maui_Essentials_UIKit_UIScene_get_Session:
_p_230:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 3400
_p_231_plt_Microsoft_Maui_Essentials_UIKit_UISceneSession_get_Role_llvm:
	.globl _p_231_plt_Microsoft_Maui_Essentials_UIKit_UISceneSession_get_Role_llvm
.private_extern _p_231_plt_Microsoft_Maui_Essentials_UIKit_UISceneSession_get_Role_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UISceneSession_get_Role
plt_Microsoft_Maui_Essentials_UIKit_UISceneSession_get_Role:
_p_231:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 3405
_p_232_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string_llvm:
	.globl _p_232_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string_llvm
.private_extern _p_232_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_AppInfoImplementation_GetBundleValue_string:
_p_232:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 3410
_p_233_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_ObjectForInfoDictionary_string_llvm:
	.globl _p_233_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_ObjectForInfoDictionary_string_llvm
.private_extern _p_233_plt_Microsoft_Maui_Essentials_Foundation_NSBundle_ObjectForInfoDictionary_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSBundle_ObjectForInfoDictionary_string
plt_Microsoft_Maui_Essentials_Foundation_NSBundle_ObjectForInfoDictionary_string:
_p_233:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 3413
_p_234_plt_Microsoft_Maui_Essentials_System_OperatingSystem_IsIOSVersionAtLeast_int_int_int_llvm:
	.globl _p_234_plt_Microsoft_Maui_Essentials_System_OperatingSystem_IsIOSVersionAtLeast_int_int_int_llvm
.private_extern _p_234_plt_Microsoft_Maui_Essentials_System_OperatingSystem_IsIOSVersionAtLeast_int_int_int_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_OperatingSystem_IsIOSVersionAtLeast_int_int_int
plt_Microsoft_Maui_Essentials_System_OperatingSystem_IsIOSVersionAtLeast_int_int_int:
_p_234:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 3418
_p_235_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MainScreen_llvm:
	.globl _p_235_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MainScreen_llvm
.private_extern _p_235_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MainScreen_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MainScreen
plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MainScreen:
_p_235:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 3423
_p_236_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_TraitCollection_llvm:
	.globl _p_236_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_TraitCollection_llvm
.private_extern _p_236_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_TraitCollection_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_TraitCollection
plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_TraitCollection:
_p_236:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 3428
_p_237_plt_Microsoft_Maui_Essentials_UIKit_UITraitCollection_get_UserInterfaceStyle_llvm:
	.globl _p_237_plt_Microsoft_Maui_Essentials_UIKit_UITraitCollection_get_UserInterfaceStyle_llvm
.private_extern _p_237_plt_Microsoft_Maui_Essentials_UIKit_UITraitCollection_get_UserInterfaceStyle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UITraitCollection_get_UserInterfaceStyle
plt_Microsoft_Maui_Essentials_UIKit_UITraitCollection_get_UserInterfaceStyle:
_p_237:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 3433
_p_238_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool_llvm:
	.globl _p_238_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool_llvm
.private_extern _p_238_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_WindowStateManagerExtensions_GetCurrentUIWindow_Microsoft_Maui_ApplicationModel_IWindowStateManager_bool:
_p_238:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 3438
_p_239_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_EffectiveUserInterfaceLayoutDirection_llvm:
	.globl _p_239_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_EffectiveUserInterfaceLayoutDirection_llvm
.private_extern _p_239_plt_Microsoft_Maui_Essentials_UIKit_UIView_get_EffectiveUserInterfaceLayoutDirection_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIView_get_EffectiveUserInterfaceLayoutDirection
plt_Microsoft_Maui_Essentials_UIKit_UIView_get_EffectiveUserInterfaceLayoutDirection:
_p_239:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 3441
_p_240_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_UserInterfaceLayoutDirection_llvm:
	.globl _p_240_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_UserInterfaceLayoutDirection_llvm
.private_extern _p_240_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_UserInterfaceLayoutDirection_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_UserInterfaceLayoutDirection
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_UserInterfaceLayoutDirection:
_p_240:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2496]
br x16
.word 3446
_p_241_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_llvm:
	.globl _p_241_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_llvm
.private_extern _p_241_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor
plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor:
_p_241:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2504]
br x16
.word 3451
_p_242_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_ObjCRuntime_NativeHandle_llvm:
	.globl _p_242_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_ObjCRuntime_NativeHandle_llvm
.private_extern _p_242_plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_ObjCRuntime_NativeHandle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_ObjCRuntime_NativeHandle
plt_Microsoft_Maui_Essentials_ContactsUI_CNContactPickerDelegate__ctor_ObjCRuntime_NativeHandle:
_p_242:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2512]
br x16
.word 3456
_p_243_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissModalViewController_bool_llvm:
	.globl _p_243_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissModalViewController_bool_llvm
.private_extern _p_243_plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissModalViewController_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissModalViewController_bool
plt_Microsoft_Maui_Essentials_UIKit_UIViewController_DismissModalViewController_bool:
_p_243:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2520]
br x16
.word 3461
_p_244_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr_llvm:
	.globl _p_244_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr_llvm
.private_extern _p_244_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate__ctor_intptr:
_p_244:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2528]
br x16
.word 3466
_p_245_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_TryReleaseINativeObject_ObjCRuntime_INativeObject_llvm:
	.globl _p_245_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_TryReleaseINativeObject_ObjCRuntime_INativeObject_llvm
.private_extern _p_245_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_TryReleaseINativeObject_ObjCRuntime_INativeObject_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_TryReleaseINativeObject_ObjCRuntime_INativeObject
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_TryReleaseINativeObject_ObjCRuntime_INativeObject:
_p_245:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2536]
br x16
.word 3469
_p_246_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_246_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_246_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_246:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2544]
br x16
.word 3474
_p_247_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_ContactsUI_CNContactPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_247_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_ContactsUI_CNContactPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_247_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_ContactsUI_CNContactPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_ContactsUI_CNContactPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_ContactsUI_CNContactPickerViewController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_247:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2552]
br x16
.word 3486
_p_248_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController_llvm:
	.globl _p_248_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController_llvm
.private_extern _p_248_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_ContactsUI_CNContactPickerViewController:
_p_248:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2560]
br x16
.word 3498
_p_249_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContact_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_249_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContact_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_249_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContact_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContact_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContact_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_249:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2568]
br x16
.word 3501
_p_250_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact_llvm:
	.globl _p_250_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact_llvm
.private_extern _p_250_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_ContactsUI_CNContactPickerViewController_Contacts_CNContact:
_p_250:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2576]
br x16
.word 3513
_p_251_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContactProperty_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_251_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContactProperty_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_251_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContactProperty_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContactProperty_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Contacts_CNContactProperty_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_251:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2584]
br x16
.word 3516
_p_252_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty_llvm:
	.globl _p_252_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty_llvm
.private_extern _p_252_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_ContactsUI_CNContactPickerViewController_Contacts_CNContactProperty:
_p_252:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2592]
br x16
.word 3528
_p_253_plt_Microsoft_Maui_Essentials_UIKit_UIActivityItemSource__ctor_llvm:
	.globl _p_253_plt_Microsoft_Maui_Essentials_UIKit_UIActivityItemSource__ctor_llvm
.private_extern _p_253_plt_Microsoft_Maui_Essentials_UIKit_UIActivityItemSource__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIActivityItemSource__ctor
plt_Microsoft_Maui_Essentials_UIKit_UIActivityItemSource__ctor:
_p_253:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2600]
br x16
.word 3531
_p_254_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata__ctor_llvm:
	.globl _p_254_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata__ctor_llvm
.private_extern _p_254_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata__ctor
plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata__ctor:
_p_254:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2608]
br x16
.word 3536
_p_255_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Url_Foundation_NSUrl_llvm:
	.globl _p_255_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Url_Foundation_NSUrl_llvm
.private_extern _p_255_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Url_Foundation_NSUrl_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Url_Foundation_NSUrl
plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Url_Foundation_NSUrl:
_p_255:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2616]
br x16
.word 3541
_p_256_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Title_string_llvm:
	.globl _p_256_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Title_string_llvm
.private_extern _p_256_plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Title_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Title_string
plt_Microsoft_Maui_Essentials_LinkPresentation_LPLinkMetadata_set_Title_string:
_p_256:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2624]
br x16
.word 3546
_p_257_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_257_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_257_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_257:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2632]
br x16
.word 3551
_p_258_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIActivityViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_258_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIActivityViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_258_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIActivityViewController_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIActivityViewController_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_UIKit_UIActivityViewController_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_258:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2640]
br x16
.word 3563
_p_259_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSString_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_259_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSString_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_259_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSString_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSString_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Foundation_NSString_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_259:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2648]
br x16
.word 3575
_p_260_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController_llvm:
	.globl _p_260_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController_llvm
.private_extern _p_260_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_UIKit_UIActivityViewController:
_p_260:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2656]
br x16
.word 3587
_p_261_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Bounds_llvm:
	.globl _p_261_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Bounds_llvm
.private_extern _p_261_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Bounds_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Bounds
plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_Bounds:
_p_261:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2664]
br x16
.word 3590
_p_262_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MaximumFramesPerSecond_llvm:
	.globl _p_262_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MaximumFramesPerSecond_llvm
.private_extern _p_262_plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MaximumFramesPerSecond_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MaximumFramesPerSecond
plt_Microsoft_Maui_Essentials_UIKit_UIScreen_get_MaximumFramesPerSecond:
_p_262:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2672]
br x16
.word 3595
_p_263_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation_llvm:
	.globl _p_263_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation_llvm
.private_extern _p_263_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateOrientation:
_p_263:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2680]
br x16
.word 3600
_p_264_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation_llvm:
	.globl _p_264_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation_llvm
.private_extern _p_264_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementation_CalculateRotation:
_p_264:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2688]
br x16
.word 3603
_p_265_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single_llvm:
	.globl _p_265_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single_llvm
.private_extern _p_265_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_single:
_p_265:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2696]
br x16
.word 3606
_p_266_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_get_DefaultCenter_llvm:
	.globl _p_266_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_get_DefaultCenter_llvm
.private_extern _p_266_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_get_DefaultCenter_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_get_DefaultCenter
plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_get_DefaultCenter:
_p_266:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2704]
br x16
.word 3609
_p_267_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_DidChangeStatusBarOrientationNotification_llvm:
	.globl _p_267_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_DidChangeStatusBarOrientationNotification_llvm
.private_extern _p_267_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_DidChangeStatusBarOrientationNotification_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_DidChangeStatusBarOrientationNotification
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_DidChangeStatusBarOrientationNotification:
_p_267:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2712]
br x16
.word 3614
_p_268_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_AddObserver_Foundation_NSString_System_Action_1_Foundation_NSNotification_llvm:
	.globl _p_268_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_AddObserver_Foundation_NSString_System_Action_1_Foundation_NSNotification_llvm
.private_extern _p_268_plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_AddObserver_Foundation_NSString_System_Action_1_Foundation_NSNotification_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_AddObserver_Foundation_NSString_System_Action_1_Foundation_NSNotification
plt_Microsoft_Maui_Essentials_Foundation_NSNotificationCenter_AddObserver_Foundation_NSString_System_Action_1_Foundation_NSNotification:
_p_268:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2720]
br x16
.word 3619
_p_269_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_llvm:
	.globl _p_269_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_llvm
.private_extern _p_269_plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose
plt_Microsoft_Maui_Essentials_Foundation_NSObject_Dispose:
_p_269:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2728]
br x16
.word 3624
_p_270_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_llvm:
	.globl _p_270_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_llvm
.private_extern _p_270_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged:
_p_270:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2736]
br x16
.word 3629
_p_271_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_StatusBarOrientation_llvm:
	.globl _p_271_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_StatusBarOrientation_llvm
.private_extern _p_271_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_StatusBarOrientation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_StatusBarOrientation
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_StatusBarOrientation:
_p_271:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2744]
br x16
.word 3632
_p_272_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm:
	.globl _p_272_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
.private_extern _p_272_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_add_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs:
_p_272:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2752]
br x16
.word 3637
_p_273_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo_llvm:
	.globl _p_273_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo_llvm
.private_extern _p_273_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_get_MainDisplayInfo:
_p_273:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2760]
br x16
.word 3640
_p_274_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo_llvm:
	.globl _p_274_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo_llvm
.private_extern _p_274_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_SetCurrent_Microsoft_Maui_Devices_DisplayInfo:
_p_274:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2768]
br x16
.word 3643
_p_275_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm:
	.globl _p_275_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
.private_extern _p_275_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_remove_MainDisplayInfoChangedInternal_System_EventHandler_1_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs:
_p_275:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2776]
br x16
.word 3646
_p_276_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo_llvm:
	.globl _p_276_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo_llvm
.private_extern _p_276_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DisplayInfo_Equals_Microsoft_Maui_Devices_DisplayInfo:
_p_276:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2784]
br x16
.word 3649
_p_277_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm:
	.globl _p_277_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
.private_extern _p_277_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceDisplayImplementationBase_OnMainDisplayInfoChanged_Microsoft_Maui_Devices_DisplayInfoChangedEventArgs:
_p_277:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2792]
br x16
.word 3652
_p_278_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string_llvm:
	.globl _p_278_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string_llvm
.private_extern _p_278_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_string:
_p_278:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2800]
br x16
.word 3655
_p_279_plt_Microsoft_Maui_Essentials_string_Equals_string_string_System_StringComparison_llvm:
	.globl _p_279_plt_Microsoft_Maui_Essentials_string_Equals_string_string_System_StringComparison_llvm
.private_extern _p_279_plt_Microsoft_Maui_Essentials_string_Equals_string_string_System_StringComparison_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_Equals_string_string_System_StringComparison
plt_Microsoft_Maui_Essentials_string_Equals_string_string_System_StringComparison:
_p_279:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2808]
br x16
.word 3658
_p_280_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom_llvm:
	.globl _p_280_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom_llvm
.private_extern _p_280_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom_Equals_Microsoft_Maui_Devices_DeviceIdiom:
_p_280:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2816]
br x16
.word 3663
_p_281_plt_Microsoft_Maui_Essentials_string_GetHashCode_System_StringComparison_llvm:
	.globl _p_281_plt_Microsoft_Maui_Essentials_string_GetHashCode_System_StringComparison_llvm
.private_extern _p_281_plt_Microsoft_Maui_Essentials_string_GetHashCode_System_StringComparison_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_string_GetHashCode_System_StringComparison
plt_Microsoft_Maui_Essentials_string_GetHashCode_System_StringComparison:
_p_281:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2824]
br x16
.word 3666
_p_282_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string_llvm:
	.globl _p_282_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string_llvm
.private_extern _p_282_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DeviceIdiom__ctor_string:
_p_282:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2832]
br x16
.word 3671
_p_283_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string_llvm:
	.globl _p_283_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string_llvm
.private_extern _p_283_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform__ctor_string:
_p_283:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2840]
br x16
.word 3674
_p_284_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string_llvm:
	.globl _p_284_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string_llvm
.private_extern _p_284_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_string:
_p_284:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2848]
br x16
.word 3677
_p_285_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform_llvm:
	.globl _p_285_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform_llvm
.private_extern _p_285_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_DevicePlatform_Equals_Microsoft_Maui_Devices_DevicePlatform:
_p_285:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2856]
br x16
.word 3680
_p_286_plt_Microsoft_Maui_Essentials_System_Enum_Equals_object_llvm:
	.globl _p_286_plt_Microsoft_Maui_Essentials_System_Enum_Equals_object_llvm
.private_extern _p_286_plt_Microsoft_Maui_Essentials_System_Enum_Equals_object_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Enum_Equals_object
plt_Microsoft_Maui_Essentials_System_Enum_Equals_object:
_p_286:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2864]
br x16
.word 3683
_p_287_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_llvm:
	.globl _p_287_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_llvm
.private_extern _p_287_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation
plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation__ctor_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation:
_p_287:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2872]
br x16
.word 3688
_p_288_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_GetHashCode_llvm:
	.globl _p_288_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_GetHashCode_llvm
.private_extern _p_288_plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_GetHashCode_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_GetHashCode
plt_Microsoft_Maui_Essentials_System_ValueTuple_5_double_double_double_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayRotation_GetHashCode:
_p_288:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2880]
br x16
.word 3716
_p_289_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm:
	.globl _p_289_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
.private_extern _p_289_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string:
_p_289:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2888]
br x16
.word 3733
_p_290_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_double_double_llvm:
	.globl _p_290_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_double_double_llvm
.private_extern _p_290_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_double_double_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_double_double
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_double_double:
_p_290:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2896]
br x16
.word 3738
_p_291_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayOrientation_llvm:
	.globl _p_291_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayOrientation_llvm
.private_extern _p_291_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayOrientation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayOrientation
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayOrientation_Microsoft_Maui_Devices_DisplayOrientation:
_p_291:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2904]
br x16
.word 3750
_p_292_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayRotation_Microsoft_Maui_Devices_DisplayRotation_llvm:
	.globl _p_292_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayRotation_Microsoft_Maui_Devices_DisplayRotation_llvm
.private_extern _p_292_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayRotation_Microsoft_Maui_Devices_DisplayRotation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayRotation_Microsoft_Maui_Devices_DisplayRotation
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_Microsoft_Maui_Devices_DisplayRotation_Microsoft_Maui_Devices_DisplayRotation:
_p_292:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2912]
br x16
.word 3762
_p_293_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_CurrentDevice_llvm:
	.globl _p_293_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_CurrentDevice_llvm
.private_extern _p_293_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_CurrentDevice_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_CurrentDevice
plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_CurrentDevice:
_p_293:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2920]
br x16
.word 3774
_p_294_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_UserInterfaceIdiom_llvm:
	.globl _p_294_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_UserInterfaceIdiom_llvm
.private_extern _p_294_plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_UserInterfaceIdiom_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_UserInterfaceIdiom
plt_Microsoft_Maui_Essentials_UIKit_UIDevice_get_UserInterfaceIdiom:
_p_294:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2928]
br x16
.word 3779
_p_295_plt_Microsoft_Maui_Essentials_Foundation_NSObject_get_Handle_llvm:
	.globl _p_295_plt_Microsoft_Maui_Essentials_Foundation_NSObject_get_Handle_llvm
.private_extern _p_295_plt_Microsoft_Maui_Essentials_Foundation_NSObject_get_Handle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSObject_get_Handle
plt_Microsoft_Maui_Essentials_Foundation_NSObject_get_Handle:
_p_295:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2936]
br x16
.word 3784
_p_296_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm:
	.globl _p_296_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm
.private_extern _p_296_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr:
_p_296:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2944]
br x16
.word 3789
_p_297_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManager_get_Status_llvm:
	.globl _p_297_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManager_get_Status_llvm
.private_extern _p_297_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManager_get_Status_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManager_get_Status
plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManager_get_Status:
_p_297:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2952]
br x16
.word 3792
_p_298_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation_llvm:
	.globl _p_298_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation_llvm
.private_extern _p_298_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_LastOrDefault_CoreLocation_CLLocation_System_Collections_Generic_IEnumerable_1_CoreLocation_CLLocation:
_p_298:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2960]
br x16
.word 3797
_p_299_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManagerDelegate__ctor_llvm:
	.globl _p_299_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManagerDelegate__ctor_llvm
.private_extern _p_299_plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManagerDelegate__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManagerDelegate__ctor
plt_Microsoft_Maui_Essentials_CoreLocation_CLLocationManagerDelegate__ctor:
_p_299:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2968]
br x16
.word 3809
_p_300_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_llvm:
	.globl _p_300_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_llvm
.private_extern _p_300_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor:
_p_300:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2976]
br x16
.word 3814
_p_301_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_SingleLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_301_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_SingleLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_301_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_SingleLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_SingleLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_SingleLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_301:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2984]
br x16
.word 3817
_p_302_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_CoreLocation_CLLocation_ObjCRuntime_NativeHandle_llvm:
	.globl _p_302_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_CoreLocation_CLLocation_ObjCRuntime_NativeHandle_llvm
.private_extern _p_302_plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_CoreLocation_CLLocation_ObjCRuntime_NativeHandle_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_CoreLocation_CLLocation_ObjCRuntime_NativeHandle
plt_Microsoft_Maui_Essentials_Foundation_NSArray_ArrayFromHandle_CoreLocation_CLLocation_ObjCRuntime_NativeHandle:
_p_302:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #2992]
br x16
.word 3829
_p_303_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm:
	.globl _p_303_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm
.private_extern _p_303_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__:
_p_303:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3000]
br x16
.word 3841
_p_304_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_304_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_304_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_304:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3008]
br x16
.word 3844
_p_305_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_Code_llvm:
	.globl _p_305_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_Code_llvm
.private_extern _p_305_plt_Microsoft_Maui_Essentials_Foundation_NSError_get_Code_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSError_get_Code
plt_Microsoft_Maui_Essentials_Foundation_NSError_get_Code:
_p_305:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3016]
br x16
.word 3847
_p_306_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_llvm:
	.globl _p_306_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_llvm
.private_extern _p_306_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor:
_p_306:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3024]
br x16
.word 3852
_p_307_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm:
	.globl _p_307_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
.private_extern _p_307_plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool
plt_Microsoft_Maui_Essentials_ObjCRuntime_Runtime_GetNSObject_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_intptr_intptr_System_RuntimeMethodHandle_bool:
_p_307:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3032]
br x16
.word 3855
_p_308_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm:
	.globl _p_308_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm
.private_extern _p_308_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation___llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_CoreLocation_CLLocationManager_CoreLocation_CLLocation__:
_p_308:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3040]
br x16
.word 3867
_p_309_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError_llvm:
	.globl _p_309_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError_llvm
.private_extern _p_309_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_CoreLocation_CLLocationManager_Foundation_NSError:
_p_309:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3048]
br x16
.word 3870
_p_310_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm:
	.globl _p_310_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm
.private_extern _p_310_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_CoreLocation_CLLocationManager_CoreLocation_CLAuthorizationStatus:
_p_310:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3056]
br x16
.word 3873
_p_311_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm:
	.globl _p_311_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
.private_extern _p_311_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_ObjCRuntime_IManagedRegistrar:
_p_311:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3064]
br x16
.word 3876
_p_312_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_interruption_checkpoint_llvm:
	.globl _p_312_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_interruption_checkpoint_llvm
.private_extern _p_312_plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_interruption_checkpoint_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_interruption_checkpoint
plt_Microsoft_Maui_Essentials__jit_icall_mono_thread_interruption_checkpoint:
_p_312:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3072]
br x16
.word 3879
_p_313_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_rethrow_exception_llvm:
	.globl _p_313_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_rethrow_exception_llvm
.private_extern _p_313_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_rethrow_exception_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_rethrow_exception
plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_rethrow_exception:
_p_313:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3080]
br x16
.word 3882
_p_314_plt_Microsoft_Maui_Essentials__jit_icall_mono_string_to_utf8str_llvm:
	.globl _p_314_plt_Microsoft_Maui_Essentials__jit_icall_mono_string_to_utf8str_llvm
.private_extern _p_314_plt_Microsoft_Maui_Essentials__jit_icall_mono_string_to_utf8str_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_string_to_utf8str
plt_Microsoft_Maui_Essentials__jit_icall_mono_string_to_utf8str:
_p_314:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3088]
br x16
.word 3884
_p_315_plt_Microsoft_Maui_Essentials__jit_icall_monoeg_g_free_llvm:
	.globl _p_315_plt_Microsoft_Maui_Essentials__jit_icall_monoeg_g_free_llvm
.private_extern _p_315_plt_Microsoft_Maui_Essentials__jit_icall_monoeg_g_free_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_monoeg_g_free
plt_Microsoft_Maui_Essentials__jit_icall_monoeg_g_free:
_p_315:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3096]
br x16
.word 3887
_p_316_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_string_new_wrapper_llvm:
	.globl _p_316_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_string_new_wrapper_llvm
.private_extern _p_316_plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_string_new_wrapper_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_string_new_wrapper
plt_Microsoft_Maui_Essentials__jit_icall_ves_icall_string_new_wrapper:
_p_316:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3104]
br x16
.word 3889
_p_317_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsPNG_llvm:
	.globl _p_317_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsPNG_llvm
.private_extern _p_317_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsPNG_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsPNG
plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsPNG:
_p_317:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3112]
br x16
.word 3892
_p_318_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsJPEG_System_Runtime_InteropServices_NFloat_llvm:
	.globl _p_318_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsJPEG_System_Runtime_InteropServices_NFloat_llvm
.private_extern _p_318_plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsJPEG_System_Runtime_InteropServices_NFloat_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsJPEG_System_Runtime_InteropServices_NFloat
plt_Microsoft_Maui_Essentials_UIKit_UIImage_AsJPEG_System_Runtime_InteropServices_NFloat:
_p_318:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3120]
br x16
.word 3897
_p_319_plt_Microsoft_Maui_Essentials_Foundation_NSData_AsStream_llvm:
	.globl _p_319_plt_Microsoft_Maui_Essentials_Foundation_NSData_AsStream_llvm
.private_extern _p_319_plt_Microsoft_Maui_Essentials_Foundation_NSData_AsStream_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSData_AsStream
plt_Microsoft_Maui_Essentials_Foundation_NSData_AsStream:
_p_319:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3128]
br x16
.word 3902
_p_320_plt_Microsoft_Maui_Essentials_System_IO_Stream_CopyTo_System_IO_Stream_llvm:
	.globl _p_320_plt_Microsoft_Maui_Essentials_System_IO_Stream_CopyTo_System_IO_Stream_llvm
.private_extern _p_320_plt_Microsoft_Maui_Essentials_System_IO_Stream_CopyTo_System_IO_Stream_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_IO_Stream_CopyTo_System_IO_Stream
plt_Microsoft_Maui_Essentials_System_IO_Stream_CopyTo_System_IO_Stream:
_p_320:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3136]
br x16
.word 3907
_p_321_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF_llvm:
	.globl _p_321_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF_llvm
.private_extern _p_321_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_REF:
_p_321:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3144]
br x16
.word 3912
_p_322_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_RemoveObject_string_llvm:
	.globl _p_322_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_RemoveObject_string_llvm
.private_extern _p_322_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_RemoveObject_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_RemoveObject_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_RemoveObject_string:
_p_322:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3152]
br x16
.word 3925
_p_323_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetString_string_string_llvm:
	.globl _p_323_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetString_string_string_llvm
.private_extern _p_323_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetString_string_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetString_string_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetString_string_string:
_p_323:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3160]
br x16
.word 3930
_p_324_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetInt_intptr_string_llvm:
	.globl _p_324_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetInt_intptr_string_llvm
.private_extern _p_324_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetInt_intptr_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetInt_intptr_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetInt_intptr_string:
_p_324:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3168]
br x16
.word 3935
_p_325_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetBool_bool_string_llvm:
	.globl _p_325_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetBool_bool_string_llvm
.private_extern _p_325_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetBool_bool_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetBool_bool_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetBool_bool_string:
_p_325:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3176]
br x16
.word 3940
_p_326_plt_Microsoft_Maui_Essentials_System_Convert_ToString_object_System_IFormatProvider_llvm:
	.globl _p_326_plt_Microsoft_Maui_Essentials_System_Convert_ToString_object_System_IFormatProvider_llvm
.private_extern _p_326_plt_Microsoft_Maui_Essentials_System_Convert_ToString_object_System_IFormatProvider_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Convert_ToString_object_System_IFormatProvider
plt_Microsoft_Maui_Essentials_System_Convert_ToString_object_System_IFormatProvider:
_p_326:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3184]
br x16
.word 3945
_p_327_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetDouble_double_string_llvm:
	.globl _p_327_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetDouble_double_string_llvm
.private_extern _p_327_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetDouble_double_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetDouble_double_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetDouble_double_string:
_p_327:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3192]
br x16
.word 3950
_p_328_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetFloat_single_string_llvm:
	.globl _p_328_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetFloat_single_string_llvm
.private_extern _p_328_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetFloat_single_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetFloat_single_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_SetFloat_single_string:
_p_328:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3200]
br x16
.word 3955
_p_329_plt_Microsoft_Maui_Essentials_System_DateTime_ToBinary_llvm:
	.globl _p_329_plt_Microsoft_Maui_Essentials_System_DateTime_ToBinary_llvm
.private_extern _p_329_plt_Microsoft_Maui_Essentials_System_DateTime_ToBinary_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTime_ToBinary
plt_Microsoft_Maui_Essentials_System_DateTime_ToBinary:
_p_329:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3208]
br x16
.word 3960
_p_330_plt_Microsoft_Maui_Essentials_System_Convert_ToString_long_System_IFormatProvider_llvm:
	.globl _p_330_plt_Microsoft_Maui_Essentials_System_Convert_ToString_long_System_IFormatProvider_llvm
.private_extern _p_330_plt_Microsoft_Maui_Essentials_System_Convert_ToString_long_System_IFormatProvider_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Convert_ToString_long_System_IFormatProvider
plt_Microsoft_Maui_Essentials_System_Convert_ToString_long_System_IFormatProvider:
_p_330:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3216]
br x16
.word 3965
_p_331_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_ToString_string_llvm:
	.globl _p_331_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_ToString_string_llvm
.private_extern _p_331_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_ToString_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTimeOffset_ToString_string
plt_Microsoft_Maui_Essentials_System_DateTimeOffset_ToString_string:
_p_331:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3224]
br x16
.word 3970
_p_332_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_corlib_exception_llvm:
	.globl _p_332_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_corlib_exception_llvm
.private_extern _p_332_plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_corlib_exception_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_corlib_exception
plt_Microsoft_Maui_Essentials__jit_icall_mono_arch_throw_corlib_exception:
_p_332:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3232]
br x16
.word 3975
_p_333_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_IntForKey_string_llvm:
	.globl _p_333_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_IntForKey_string_llvm
.private_extern _p_333_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_IntForKey_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_IntForKey_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_IntForKey_string:
_p_333:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3240]
br x16
.word 3977
_p_334_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_BoolForKey_string_llvm:
	.globl _p_334_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_BoolForKey_string_llvm
.private_extern _p_334_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_BoolForKey_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_BoolForKey_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_BoolForKey_string:
_p_334:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3248]
br x16
.word 3982
_p_335_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_StringForKey_string_llvm:
	.globl _p_335_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_StringForKey_string_llvm
.private_extern _p_335_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_StringForKey_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_StringForKey_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_StringForKey_string:
_p_335:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3256]
br x16
.word 3987
_p_336_plt_Microsoft_Maui_Essentials_System_Convert_ToInt64_string_System_IFormatProvider_llvm:
	.globl _p_336_plt_Microsoft_Maui_Essentials_System_Convert_ToInt64_string_System_IFormatProvider_llvm
.private_extern _p_336_plt_Microsoft_Maui_Essentials_System_Convert_ToInt64_string_System_IFormatProvider_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Convert_ToInt64_string_System_IFormatProvider
plt_Microsoft_Maui_Essentials_System_Convert_ToInt64_string_System_IFormatProvider:
_p_336:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3264]
br x16
.word 3992
_p_337_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_DoubleForKey_string_llvm:
	.globl _p_337_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_DoubleForKey_string_llvm
.private_extern _p_337_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_DoubleForKey_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_DoubleForKey_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_DoubleForKey_string:
_p_337:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3272]
br x16
.word 3997
_p_338_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_FloatForKey_string_llvm:
	.globl _p_338_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_FloatForKey_string_llvm
.private_extern _p_338_plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_FloatForKey_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_FloatForKey_string
plt_Microsoft_Maui_Essentials_Foundation_NSUserDefaults_FloatForKey_string:
_p_338:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3280]
br x16
.word 4002
_p_339_plt_Microsoft_Maui_Essentials_System_DateTime_FromBinary_long_llvm:
	.globl _p_339_plt_Microsoft_Maui_Essentials_System_DateTime_FromBinary_long_llvm
.private_extern _p_339_plt_Microsoft_Maui_Essentials_System_DateTime_FromBinary_long_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTime_FromBinary_long
plt_Microsoft_Maui_Essentials_System_DateTime_FromBinary_long:
_p_339:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3288]
br x16
.word 4007
_p_340_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_TryParse_string_System_DateTimeOffset__llvm:
	.globl _p_340_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_TryParse_string_System_DateTimeOffset__llvm
.private_extern _p_340_plt_Microsoft_Maui_Essentials_System_DateTimeOffset_TryParse_string_System_DateTimeOffset__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_DateTimeOffset_TryParse_string_System_DateTimeOffset_
plt_Microsoft_Maui_Essentials_System_DateTimeOffset_TryParse_string_System_DateTimeOffset_:
_p_340:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3296]
br x16
.word 4012
_p_341_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_ConnectedScenes_llvm:
	.globl _p_341_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_ConnectedScenes_llvm
.private_extern _p_341_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_ConnectedScenes_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_ConnectedScenes
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_ConnectedScenes:
_p_341:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3304]
br x16
.word 4017
_p_342_plt_Microsoft_Maui_Essentials_Foundation_NSSet_1_UIKit_UIScene_ToArray_llvm:
	.globl _p_342_plt_Microsoft_Maui_Essentials_Foundation_NSSet_1_UIKit_UIScene_ToArray_llvm
.private_extern _p_342_plt_Microsoft_Maui_Essentials_Foundation_NSSet_1_UIKit_UIScene_ToArray_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Foundation_NSSet_1_UIKit_UIScene_ToArray
plt_Microsoft_Maui_Essentials_Foundation_NSSet_1_UIKit_UIScene_ToArray:
_p_342:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3312]
br x16
.word 4022
_p_343_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OfType_UIKit_UIWindowScene_System_Collections_IEnumerable_llvm:
	.globl _p_343_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OfType_UIKit_UIWindowScene_System_Collections_IEnumerable_llvm
.private_extern _p_343_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OfType_UIKit_UIWindowScene_System_Collections_IEnumerable_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OfType_UIKit_UIWindowScene_System_Collections_IEnumerable
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_OfType_UIKit_UIWindowScene_System_Collections_IEnumerable:
_p_343:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3320]
br x16
.word 4033
_p_344_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindowScene_System_Collections_Generic_IEnumerable_1_UIKit_UIWindowScene_System_Func_2_UIKit_UIWindowScene_bool_llvm:
	.globl _p_344_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindowScene_System_Collections_Generic_IEnumerable_1_UIKit_UIWindowScene_System_Func_2_UIKit_UIWindowScene_bool_llvm
.private_extern _p_344_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindowScene_System_Collections_Generic_IEnumerable_1_UIKit_UIWindowScene_System_Func_2_UIKit_UIWindowScene_bool_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindowScene_System_Collections_Generic_IEnumerable_1_UIKit_UIWindowScene_System_Func_2_UIKit_UIWindowScene_bool
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindowScene_System_Collections_Generic_IEnumerable_1_UIKit_UIWindowScene_System_Func_2_UIKit_UIWindowScene_bool:
_p_344:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3328]
br x16
.word 4045
_p_345_plt_Microsoft_Maui_Essentials_UIKit_UIWindowScene_get_Windows_llvm:
	.globl _p_345_plt_Microsoft_Maui_Essentials_UIKit_UIWindowScene_get_Windows_llvm
.private_extern _p_345_plt_Microsoft_Maui_Essentials_UIKit_UIWindowScene_get_Windows_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIWindowScene_get_Windows
plt_Microsoft_Maui_Essentials_UIKit_UIWindowScene_get_Windows:
_p_345:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3336]
br x16
.word 4057
_p_346_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_llvm:
	.globl _p_346_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_llvm
.private_extern _p_346_plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow
plt_Microsoft_Maui_Essentials_System_Linq_Enumerable_FirstOrDefault_UIKit_UIWindow_System_Collections_Generic_IEnumerable_1_UIKit_UIWindow:
_p_346:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3344]
br x16
.word 4062
_p_347_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_KeyWindow_llvm:
	.globl _p_347_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_KeyWindow_llvm
.private_extern _p_347_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_KeyWindow_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_KeyWindow
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_KeyWindow:
_p_347:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3352]
br x16
.word 4074
_p_348_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_Windows_llvm:
	.globl _p_348_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_Windows_llvm
.private_extern _p_348_plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_Windows_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_Windows
plt_Microsoft_Maui_Essentials_UIKit_UIApplication_get_Windows:
_p_348:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3360]
br x16
.word 4079
_p_349_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm:
	.globl _p_349_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm
.private_extern _p_349_plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string
plt_Microsoft_Maui_Essentials_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string:
_p_349:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3368]
br x16
.word 4084
_p_350_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_Alloc_intptr_llvm:
	.globl _p_350_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_Alloc_intptr_llvm
.private_extern _p_350_plt_Microsoft_Maui_Essentials_wrapper_alloc_object_Alloc_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_wrapper_alloc_object_Alloc_intptr
plt_Microsoft_Maui_Essentials_wrapper_alloc_object_Alloc_intptr:
_p_350:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3376]
br x16
.word 4089
_p_351_plt_Microsoft_Maui_Essentials_System_Globalization_CultureInfo_get_InvariantCulture_llvm:
	.globl _p_351_plt_Microsoft_Maui_Essentials_System_Globalization_CultureInfo_get_InvariantCulture_llvm
.private_extern _p_351_plt_Microsoft_Maui_Essentials_System_Globalization_CultureInfo_get_InvariantCulture_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_System_Globalization_CultureInfo_get_InvariantCulture
plt_Microsoft_Maui_Essentials_System_Globalization_CultureInfo_get_InvariantCulture:
_p_351:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3384]
br x16
.word 4097
_p_352_plt_Microsoft_Maui_Essentials__jit_icall_mono_object_castclass_unbox_llvm:
	.globl _p_352_plt_Microsoft_Maui_Essentials__jit_icall_mono_object_castclass_unbox_llvm
.private_extern _p_352_plt_Microsoft_Maui_Essentials__jit_icall_mono_object_castclass_unbox_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__jit_icall_mono_object_castclass_unbox
plt_Microsoft_Maui_Essentials__jit_icall_mono_object_castclass_unbox:
_p_352:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3392]
br x16
.word 4102
_p_353_plt_Microsoft_Maui_Essentials__icall_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm:
	.globl _p_353_plt_Microsoft_Maui_Essentials__icall_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm
.private_extern _p_353_plt_Microsoft_Maui_Essentials__icall_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr_llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials__icall_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
plt_Microsoft_Maui_Essentials__icall_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr:
_p_353:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3400]
br x16
.word 4105
_p_354_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm:
	.globl _p_354_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm
.private_extern _p_354_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_:
_p_354:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3408]
br x16
.word 4108
_p_355_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_355_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_355_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_:
_p_355:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3416]
br x16
.word 4110
_p_356_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_356_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_356_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_:
_p_356:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3424]
br x16
.word 4112
_p_357_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr__llvm:
	.globl _p_357_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr__llvm
.private_extern _p_357_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_:
_p_357:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3432]
br x16
.word 4114
_p_358_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_358_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_358_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_358:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3440]
br x16
.word 4116
_p_359_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm:
	.globl _p_359_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm
.private_extern _p_359_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_:
_p_359:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3448]
br x16
.word 4118
_p_360_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_360_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_360_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_:
_p_360:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3456]
br x16
.word 4120
_p_361_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr__llvm:
	.globl _p_361_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr__llvm
.private_extern _p_361_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_:
_p_361:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3464]
br x16
.word 4122
_p_362_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_362_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_362_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_362:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3472]
br x16
.word 4124
_p_363_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm:
	.globl _p_363_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
.private_extern _p_363_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
_p_363:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3480]
br x16
.word 4126
_p_364_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_364_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_364_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_364:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3488]
br x16
.word 4128
_p_365_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm:
	.globl _p_365_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm
.private_extern _p_365_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_:
_p_365:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3496]
br x16
.word 4130
_p_366_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_366_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_366_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_366:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3504]
br x16
.word 4132
_p_367_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr__llvm:
	.globl _p_367_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr__llvm
.private_extern _p_367_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_:
_p_367:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3512]
br x16
.word 4134
_p_368_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm:
	.globl _p_368_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
.private_extern _p_368_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
_p_368:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3520]
br x16
.word 4136
_p_369_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_369_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_369_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_:
_p_369:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3528]
br x16
.word 4138
_p_370_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_370_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_370_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_370:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3536]
br x16
.word 4140
_p_371_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm:
	.globl _p_371_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm
.private_extern _p_371_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_:
_p_371:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3544]
br x16
.word 4142
_p_372_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr__llvm:
	.globl _p_372_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr__llvm
.private_extern _p_372_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_:
_p_372:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3552]
br x16
.word 4145
_p_373_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_373_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_373_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_:
_p_373:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3560]
br x16
.word 4148
_p_374_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm:
	.globl _p_374_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm
.private_extern _p_374_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_:
_p_374:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3568]
br x16
.word 4151
_p_375_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr__llvm:
	.globl _p_375_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr__llvm
.private_extern _p_375_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_:
_p_375:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3576]
br x16
.word 4154
_p_376_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_376_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_376_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_:
_p_376:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3584]
br x16
.word 4157
_p_377_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_377_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_377_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_:
_p_377:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3592]
br x16
.word 4160
_p_378_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_378_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_378_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_:
_p_378:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3600]
br x16
.word 4163
_p_379_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr__llvm:
	.globl _p_379_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr__llvm
.private_extern _p_379_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_:
_p_379:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3608]
br x16
.word 4166
_p_380_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr__llvm:
	.globl _p_380_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr__llvm
.private_extern _p_380_plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_:
_p_380:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3616]
br x16
.word 4169
_p_381_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm:
	.globl _p_381_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
.private_extern _p_381_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
_p_381:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3624]
br x16
.word 4172
_p_382_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm:
	.globl _p_382_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm
.private_extern _p_382_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_:
_p_382:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3632]
br x16
.word 4175
_p_383_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_383_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_383_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_:
_p_383:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3640]
br x16
.word 4178
_p_384_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm:
	.globl _p_384_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
.private_extern _p_384_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_:
_p_384:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3648]
br x16
.word 4181
_p_385_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr__llvm:
	.globl _p_385_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr__llvm
.private_extern _p_385_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_:
_p_385:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3656]
br x16
.word 4184
_p_386_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm:
	.globl _p_386_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm
.private_extern _p_386_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_:
_p_386:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3664]
br x16
.word 4187
_p_387_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm:
	.globl _p_387_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm
.private_extern _p_387_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_:
_p_387:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3672]
br x16
.word 4190
_p_388_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr__llvm:
	.globl _p_388_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr__llvm
.private_extern _p_388_plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr__llvm
	.no_dead_strip plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
plt_Microsoft_Maui_Essentials_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_:
_p_388:
adrp x16, mono_aot_Microsoft_Maui_Essentials_got@PAGE+0
add x16, x16, mono_aot_Microsoft_Maui_Essentials_got@PAGEOFF
ldr x16, [x16, #3680]
br x16
.word 4193
plt_end:
_mono_aot_Microsoft_Maui_Essentialsplt_end:
	.globl _mono_aot_Microsoft_Maui_Essentialsplt_end
.section __DATA, __bss
	.align 3
jit_got:
_mono_aot_Microsoft_Maui_Essentialsjit_got:
	.globl _mono_aot_Microsoft_Maui_Essentialsjit_got
.lcomm mono_aot_Microsoft_Maui_Essentials_got, 3688
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
_mono_aot_Microsoft_Maui_Essentialsglobals:
	.globl _mono_aot_Microsoft_Maui_Essentialsglobals
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_3:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM7=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_2:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM11=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM12=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_8:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM16=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM17=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_9:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM20=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM21=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM22=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_7:

	.byte 5
	.asciz "System_Runtime_InteropServices_CriticalHandle"

	.byte 32,16
LDIFF_SYM25=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM26=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,35,16,6
	.asciz "_isClosed"

LDIFF_SYM27=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,24,0,7
	.asciz "System_Runtime_InteropServices_CriticalHandle"

LDIFF_SYM28=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_6:

	.byte 5
	.asciz "Foundation_NSObjectDataHandle"

	.byte 32,16
LDIFF_SYM31=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,0,7
	.asciz "Foundation_NSObjectDataHandle"

LDIFF_SYM32=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM33=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM34=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_5:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 32,16
LDIFF_SYM35=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,0,6
	.asciz "__data_for_mono"

LDIFF_SYM36=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,16,6
	.asciz "data_handle"

LDIFF_SYM37=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,24,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM38=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_4:

	.byte 5
	.asciz "UIKit_UIImage"

	.byte 32,16
LDIFF_SYM41=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,0,7
	.asciz "UIKit_UIImage"

LDIFF_SYM42=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_0:

	.byte 5
	.asciz "Microsoft_Maui_Media_ScreenshotResult"

	.byte 32,16
LDIFF_SYM45=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,6
	.asciz "<Width>k__BackingField"

LDIFF_SYM46=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,24,6
	.asciz "<Height>k__BackingField"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,28,6
	.asciz "bmp"

LDIFF_SYM48=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,16,0,7
	.asciz "Microsoft_Maui_Media_ScreenshotResult"

LDIFF_SYM49=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM50=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM51=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_11:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 16,16
LDIFF_SYM52=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,0,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM53=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM54=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM55=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_18:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM56=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM57=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM58=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM59=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM60=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM61=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM62=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM63=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_17:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM64=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM65=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM66=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM67=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_16:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM68=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM69=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM70=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM71=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_15:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 24,16
LDIFF_SYM72=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,0,6
	.asciz "_waitHandle"

LDIFF_SYM73=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,16,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM74=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM74
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM75=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM75
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM76=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_14:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 24,16
LDIFF_SYM77=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM78=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM79=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM80=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_13:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 24,16
LDIFF_SYM81=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM82=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM83=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM84=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_19:

	.byte 5
	.asciz "_TaskNode"

	.byte 88,6
	.asciz "Prev"

LDIFF_SYM85=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,72,6
	.asciz "Next"

LDIFF_SYM86=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,80,0,7
	.asciz "_TaskNode"

LDIFF_SYM87=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM88=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM89=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_12:

	.byte 5
	.asciz "System_Threading_SemaphoreSlim"

	.byte 64,16
LDIFF_SYM90=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,0,6
	.asciz "m_currentCount"

LDIFF_SYM91=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,35,48,6
	.asciz "m_maxCount"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,52,6
	.asciz "m_waitCount"

LDIFF_SYM93=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,56,6
	.asciz "m_countOfWaitersPulsedToWake"

LDIFF_SYM94=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,60,6
	.asciz "m_lockObjAndDisposed"

LDIFF_SYM95=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,16,6
	.asciz "m_waitHandle"

LDIFF_SYM96=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,35,24,6
	.asciz "m_asyncHead"

LDIFF_SYM97=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,35,32,6
	.asciz "m_asyncTail"

LDIFF_SYM98=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,40,0,7
	.asciz "System_Threading_SemaphoreSlim"

LDIFF_SYM99=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM100=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM101=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_10:

	.byte 5
	.asciz "System_IO_Stream"

	.byte 24,16
LDIFF_SYM102=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,0,6
	.asciz "_asyncActiveSemaphore"

LDIFF_SYM103=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,16,0,7
	.asciz "System_IO_Stream"

LDIFF_SYM104=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM105=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM106=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_20:

	.byte 8
	.asciz "Microsoft_Maui_Media_ScreenshotFormat"

	.byte 4
LDIFF_SYM107=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 9
	.asciz "Png"

	.byte 0,9
	.asciz "Jpeg"

	.byte 1,0,7
	.asciz "Microsoft_Maui_Media_ScreenshotFormat"

LDIFF_SYM108=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM109=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM110=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_21:

	.byte 5
	.asciz "Foundation_NSData"

	.byte 32,16
LDIFF_SYM111=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,0,7
	.asciz "Foundation_NSData"

LDIFF_SYM112=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM113=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM114=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_26:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM115=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM116=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM117=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM118=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_25:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM119=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM120=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM121=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM122=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_24:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM123=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM124=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM125=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM126=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_30:

	.byte 5
	.asciz "System_Reflection_LoaderAllocatorScout"

	.byte 24,16
LDIFF_SYM127=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,0,6
	.asciz "m_native"

LDIFF_SYM128=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,16,0,7
	.asciz "System_Reflection_LoaderAllocatorScout"

LDIFF_SYM129=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM130=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM131=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_29:

	.byte 5
	.asciz "System_Reflection_LoaderAllocator"

	.byte 48,16
LDIFF_SYM132=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,0,6
	.asciz "m_scout"

LDIFF_SYM133=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,16,6
	.asciz "m_slots"

LDIFF_SYM134=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,24,6
	.asciz "m_hashes"

LDIFF_SYM135=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,32,6
	.asciz "m_nslots"

LDIFF_SYM136=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,40,0,7
	.asciz "System_Reflection_LoaderAllocator"

LDIFF_SYM137=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM138=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM139=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_28:

	.byte 5
	.asciz "System_Type"

	.byte 32,16
LDIFF_SYM140=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM141=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,16,6
	.asciz "m_keepalive"

LDIFF_SYM142=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,24,0,7
	.asciz "System_Type"

LDIFF_SYM143=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM144=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM144
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM145=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_27:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM146=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM147=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM148=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM149=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM150=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_23:

	.byte 5
	.asciz "System_Delegate"

	.byte 120,16
LDIFF_SYM153=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM154=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM155=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,24,6
	.asciz "_target"

LDIFF_SYM156=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM157=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM158=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM159=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM160=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,64,6
	.asciz "interp_method"

LDIFF_SYM161=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,72,6
	.asciz "interp_invoke_impl"

LDIFF_SYM162=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,80,6
	.asciz "method_info"

LDIFF_SYM163=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,88,6
	.asciz "original_method_info"

LDIFF_SYM164=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,96,6
	.asciz "data"

LDIFF_SYM165=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,104,6
	.asciz "method_is_virtual"

LDIFF_SYM166=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,112,6
	.asciz "bound"

LDIFF_SYM167=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,113,0,7
	.asciz "System_Delegate"

LDIFF_SYM168=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM168
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM169=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM170=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM170
LTDIE_31:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM171=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM172=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM173=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM174=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM175=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_34:

	.byte 17
	.asciz "System_Threading_IAsyncLocalValueMap"

	.byte 16,7
	.asciz "System_Threading_IAsyncLocalValueMap"

LDIFF_SYM176=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM177=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM178=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_33:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 40,16
LDIFF_SYM179=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,0,6
	.asciz "m_localValues"

LDIFF_SYM180=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,16,6
	.asciz "m_localChangeNotifications"

LDIFF_SYM181=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,24,6
	.asciz "m_isFlowSuppressed"

LDIFF_SYM182=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,32,6
	.asciz "m_isDefault"

LDIFF_SYM183=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,33,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM184=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM185=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM186=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_35:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM187=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM188=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM189=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM190=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM191=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM191
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM192=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM193=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM193
LTDIE_39:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM194=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM195=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM195
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM196=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_38:

	.byte 5
	.asciz "System_Exception"

	.byte 144,1,16
LDIFF_SYM197=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,0,6
	.asciz "_unused1"

LDIFF_SYM198=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM199=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM200=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM201=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM202=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,48,6
	.asciz "_traceIPs"

LDIFF_SYM203=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM204=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM205=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,72,6
	.asciz "_unused4"

LDIFF_SYM206=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM207=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM208=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM209=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM209
	.byte 2,35,104,6
	.asciz "_unused6"

LDIFF_SYM210=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,112,6
	.asciz "foreignExceptionsFrames"

LDIFF_SYM211=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM212=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 3,35,128,1,6
	.asciz "caught_in_unmanaged"

LDIFF_SYM213=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 3,35,136,1,0,7
	.asciz "System_Exception"

LDIFF_SYM214=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM215=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM216=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_37:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM217=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,0,6
	.asciz "_exception"

LDIFF_SYM218=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,16,6
	.asciz "_dispatchState"

LDIFF_SYM219=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM220=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM220
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM221=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM222=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_36:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM223=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM224=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM225=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM226=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM227=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM228=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM229=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM230=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_32:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 80,16
LDIFF_SYM231=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM232=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM233=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM234=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM235=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM236=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM237=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,72,6
	.asciz "m_completionCountdown"

LDIFF_SYM238=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,76,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM239=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,56,6
	.asciz "m_parent"

LDIFF_SYM240=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,64,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM241=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM242=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM243=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_22:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 64,16
LDIFF_SYM244=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,56,6
	.asciz "m_action"

LDIFF_SYM246=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM247=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM248=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,32,6
	.asciz "m_stateFlags"

LDIFF_SYM249=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,60,6
	.asciz "m_continuationObject"

LDIFF_SYM250=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,40,6
	.asciz "m_contingentProperties"

LDIFF_SYM251=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,48,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM252=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM253=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM254=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2
	.asciz "Microsoft.Maui.Media.ScreenshotResult:PlatformCopyToAsync"
	.asciz "Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int"

	.byte 1,215,1
	.quad Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM255=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,141,32,3
	.asciz "param0"

LDIFF_SYM256=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM257=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM258=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 1,106,11
	.asciz "data"

LDIFF_SYM259=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 3,141,192,0,11
	.asciz "result"

LDIFF_SYM260=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 3,141,200,0,11
	.asciz "V_2"

LDIFF_SYM261=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 1,106,11
	.asciz "V_3"

LDIFF_SYM262=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM263=Lfde0_end - Lfde0_start
	.long LDIFF_SYM263
Lfde0_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int

LDIFF_SYM264=Lme_33 - Microsoft_Maui_Media_ScreenshotResult_PlatformCopyToAsync_System_IO_Stream_Microsoft_Maui_Media_ScreenshotFormat_int
	.long LDIFF_SYM264
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,153,16,154,15
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_40:

	.byte 5
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation"

	.byte 16,16
LDIFF_SYM265=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,0,0,7
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation"

LDIFF_SYM266=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM267=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM268=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_41:

	.byte 5
	.asciz "Foundation_NSUserDefaults"

	.byte 32,16
LDIFF_SYM269=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,0,0,7
	.asciz "Foundation_NSUserDefaults"

LDIFF_SYM270=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM271=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM272=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_42:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM273=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM274=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM275=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM275
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM276=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM277=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_43:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM278=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM279=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM280=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM281=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM282=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_44:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM283=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM284=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM285=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM286=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM287=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2
	.asciz "Microsoft.Maui.Storage.PreferencesImplementation:Set<T_REF>"
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string"

	.byte 2,50
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string
	.quad Lme_79

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM288=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,141,48,3
	.asciz "param0"

LDIFF_SYM289=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 1,104,3
	.asciz "param1"

LDIFF_SYM290=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM291=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM292=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM292
	.byte 3,141,216,0,11
	.asciz "V_1"

LDIFF_SYM293=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 3,141,224,0,11
	.asciz "userDefaults"

LDIFF_SYM294=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 3,141,232,0,11
	.asciz "valueString"

LDIFF_SYM295=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 1,106,11
	.asciz "encodedDateTime"

LDIFF_SYM296=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 1,106,11
	.asciz "s"

LDIFF_SYM297=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 1,103,11
	.asciz "i"

LDIFF_SYM298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 1,106,11
	.asciz "b"

LDIFF_SYM299=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 1,106,11
	.asciz "l"

LDIFF_SYM300=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 1,106,11
	.asciz "d"

LDIFF_SYM301=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 3,141,144,1,11
	.asciz "f"

LDIFF_SYM302=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 3,141,136,1,11
	.asciz "dt"

LDIFF_SYM303=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 3,141,208,0,11
	.asciz "dt"

LDIFF_SYM304=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM305=Lfde1_end - Lfde1_start
	.long LDIFF_SYM305
Lfde1_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string

LDIFF_SYM306=Lme_79 - Microsoft_Maui_Storage_PreferencesImplementation_Set_T_REF_string_T_REF_string
	.long LDIFF_SYM306
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,151,24,152,23,68,153,22,154,21
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Maui.Storage.PreferencesImplementation:Get<T_REF>"
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string"

	.byte 2,98
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string
	.quad Lme_7a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM307=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 2,141,56,3
	.asciz "param0"

LDIFF_SYM308=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 1,104,3
	.asciz "param1"

LDIFF_SYM309=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM310=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM311=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM312=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 3,141,136,1,11
	.asciz "V_2"

LDIFF_SYM313=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 3,141,144,1,11
	.asciz "userDefaults"

LDIFF_SYM314=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 3,141,152,1,11
	.asciz "V_4"

LDIFF_SYM315=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 1,106,11
	.asciz "savedLong"

LDIFF_SYM316=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 1,106,11
	.asciz "savedDateTime"

LDIFF_SYM317=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 1,106,11
	.asciz "encodedDateTime"

LDIFF_SYM318=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 1,106,11
	.asciz "savedDateTimeOffset"

LDIFF_SYM319=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 1,106,11
	.asciz "dateTimeOffset"

LDIFF_SYM320=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 3,141,248,0,11
	.asciz "i"

LDIFF_SYM321=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 1,106,11
	.asciz "b"

LDIFF_SYM322=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 1,106,11
	.asciz "l"

LDIFF_SYM323=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 1,106,11
	.asciz "d"

LDIFF_SYM324=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 3,141,200,1,11
	.asciz "f"

LDIFF_SYM325=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 3,141,192,1,11
	.asciz "dt"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 3,141,240,0,11
	.asciz "dt"

LDIFF_SYM327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 3,141,224,0,11
	.asciz "s"

LDIFF_SYM328=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM329=Lfde2_end - Lfde2_start
	.long LDIFF_SYM329
Lfde2_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string

LDIFF_SYM330=Lme_7a - Microsoft_Maui_Storage_PreferencesImplementation_Get_T_REF_string_T_REF_string
	.long LDIFF_SYM330
	.long 0
	.byte 12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,150,32,151,31,68,152,30,153,29,68,154,28
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_47:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 32,16
LDIFF_SYM331=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM331
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM332=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM333=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM334=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_46:

	.byte 5
	.asciz "UIKit_UIScene"

	.byte 32,16
LDIFF_SYM335=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,0,0,7
	.asciz "UIKit_UIScene"

LDIFF_SYM336=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM337=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM338=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_45:

	.byte 5
	.asciz "UIKit_UIWindowScene"

	.byte 32,16
LDIFF_SYM339=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindowScene"

LDIFF_SYM340=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM341=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM342=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_49:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 32,16
LDIFF_SYM343=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,0,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM344=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM344
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM345=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM345
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM346=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM346
LTDIE_48:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 40,16
LDIFF_SYM347=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,0,6
	.asciz "__mt_WindowScene_var"

LDIFF_SYM348=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,32,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM349=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM350=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM351=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2
	.asciz "Microsoft.Maui.ApplicationModel.WindowStateManagerImplementation:GetKeyWindow"
	.asciz "Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow"

	.byte 3,138,1
	.quad Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow
	.quad Lme_d8

	.byte 2,118,16,11
	.asciz "scenes"

LDIFF_SYM352=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,141,32,11
	.asciz "windowScene"

LDIFF_SYM353=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM354=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM355=Lfde3_end - Lfde3_start
	.long LDIFF_SYM355
Lfde3_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow

LDIFF_SYM356=Lme_d8 - Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetKeyWindow
	.long LDIFF_SYM356
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Maui.ApplicationModel.WindowStateManagerImplementation:GetWindows"
	.asciz "Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows"

	.byte 3,162,1
	.quad Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows
	.quad Lme_d9

	.byte 2,118,16,11
	.asciz "scenes"

LDIFF_SYM357=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,141,32,11
	.asciz "windowScene"

LDIFF_SYM358=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM359=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM360=Lfde4_end - Lfde4_start
	.long LDIFF_SYM360
Lfde4_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows

LDIFF_SYM361=Lme_d9 - Microsoft_Maui_ApplicationModel_WindowStateManagerImplementation_GetWindows
	.long LDIFF_SYM361
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,153,16,154,15
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Maui.Storage.Preferences:CheckIsSupportedType<T_GSHAREDVT>"
	.asciz "Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT"

	.byte 4,159,2
	.quad Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT
	.quad Lme_172

	.byte 2,118,16,11
	.asciz "type"

LDIFF_SYM362=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM363=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM364=Lfde5_end - Lfde5_start
	.long LDIFF_SYM364
Lfde5_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT

LDIFF_SYM365=Lme_172 - Microsoft_Maui_Storage_Preferences_CheckIsSupportedType_T_GSHAREDVT
	.long LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Maui.Storage.PreferencesImplementation:Set<T_GSHAREDVT>"
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string"

	.byte 2,50
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string
	.quad Lme_173

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM366=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,141,56,3
	.asciz "param0"

LDIFF_SYM367=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM368=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 1,80,3
	.asciz "param2"

LDIFF_SYM369=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM370=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 3,141,232,0,11
	.asciz "V_1"

LDIFF_SYM371=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 3,141,240,0,11
	.asciz "userDefaults"

LDIFF_SYM372=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 3,141,248,0,11
	.asciz "valueString"

LDIFF_SYM373=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 1,106,11
	.asciz "encodedDateTime"

LDIFF_SYM374=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 1,106,11
	.asciz "s"

LDIFF_SYM375=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 1,106,11
	.asciz "i"

LDIFF_SYM376=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 1,106,11
	.asciz "b"

LDIFF_SYM377=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 1,106,11
	.asciz "l"

LDIFF_SYM378=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 1,106,11
	.asciz "d"

LDIFF_SYM379=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 3,141,160,1,11
	.asciz "f"

LDIFF_SYM380=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 3,141,152,1,11
	.asciz "dt"

LDIFF_SYM381=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 3,141,224,0,11
	.asciz "dt"

LDIFF_SYM382=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM383=Lfde6_end - Lfde6_start
	.long LDIFF_SYM383
Lfde6_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string

LDIFF_SYM384=Lme_173 - Microsoft_Maui_Storage_PreferencesImplementation_Set_T_GSHAREDVT_string_T_GSHAREDVT_string
	.long LDIFF_SYM384
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,150,26,151,25,68,152,24,153,23,68,154,22
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Maui.Storage.PreferencesImplementation:Get<T_GSHAREDVT>"
	.asciz "Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string"

	.byte 2,98
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string
	.quad Lme_174

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM385=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 3,141,200,0,3
	.asciz "param0"

LDIFF_SYM386=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM387=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 1,80,3
	.asciz "param2"

LDIFF_SYM388=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM388
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM389=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM390=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 3,141,160,1,11
	.asciz "V_2"

LDIFF_SYM391=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 3,141,168,1,11
	.asciz "userDefaults"

LDIFF_SYM392=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 3,141,176,1,11
	.asciz "V_4"

LDIFF_SYM393=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 1,80,11
	.asciz "savedLong"

LDIFF_SYM394=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 1,106,11
	.asciz "savedDateTime"

LDIFF_SYM395=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 1,106,11
	.asciz "encodedDateTime"

LDIFF_SYM396=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 1,106,11
	.asciz "savedDateTimeOffset"

LDIFF_SYM397=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 1,106,11
	.asciz "dateTimeOffset"

LDIFF_SYM398=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 3,141,144,1,11
	.asciz "i"

LDIFF_SYM399=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 1,106,11
	.asciz "b"

LDIFF_SYM400=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 1,106,11
	.asciz "l"

LDIFF_SYM401=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 1,106,11
	.asciz "d"

LDIFF_SYM402=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 3,141,224,1,11
	.asciz "f"

LDIFF_SYM403=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 3,141,216,1,11
	.asciz "dt"

LDIFF_SYM404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 3,141,136,1,11
	.asciz "dt"

LDIFF_SYM405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 3,141,248,0,11
	.asciz "s"

LDIFF_SYM406=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM407=Lfde7_end - Lfde7_start
	.long LDIFF_SYM407
Lfde7_start:

	.long 0
	.align 3
	.quad Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string

LDIFF_SYM408=Lme_174 - Microsoft_Maui_Storage_PreferencesImplementation_Get_T_GSHAREDVT_string_T_GSHAREDVT_string
	.long LDIFF_SYM408
	.long 0
	.byte 12,31,0,68,14,176,2,157,38,158,37,68,13,29,68,149,36,150,35,68,151,34,152,33,68,153,32,154,31
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_50:

	.byte 8
	.asciz "CoreLocation_CLAuthorizationStatus"

	.byte 4
LDIFF_SYM409=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 9
	.asciz "NotDetermined"

	.byte 0,9
	.asciz "Restricted"

	.byte 1,9
	.asciz "Denied"

	.byte 2,9
	.asciz "Authorized"

	.byte 3,9
	.asciz "AuthorizedAlways"

	.byte 3,9
	.asciz "AuthorizedWhenInUse"

	.byte 4,0,7
	.asciz "CoreLocation_CLAuthorizationStatus"

LDIFF_SYM410=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM411=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM412=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2
	.asciz "(wrapper_managed-to-native)_Microsoft.Maui.Devices.Sensors.LocationExtensions:CLAuthorizationStatus_objc_msgSend"
	.asciz "wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr"

	.byte 0,0
	.quad wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
	.quad Lme_189

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM413=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM414=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM416=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM417=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM417
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM418=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM418
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM419=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM420=Lfde8_end - Lfde8_start
	.long LDIFF_SYM420
Lfde8_start:

	.long 0
	.align 3
	.quad wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr

LDIFF_SYM421=Lme_189 - wrapper_managed_to_native_Microsoft_Maui_Devices_Sensors_LocationExtensions_CLAuthorizationStatus_objc_msgSend_intptr_intptr
	.long LDIFF_SYM421
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,76,147,15,148,14,68,149,13,150,12,68,151,11,152,10,68,153,9
	.byte 154,8,68,155,7,156,6
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.AuthManager/__Registrar_Callbacks__:callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
	.quad Lme_18a

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM422=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM423=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM424=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM425=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM426=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM427=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM428=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM429=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM430=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM431=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM432=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM433=Lfde9_end - Lfde9_start
	.long LDIFF_SYM433
Lfde9_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_

LDIFF_SYM434=Lme_18a - wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_573_Microsoft_Maui_Authentication_AuthManager_GetPresentationAnchor_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM434
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.AuthManager/__Registrar_Callbacks__:callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_18b

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM435=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM436=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM437=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM438=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM439=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM440=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM441=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM442=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM443=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM444=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM445=Lfde10_end - Lfde10_start
	.long LDIFF_SYM445
Lfde10_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM446=Lme_18b - wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_574_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM446
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.AuthManager/__Registrar_Callbacks__:callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_18c

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM447=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM448=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM449=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM450=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM451=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM452=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM453=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM454=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM455=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM456=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM457=Lfde11_end - Lfde11_start
	.long LDIFF_SYM457
Lfde11_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM458=Lme_18c - wrapper_native_to_managed_Microsoft_Maui_Authentication_AuthManager___Registrar_Callbacks___callback_575_Microsoft_Maui_Authentication_AuthManager_DidComplete_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM458
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.WebAuthenticatorImplementation/NativeSFSafariViewControllerDelegate/__Registrar_Callbacks__:callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
	.quad Lme_18d

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM459=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM460=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM461=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM462=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM463=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM464=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM465=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM466=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM467=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM468=Lfde12_end - Lfde12_start
	.long LDIFF_SYM468
Lfde12_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_

LDIFF_SYM469=Lme_18d - wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_576_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate_DidFinish_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM469
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.WebAuthenticatorImplementation/NativeSFSafariViewControllerDelegate/__Registrar_Callbacks__:callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_18e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM470=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM471=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM472=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM473=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM474=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM475=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM476=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM476
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM477=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM477
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM478=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM479=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM480=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM481=Lfde13_end - Lfde13_start
	.long LDIFF_SYM481
Lfde13_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM482=Lme_18e - wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate___Registrar_Callbacks___callback_577_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_NativeSFSafariViewControllerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM482
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Authentication.WebAuthenticatorImplementation/ContextProvider/__Registrar_Callbacks__:callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
	.quad Lme_18f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM483=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM484=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM485=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM486=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM487=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM488=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM489=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM490=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM491=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM492=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM493=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM494=Lfde14_end - Lfde14_start
	.long LDIFF_SYM494
Lfde14_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_

LDIFF_SYM495=Lme_18f - wrapper_native_to_managed_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider___Registrar_Callbacks___callback_578_Microsoft_Maui_Authentication_WebAuthenticatorImplementation_ContextProvider_GetPresentationAnchor_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM495
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.MediaPickerImplementation/PhotoPickerDelegate/__Registrar_Callbacks__:callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_190

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM496=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM497=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM498=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM499=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM500=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM501=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM502=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM503=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM504=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM505=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM506=Lfde15_end - Lfde15_start
	.long LDIFF_SYM506
Lfde15_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM507=Lme_190 - wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_579_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_FinishedPickingMedia_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM507
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.MediaPickerImplementation/PhotoPickerDelegate/__Registrar_Callbacks__:callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
	.quad Lme_191

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM508=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM509=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM510=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM511=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM512=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM513=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM514=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM515=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM516=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM517=Lfde16_end - Lfde16_start
	.long LDIFF_SYM517
Lfde16_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_

LDIFF_SYM518=Lme_191 - wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_580_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate_Canceled_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM518
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.MediaPickerImplementation/PhotoPickerDelegate/__Registrar_Callbacks__:callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_192

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM519=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM519
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM520=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM520
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM521=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM522=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM523=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM524=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM525=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM526=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM527=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM528=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM529=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM530=Lfde17_end - Lfde17_start
	.long LDIFF_SYM530
Lfde17_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM531=Lme_192 - wrapper_native_to_managed_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate___Registrar_Callbacks___callback_581_Microsoft_Maui_Media_MediaPickerImplementation_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM531
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.PhotoPickerDelegate/__Registrar_Callbacks__:callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.quad Lme_193

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM532=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM533=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM534=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM535=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM536=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM537=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM538=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM539=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM540=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM541=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM542=Lfde18_end - Lfde18_start
	.long LDIFF_SYM542
Lfde18_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_

LDIFF_SYM543=Lme_193 - wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_582_Microsoft_Maui_Media_PhotoPickerDelegate_DidFinishPicking_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.long LDIFF_SYM543
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.PhotoPickerDelegate/__Registrar_Callbacks__:callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_194

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM544=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM545=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM546=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM547=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM548=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM549=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM550=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM551=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM552=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM553=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM554=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM555=Lfde19_end - Lfde19_start
	.long LDIFF_SYM555
Lfde19_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM556=Lme_194 - wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerDelegate___Registrar_Callbacks___callback_583_Microsoft_Maui_Media_PhotoPickerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM556
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.PhotoPickerPresentationControllerDelegate/__Registrar_Callbacks__:callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
	.quad Lme_195

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM557=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM558=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM559=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM560=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM561=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM562=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM563=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM563
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM564=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM565=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM566=Lfde20_end - Lfde20_start
	.long LDIFF_SYM566
Lfde20_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_

LDIFF_SYM567=Lme_195 - wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_584_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM567
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Media.PhotoPickerPresentationControllerDelegate/__Registrar_Callbacks__:callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_196

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM568=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM569=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM570=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM571=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM572=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM573=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM574=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM575=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM575
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM576=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM577=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM577
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM578=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM578
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM579=Lfde21_end - Lfde21_start
	.long LDIFF_SYM579
Lfde21_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM580=Lme_196 - wrapper_native_to_managed_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate___Registrar_Callbacks___callback_585_Microsoft_Maui_Media_PhotoPickerPresentationControllerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM580
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Storage.FilePickerImplementation/PickerDelegate/__Registrar_Callbacks__:callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
	.quad Lme_197

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM581=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM582=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM583=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM584=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM585=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM586=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM586
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM587=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM588=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM589=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM590=Lfde22_end - Lfde22_start
	.long LDIFF_SYM590
Lfde22_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_

LDIFF_SYM591=Lme_197 - wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_586_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_WasCancelled_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM591
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Storage.FilePickerImplementation/PickerDelegate/__Registrar_Callbacks__:callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.quad Lme_198

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM592=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM592
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM593=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM594=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM594
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM595=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM596=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM596
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM597=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM598=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM599=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM600=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM601=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM602=Lfde23_end - Lfde23_start
	.long LDIFF_SYM602
Lfde23_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_

LDIFF_SYM603=Lme_198 - wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_587_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.long LDIFF_SYM603
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Storage.FilePickerImplementation/PickerDelegate/__Registrar_Callbacks__:callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_199

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM604=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM605=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM606=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM607=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM608=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM609=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM610=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM611=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM612=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM613=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM614=Lfde24_end - Lfde24_start
	.long LDIFF_SYM614
Lfde24_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM615=Lme_199 - wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_588_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate_DidPickDocument_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM615
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Storage.FilePickerImplementation/PickerDelegate/__Registrar_Callbacks__:callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_19a

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM616=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM617=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM618=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM619=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM620=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM621=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM621
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM622=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM623=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM623
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM624=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM625=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM626=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM627=Lfde25_end - Lfde25_start
	.long LDIFF_SYM627
Lfde25_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM628=Lme_19a - wrapper_native_to_managed_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate___Registrar_Callbacks___callback_589_Microsoft_Maui_Storage_FilePickerImplementation_PickerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM628
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Permissions/LocationWhenInUse/ManagerDelegate/__Registrar_Callbacks__:callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
	.quad Lme_19b

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM629=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM630=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM631=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM632=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM633=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM634=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM635=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM636=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM637=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM638=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM639=Lfde26_end - Lfde26_start
	.long LDIFF_SYM639
Lfde26_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_

LDIFF_SYM640=Lme_19b - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_590_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
	.long LDIFF_SYM640
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Permissions/LocationWhenInUse/ManagerDelegate/__Registrar_Callbacks__:callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
	.quad Lme_19c

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM641=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM642=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM643=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM644=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM644
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM645=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM646=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM647=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM648=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM649=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM649
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM650=Lfde27_end - Lfde27_start
	.long LDIFF_SYM650
Lfde27_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_

LDIFF_SYM651=Lme_19c - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_591_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate_DidChangeAuthorization_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM651
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Permissions/LocationWhenInUse/ManagerDelegate/__Registrar_Callbacks__:callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
	.quad Lme_19d

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM652=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM653=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM654=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM655=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM656=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM657=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM658=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM659=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM660=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM661=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM662=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM663=Lfde28_end - Lfde28_start
	.long LDIFF_SYM663
Lfde28_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM664=Lme_19d - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate___Registrar_Callbacks___callback_592_Microsoft_Maui_ApplicationModel_Permissions_LocationWhenInUse_ManagerDelegate__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM664
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.UIPresentationControllerDelegate/__Registrar_Callbacks__:callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
	.quad Lme_19e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM665=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM665
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM666=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM667=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM668=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM669=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM670=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM671=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM672=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM673=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM674=Lfde29_end - Lfde29_start
	.long LDIFF_SYM674
Lfde29_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_

LDIFF_SYM675=Lme_19e - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate___Registrar_Callbacks___callback_593_Microsoft_Maui_ApplicationModel_UIPresentationControllerDelegate_DidDismiss_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM675
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Communication.ContactsImplementation/ContactPickerDelegate/__Registrar_Callbacks__:callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
	.quad Lme_19f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM676=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM676
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM677=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM677
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM678=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM678
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM679=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM680=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM681=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM682=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM682
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM683=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM683
	.byte 3,141,192,0,11
	.asciz "V_4"

LDIFF_SYM684=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM685=Lfde30_end - Lfde30_start
	.long LDIFF_SYM685
Lfde30_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_

LDIFF_SYM686=Lme_19f - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_594_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_ContactPickerDidCancel_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM686
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Communication.ContactsImplementation/ContactPickerDelegate/__Registrar_Callbacks__:callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_1a0

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM687=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM688=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM689=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM690=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM691=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM692=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM693=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM694=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM695=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM696=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM697=Lfde31_end - Lfde31_start
	.long LDIFF_SYM697
Lfde31_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM698=Lme_1a0 - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_595_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContact_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM698
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.Communication.ContactsImplementation/ContactPickerDelegate/__Registrar_Callbacks__:callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_1a1

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM699=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM700=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM701=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM702=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM703=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM704=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM704
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM705=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM705
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM706=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM707=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM708=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM709=Lfde32_end - Lfde32_start
	.long LDIFF_SYM709
Lfde32_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM710=Lme_1a1 - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate___Registrar_Callbacks___callback_596_Microsoft_Maui_ApplicationModel_Communication_ContactsImplementation_ContactPickerDelegate_DidSelectContactProperty_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM710
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.DataTransfer.ShareActivityItemSource/__Registrar_Callbacks__:callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_1a2

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM711=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM712=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM713=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM714=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 3,141,192,0,3
	.asciz "param4"

LDIFF_SYM715=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 3,141,200,0,11
	.asciz "V_0"

LDIFF_SYM716=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM717=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM718=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM719=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM720=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM721=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 3,141,224,0,11
	.asciz "V_6"

LDIFF_SYM722=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM722
	.byte 3,141,216,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM723=Lfde33_end - Lfde33_start
	.long LDIFF_SYM723
Lfde33_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM724=Lme_1a2 - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_597_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetItemForActivity_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM724
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.DataTransfer.ShareActivityItemSource/__Registrar_Callbacks__:callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
	.quad Lme_1a3

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM725=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM726=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM727=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM728=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM728
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM729=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM730=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM731=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM732=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM733=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM734=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM735=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM735
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM736=Lfde34_end - Lfde34_start
	.long LDIFF_SYM736
Lfde34_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_

LDIFF_SYM737=Lme_1a3 - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_598_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetPlaceholderData_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM737
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.ApplicationModel.DataTransfer.ShareActivityItemSource/__Registrar_Callbacks__:callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
	.quad Lme_1a4

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM738=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM739=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM740=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM740
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM741=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM741
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM742=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM742
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM743=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM743
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM744=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM744
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM745=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM746=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM747=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM748=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM749=Lfde35_end - Lfde35_start
	.long LDIFF_SYM749
Lfde35_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_

LDIFF_SYM750=Lme_1a4 - wrapper_native_to_managed_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource___Registrar_Callbacks___callback_599_Microsoft_Maui_ApplicationModel_DataTransfer_ShareActivityItemSource_GetLinkMetadata_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM750
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.SingleLocationListener/__Registrar_Callbacks__:callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.quad Lme_1a5

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM751=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM752=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM753=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM753
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM754=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM754
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM755=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM755
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM756=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM757=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM758=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM759=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM759
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM760=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM760
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM761=Lfde36_end - Lfde36_start
	.long LDIFF_SYM761
Lfde36_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_

LDIFF_SYM762=Lme_1a5 - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_600_Microsoft_Maui_Devices_Sensors_SingleLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.long LDIFF_SYM762
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_51:

	.byte 5
	.asciz "System_Byte"

	.byte 17,16
LDIFF_SYM763=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM764=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2,35,16,0,7
	.asciz "System_Byte"

LDIFF_SYM765=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM765
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM766=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM766
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM767=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.SingleLocationListener/__Registrar_Callbacks__:callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
	.quad Lme_1a6

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM768=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM769=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 2,141,40,3
	.asciz "param2"

LDIFF_SYM770=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM770
	.byte 2,141,48,3
	.asciz "param3"

LDIFF_SYM771=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM772=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM773=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM774=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM775=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM776=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 3,141,200,0,11
	.asciz "V_5"

LDIFF_SYM777=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM778=Lfde37_end - Lfde37_start
	.long LDIFF_SYM778
Lfde37_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_

LDIFF_SYM779=Lme_1a6 - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_601_Microsoft_Maui_Devices_Sensors_SingleLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM779
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,68,154,7
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.SingleLocationListener/__Registrar_Callbacks__:callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
	.quad Lme_1a7

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM780=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM780
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM781=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM781
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM782=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM783=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM784=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM784
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM785=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM785
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM786=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM787=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM788=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM789=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM789
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM790=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM791=Lfde38_end - Lfde38_start
	.long LDIFF_SYM791
Lfde38_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM792=Lme_1a7 - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_SingleLocationListener___Registrar_Callbacks___callback_602_Microsoft_Maui_Devices_Sensors_SingleLocationListener__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM792
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.ContinuousLocationListener/__Registrar_Callbacks__:callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.quad Lme_1a8

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM793=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM794=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM795=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM795
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM796=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM796
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM797=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM797
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM798=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM799=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM799
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM800=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM800
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM801=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM801
	.byte 3,141,208,0,11
	.asciz "V_4"

LDIFF_SYM802=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 3,141,200,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM803=Lfde39_end - Lfde39_start
	.long LDIFF_SYM803
Lfde39_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_

LDIFF_SYM804=Lme_1a8 - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_603_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_LocationsUpdated_intptr_intptr_intptr_ObjCRuntime_NativeHandle_intptr_
	.long LDIFF_SYM804
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.ContinuousLocationListener/__Registrar_Callbacks__:callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
	.quad Lme_1a9

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM805=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM805
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM806=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM806
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM807=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM807
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM808=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM808
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM809=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM810=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM810
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM811=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM811
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM812=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM812
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM813=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM814=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM815=Lfde40_end - Lfde40_start
	.long LDIFF_SYM815
Lfde40_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_

LDIFF_SYM816=Lme_1a9 - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_604_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_Failed_intptr_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM816
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.ContinuousLocationListener/__Registrar_Callbacks__:callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
	.quad Lme_1aa

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM817=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM817
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM818=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 2,141,32,3
	.asciz "param2"

LDIFF_SYM819=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 2,141,40,3
	.asciz "param3"

LDIFF_SYM820=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 2,141,48,3
	.asciz "param4"

LDIFF_SYM821=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM821
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM822=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM822
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM823=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM824=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM825=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM825
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM826=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM827=Lfde41_end - Lfde41_start
	.long LDIFF_SYM827
Lfde41_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_

LDIFF_SYM828=Lme_1aa - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_605_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_AuthorizationChanged_intptr_intptr_intptr_CoreLocation_CLAuthorizationStatus_intptr_
	.long LDIFF_SYM828
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,148,8
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.ContinuousLocationListener/__Registrar_Callbacks__:callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
	.quad Lme_1ab

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM829=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM830=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 2,141,40,3
	.asciz "param2"

LDIFF_SYM831=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM831
	.byte 2,141,48,3
	.asciz "param3"

LDIFF_SYM832=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 2,141,56,11
	.asciz "V_0"

LDIFF_SYM833=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM834=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM834
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM835=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM835
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM836=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM836
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM837=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM837
	.byte 3,141,200,0,11
	.asciz "V_5"

LDIFF_SYM838=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM839=Lfde42_end - Lfde42_start
	.long LDIFF_SYM839
Lfde42_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_

LDIFF_SYM840=Lme_1ab - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_606_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener_ShouldDisplayHeadingCalibration_intptr_intptr_intptr_intptr_
	.long LDIFF_SYM840
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,68,154,7
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_native-to-managed)_Microsoft.Maui.Devices.Sensors.ContinuousLocationListener/__Registrar_Callbacks__:callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor"
	.asciz "wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_"

	.byte 0,0
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
	.quad Lme_1ac

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM841=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM841
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM842=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM842
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM843=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,141,56,3
	.asciz "param3"

LDIFF_SYM844=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM845=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM845
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM846=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM847=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM847
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM848=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM848
	.byte 3,141,200,0,11
	.asciz "V_4"

LDIFF_SYM849=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM849
	.byte 0,11
	.asciz "V_5"

LDIFF_SYM850=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 3,141,216,0,11
	.asciz "V_6"

LDIFF_SYM851=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM852=Lfde43_end - Lfde43_start
	.long LDIFF_SYM852
Lfde43_start:

	.long 0
	.align 3
	.quad wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_

LDIFF_SYM853=Lme_1ac - wrapper_native_to_managed_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener___Registrar_Callbacks___callback_607_Microsoft_Maui_Devices_Sensors_ContinuousLocationListener__ctor_intptr_intptr_byte__intptr_
	.long LDIFF_SYM853
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,149,12
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
