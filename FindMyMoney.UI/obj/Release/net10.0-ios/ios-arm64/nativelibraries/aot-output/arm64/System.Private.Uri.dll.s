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
	.asciz "System.Private.Uri.dll"
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
_mono_aot_System_Private_Urijit_code_start:
	.globl _mono_aot_System_Private_Urijit_code_start

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
ut_126:
add x0, x0, 16
b _System_Private_Uri_System_UriCreationOptions_get_DangerousDisablePathAndQueryCanonicalization
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_126
	.long LDIFF_SYM3
.text
ut_178:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder__ctor_System_Span_1_char
.text
ut_179:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder__ctor_int
.text
ut_180:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_get_Length
.text
ut_181:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_set_Length_int
.text
ut_182:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_get_Capacity
.text
ut_183:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int
.text
ut_184:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_GetPinnableReference
.text
ut_185:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_get_Item_int
.text
ut_186:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_ToString
.text
ut_187:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_get_RawChars
.text
ut_188:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan
.text
ut_189:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int
.text
ut_190:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int_int
.text
ut_191:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Append_char
.text
ut_192:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Append_string
.text
ut_193:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string
.text
ut_194:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char
.text
ut_195:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_AppendSpan_int
.text
ut_196:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char
.text
ut_197:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Grow_int
.text
ut_198:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Dispose
.text
ut_199:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_Text_Rune
.text
ut_200:
add x0, x0, 16
b _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune
.text
ut_214:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Length
.text
ut_215:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Item_int
.text
ut_216:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Append_T_REF
.text
ut_217:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF
.text
ut_218:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Dispose
.text
ut_219:
add x0, x0, 16
b _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int
.text
	.align 4
	.no_dead_strip System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT
System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf9001baf
.word 0xf90017a0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xf9401ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401ba0
.word 0xf940101a
.word 0xb9800340
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
.word 0x910003f9
.word 0xf9401ba0
.word 0xf9401c00

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #208]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x350006a0
.word 0xf94017a1
.word 0xb9802b40
.word 0x8b000320
.word 0xf9400f42
.word 0xf9401343
.word 0xd63f0060
.word 0xf9400758
.word 0xd280005e
.word 0xeb1e031f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e031f
.word 0x54000280
.word 0xf9401ba0
.word 0xf9401400
bl _p_240
.word 0xb9802b41
.word 0x8b010321
.word 0xf90023a0
.word 0x91004000
.word 0xf9400f42
.word 0xf9401342
.word 0xf9401ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0xaa0003fa
.word 0x1400000a
.word 0xb9802b40
.word 0x8b000320
.word 0xf940001a
.word 0x14000006
.word 0xf9400b41
.word 0xb9802b40
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003fa
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x54000861
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xeb01001f
.word 0x10000011
.word 0x54000761
.word 0x39404340
.word 0x14000034
.word 0xf94017a1
.word 0xb9803340
.word 0x8b000320
.word 0xf9400f42
.word 0xf9401343
.word 0xd63f0060
.word 0xf9400758
.word 0xd280005e
.word 0xeb1e031f
.word 0x54000260
.word 0xd280007e
.word 0xeb1e031f
.word 0x54000280
.word 0xf9401ba0
.word 0xf9401400
bl _p_240
.word 0xb9803341
.word 0x8b010321
.word 0xf90023a0
.word 0x91004000
.word 0xf9400f42
.word 0xf9401342
.word 0xf9401ba2
.word 0xf9401842
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0xaa0003fa
.word 0x1400000a
.word 0xb9803340
.word 0x8b000320
.word 0xf940001a
.word 0x14000006
.word 0xf9400b41
.word 0xb9803340
.word 0x8b000320
.word 0xd63f0020
.word 0xaa0003fa
.word 0xf9400340
.word 0x3940d001
.word 0xeb1f003f
.word 0x10000011
.word 0x540001e1
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #224]
.word 0xeb01001f
.word 0x10000011
.word 0x540000e1
.word 0x79402340
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_241

Lme_e0:
.text
	.align 4
	.no_dead_strip System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int
System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90043af
.word 0xf90027a0
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf94043a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94043a0
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
.word 0xd2800000
.word 0xf90047a0
.word 0xf9004ba0
.word 0xd2800080
.word 0x2a0003f6
.word 0xb5000076
.word 0xd2800015
.word 0x1400000e
.word 0x91003ed0
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
.word 0x910003f5
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x9101c3a0
.word 0xaa1503e1
.word 0xd2800082
bl _p_242
.word 0xf9403ba0
.word 0xf90047a0
.word 0xf9403fa0
.word 0xf9004ba0
.word 0xd2a00016
.word 0x1400003d

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd2a00015
.word 0x1400000c

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xd280015e
.word 0x1b1e7ea0
.word 0xb140000
.word 0x5100c015
.word 0x11000739
.word 0x6b1a033f
.word 0x540003ca
.word 0xf94027a0
.word 0xf94043a1
.word 0xf940142f
.word 0xf94043a1
.word 0xf9401822
.word 0xaa1903e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9801b00
.word 0x8b0002e0
.word 0xf9400702
.word 0xf9400b03
.word 0xd63f0060
.word 0xf94043a0
.word 0xf9401c0f
.word 0xf94043a0
.word 0xf9402001
.word 0xb9801b00
.word 0x8b0002e0
.word 0xd63f0020
.word 0x53003c01
.word 0xaa0103e0
.word 0xaa0103f4
.word 0xd28005de
.word 0x6b1e001f
.word 0x54000080
.word 0xd280075e
.word 0x6b1e029f
.word 0x54fffae1
.word 0xf94047a0
.word 0x93407ec1
.word 0xb98093a2
.word 0xeb01005f
.word 0x10000011
.word 0x54000469
.word 0x8b010000
.word 0x39000015
.word 0x11000739
.word 0x110006d6
.word 0xb98093a0
.word 0x6b0002df
.word 0x54fff84b
.word 0xf94047a0
.word 0xf90033a0
.word 0xf9404ba0
.word 0xf90037a0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x15, [x16, #248]
.word 0xf94043a0
.word 0xf9402402
.word 0x910143a0
.word 0xf9004fa0
.word 0xf94033a0
.word 0xf94037a1
.word 0xd63f0040
.word 0xf9404fbe
.word 0xa90007c0
.word 0xf9402ba0
.word 0xf9402fa1
bl _p_243
.word 0x93407c00
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_241

Lme_e1:
.text
	.align 4
	.no_dead_strip System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool
System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xf9001fa5

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94023a0
.word 0xf9401000
.word 0xf90027a0
.word 0xb9800000
.word 0xf90027bf
.word 0x3940a3a0
.word 0x3940e3a1
.word 0x2a010000
.word 0x340001a0
.word 0xf94023a0
.word 0xf940140f
.word 0xf94023a0
.word 0xf9401805
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xf94013a2
.word 0x3940a3a3
.word 0x3940c3a4
.word 0xd63f00a0
.word 0x53001c00
.word 0x1400000f
.word 0xf94023a0
.word 0xf9401c0f
.word 0xf94023a0
.word 0xf9402004
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xf94013a2
.word 0x3940c3a3
.word 0xd63f0080
.word 0x9280001e
.word 0xeb1e001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_e2:
.text
	.align 4
	.no_dead_strip System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool
System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool:
.loc 1 1 0
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf90037af
.word 0xaa0003f6
.word 0xaa0103f7
.word 0xf9002ba2
.word 0xf9002fa3
.word 0xf90033a4

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xf94037a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94037a0
.word 0xf9401015
.word 0xb98002a0
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
.word 0x910003f4
.word 0xd2800013
.word 0xf9003bbf
.word 0xd2a0001a
.word 0xf9003fbf
.word 0xd2a00000
.word 0x53001c19
.word 0xd2a00000
.word 0x390203a0
.word 0x140000d5

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x93407ee0
.word 0xf94006a1
.word 0x9b017c00
.word 0x8b0002c1
.word 0xb9805aa0
.word 0x8b000280
.word 0xf94016a2
.word 0xf9401aa3
.word 0xd63f0060
.word 0xf94037a0
.word 0xf940140f
.word 0xf94037a0
.word 0xf9401801
.word 0xb9805aa0
.word 0x8b000280
.word 0xd63f0020
.word 0x53003c18
.word 0x394163a0
.word 0x34000160
.word 0xd2800bbe
.word 0x6b1e031f
.word 0x540017a0
.word 0xd28005fe
.word 0x6b1e031f
.word 0x54001740
.word 0xd28004be
.word 0x6b1e031f
.word 0x54000261
.word 0x140000b6
.word 0xd28005fe
.word 0x6b1e031f
.word 0x54001660
.word 0xd2800b9e
.word 0x6b1e031f
.word 0x54001600
.word 0x394183a0
.word 0x34000140
.word 0xd280075e
.word 0x6b1e031f
.word 0x54001560
.word 0xd28007fe
.word 0x6b1e031f
.word 0x54001500
.word 0xd280047e
.word 0x6b1e031f
.word 0x540014a0
.word 0x5100c300
.word 0xb9008ba0
.word 0xd280015e
.word 0x6b1e001f
.word 0x540010c2
.word 0x35000ef9
.word 0xb9408ba0
.word 0x35000ea0
.word 0x110006e0
.word 0xf9402ba1
.word 0xb9800021
.word 0x6b01001f
.word 0x54000dca
.word 0x110006e0
.word 0x93407c00
.word 0xf94006a1
.word 0x9b017c00
.word 0x8b0002c1
.word 0xb9804aa0
.word 0x8b000280
.word 0xf94016a2
.word 0xf9401aa3
.word 0xd63f0060
.word 0xd280061e
.word 0x790123be
.word 0xf94037a0
.word 0xf9401c19
.word 0xd2800018
.word 0xf94037a0
.word 0xf9402000
.word 0xf9004fa0
.word 0xf94037a0
.word 0xf9402400
.word 0xf90053a0
.word 0xf90057bf
.word 0xf9403ba0
.word 0xb50000a0
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003e0
.word 0xf9003ba0
.word 0x910243a0
.word 0xf9403ba5
.word 0xf90000a0
.word 0xaa1803e0
.word 0xf9404fa1
.word 0xf94053a2
.word 0xaa1903e3
.word 0xf94057a4
bl _p_244
.word 0xf9400aa1
bl _p_245
.word 0xaa0003f9
.word 0xf9400eb8
.word 0xd280005e
.word 0xeb1e031f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e031f
.word 0x540000e0
.word 0x91004338
.word 0x1400000c
.word 0xb9803aa0
.word 0x8b000298
.word 0xf9000319
.word 0x14000008
.word 0xf94012a1
.word 0xb98042a0
.word 0x8b000288
.word 0xaa1903e0
.word 0xd63f0020
.word 0xb98042a0
.word 0x8b000298
.word 0xb98052a0
.word 0x8b000280
.word 0xf94016a2
.word 0xf9401aa3
.word 0xaa1803e1
.word 0xd63f0060
.word 0xf94037a0
.word 0xf9400c00
.word 0xf9400019
.word 0xd2800018
.word 0xf94037a0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9005ba0
.word 0xf94037a0
.word 0xf9402400
.word 0xf9005fa0
.word 0xb5000093
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f3
.word 0xf90063b3
.word 0xf9403ba0
.word 0xb50000a0
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003e0
.word 0xf9003ba0
.word 0xf9400ea0
.word 0xf94063a4
.word 0x39000080
.word 0xb9804aa0
.word 0x8b000280
.word 0xf9403ba5
.word 0xf90000a0
.word 0xf9400ea0
.word 0x39000480
.word 0xb98052a0
.word 0x8b000280
.word 0xf90004a0
.word 0xaa1803e0
.word 0xf9405ba1
.word 0xf9405fa2
.word 0xaa1903e3
bl _p_244
.word 0x39404000
.word 0x34000060
.word 0xd2a00000
.word 0x14000034
.word 0xd2800020
.word 0x390203a0
.word 0xd2800020
.word 0x53001c19
.word 0xf9403fa0
.word 0xd280015e
.word 0x9b1e7c00
.word 0xb9408ba1
.word 0x2a0103e1
.word 0x8b010000
.word 0xf9003fa0
.word 0xd2801ffe
.word 0xeb1e001f
.word 0x5400030d
.word 0xd2a00000
.word 0x14000024
.word 0xd28005de
.word 0x6b1e031f
.word 0x54000221
.word 0x340000f9
.word 0xf9403fa0
.word 0xeb1f001f
.word 0x9a9fd7e0
.word 0x394203a1
.word 0xa010000
.word 0x34000060
.word 0xd2a00000
.word 0x14000018
.word 0x1100075a
.word 0xd2a00000
.word 0x53001c19
.word 0xf9003fbf
.word 0xd2a00000
.word 0x390203a0
.word 0x14000003
.word 0xd2a00000
.word 0x1400000f
.word 0x110006f7
.word 0xf9402ba0
.word 0xb9800000
.word 0x6b0002ff
.word 0x54ffe52b
.word 0xd280007e
.word 0x6b1e035f
.word 0x9a9f17e0
.word 0xa190000
.word 0xaa0003fa
.word 0x34000060
.word 0xf9402ba0
.word 0xb9000017
.word 0xaa1a03e0
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_e3:
.text
	.align 4
	.no_dead_strip System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool
System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9003baf
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xf9002ba2
.word 0xf9002fa3

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xf9403ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403ba0
.word 0xf9401016
.word 0xb98002c0
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
.word 0x910003f5
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xd2a00014
.word 0xd2800300
.word 0x2a0003f3
.word 0xb5000073
.word 0xf90047bf
.word 0x1400000f
.word 0x91003e70
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
.word 0x910003e0
.word 0xf90047a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x15, [x16, #280]
.word 0x910183a0
.word 0xf94047a1
.word 0xd2800062
bl _p_246
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94037a0
.word 0xf90043a0
.word 0xd280001a
.word 0xd2a00000
.word 0x53001c13
.word 0xb90093bf
.word 0xb9009bb8
.word 0x140000a1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9809ba0
.word 0x93407c00
.word 0xf94006c1
.word 0x9b017c00
.word 0x8b0002e1
.word 0xb98022c0
.word 0x8b0002a0
.word 0xf9400ac2
.word 0xf9400ec3
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf940140f
.word 0xf9403ba0
.word 0xf9401801
.word 0xb98022c0
.word 0x8b0002a0
.word 0xd63f0020
.word 0x53003c14
.word 0xd280001a
.word 0xd2800159
.word 0xd280061e
.word 0x6b1e029f
.word 0x54000b61
.word 0xb9809ba0
.word 0x11000400
.word 0xb9009ba0
.word 0xd2800021
.word 0x53001c33
.word 0xf9402ba1
.word 0xb9800021
.word 0x6b01001f
.word 0x54000a4a
.word 0xb9809ba0
.word 0x93407c00
.word 0xf94006c1
.word 0x9b017c00
.word 0x8b0002e1
.word 0xb9802ac0
.word 0x8b0002a0
.word 0xf9400ac2
.word 0xf9400ec3
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf940140f
.word 0xf9403ba0
.word 0xf9401c01
.word 0xb9802ac0
.word 0x8b0002a0
.word 0xd63f0020
.word 0x53003c14
.word 0xaa1403e0
.word 0xd2800f1e
.word 0x6b1e001f
.word 0x54000080
.word 0xd2800b1e
.word 0x6b1e029f
.word 0x54000101
.word 0xd2800219
.word 0xb9809ba0
.word 0x11000400
.word 0xb9009ba0
.word 0xd2a00000
.word 0x53001c13
.word 0x14000032
.word 0xd2800119
.word 0x14000030

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9809ba0
.word 0x93407c00
.word 0xf94006c1
.word 0x9b017c00
.word 0x8b0002e1
.word 0xb98032c0
.word 0x8b0002a0
.word 0xf9400ac2
.word 0xf9400ec3
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf940140f
.word 0xf9403ba0
.word 0xf9402001
.word 0xb98032c0
.word 0x8b0002a0
.word 0xd63f0020
.word 0x53003c14
.word 0xaa1403e0
bl _p_247
.word 0x93407c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x6b19001f
.word 0x540002ca
.word 0x93407f20
.word 0x9b007f40
.word 0x93407f01
.word 0x8b01001a
.word 0xaa1a03e0
.word 0xd29fffe1
.word 0xf2bfffe1
.word 0xeb01001f
.word 0x5400006d
.word 0x92800000
.word 0x140000bb
.word 0xd2800020
.word 0x53001c13
.word 0xb9809ba0
.word 0x11000400
.word 0xb9009ba0
.word 0xf9402ba0
.word 0xb9800001
.word 0xb9809ba0
.word 0x6b01001f
.word 0x54fff9ab
.word 0xf9402ba0
.word 0xb9800001
.word 0xb9809ba0
.word 0x6b01001f
.word 0x540004aa
.word 0xd28005de
.word 0x6b1e029f
.word 0x54000441
.word 0xb98093a0
.word 0xd280007e
.word 0x6b1e001f
.word 0x540000aa
.word 0x34000093
.word 0xd2801ffe
.word 0xeb1e035f
.word 0x5400006d
.word 0x92800000
.word 0x1400009f
.word 0xf9403fa0
.word 0xb98093a1
.word 0x93407c21
.word 0xb98083a2
.word 0xeb01005f
.word 0x10000011
.word 0x540013e9
.word 0xd37df021
.word 0x8b010000
.word 0xf900001a
.word 0xb98093a0
.word 0x11000400
.word 0xb90093a0
.word 0xd2a00000
.word 0x53001c13
.word 0xb9809ba0
.word 0x11000400
.word 0xb9009ba0
.word 0xf9402ba0
.word 0xb9800001
.word 0xb9809ba0
.word 0x6b01001f
.word 0x54ffeb8b
.word 0x35000073
.word 0x92800000
.word 0x14000085
.word 0xf9402ba0
.word 0xb9800001
.word 0xb9809ba0
.word 0x6b01001f
.word 0x5400030a
.word 0xd28005fe
.word 0x6b1e029f
.word 0x540001e0
.word 0xd2800b9e
.word 0x6b1e029f
.word 0x54000180
.word 0x394163a0
.word 0x340001c0
.word 0xd280075e
.word 0x6b1e029f
.word 0x540000e0
.word 0xd28007fe
.word 0x6b1e029f
.word 0x54000080
.word 0xd280047e
.word 0x6b1e029f
.word 0x540000a1
.word 0xb9809ba1
.word 0xf9402ba0
.word 0xb9000001
.word 0x14000003
.word 0x92800000
.word 0x14000069
.word 0xb98093b9
.word 0xb98093a0
.word 0xd280009e
.word 0x6b1e001f
.word 0x54000c62
.word 0xd37df320
.word 0x2a0003e1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #288]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.word 0xaa1a03e0
.word 0x1400005a
.word 0xd29ffffe
.word 0xf2a01ffe
.word 0xeb1e035f
.word 0x5400006d
.word 0x92800000
.word 0x14000054
.word 0xf9403fa0
.word 0xd2800001
.word 0xb98083a2
.word 0xeb1f005f
.word 0x10000011
.word 0x54000aa9
.word 0xd37df021
.word 0x8b010000
.word 0xf9400000
.word 0xd3689c00
.word 0xaa1a0000
.word 0x14000048
.word 0xd29ffffe
.word 0xeb1e035f
.word 0x5400006d
.word 0x92800000
.word 0x14000043
.word 0xf9403fa0
.word 0xd2800001
.word 0xb98083a2
.word 0xeb1f005f
.word 0x10000011
.word 0x54000889
.word 0xd37df021
.word 0x8b010000
.word 0xf9400000
.word 0xd3689c00
.word 0xf9403fa1
.word 0xd2800022
.word 0xb98083a3
.word 0xd280003e
.word 0xeb1e007f
.word 0x10000011
.word 0x54000729
.word 0xd37df042
.word 0x8b020021
.word 0xf9400021
.word 0xd370bc21
.word 0xaa010000
.word 0xaa1a0000
.word 0x1400002b
.word 0xd2801ffe
.word 0xeb1e035f
.word 0x5400006d
.word 0x92800000
.word 0x14000026
.word 0xf9403fa0
.word 0xd2800001
.word 0xb98083a2
.word 0xeb1f005f
.word 0x10000011
.word 0x540004e9
.word 0xd37df021
.word 0x8b010000
.word 0xf9400000
.word 0xd3689c00
.word 0xf9403fa1
.word 0xd2800022
.word 0xb98083a3
.word 0xd280003e
.word 0xeb1e007f
.word 0x10000011
.word 0x54000389
.word 0xd37df042
.word 0x8b020021
.word 0xf9400021
.word 0xd370bc21
.word 0xaa010000
.word 0xf9403fa1
.word 0xd2800042
.word 0xb98083a3
.word 0xd280005e
.word 0xeb1e007f
.word 0x10000011
.word 0x54000209
.word 0xd37df042
.word 0x8b020021
.word 0xf9400021
.word 0xd378dc21
.word 0xaa010000
.word 0xaa1a0000
.word 0x14000002
.word 0x92800000
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_241

Lme_e4:
.text
	.align 4
	.no_dead_strip System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_
System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_:
.loc 1 1 0
.word 0xd2809810
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9003baf
.word 0xf9002ba0
.word 0xa9058ba1
.word 0xf90037a3

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #296]
.word 0xf9403ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403ba0
.word 0xf9401019
.word 0xb9800320
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
.word 0x910003f8
.word 0xd2800017
.word 0xd2800016
.word 0xd2a00015
.word 0xb9007bbf
.word 0x9280001e
.word 0xb90083be
.word 0xd2800020
.word 0x390223a0
.word 0xf9403ba0
.word 0xf940140f
.word 0xf9403ba0
.word 0xf9401800
.word 0xb9822321
.word 0x8b010308
.word 0xd63f0000
.word 0xb9822321
.word 0xaa1803e0
.word 0x8b010001
.word 0xf94037a0
.word 0xf9401322
.word 0xf9401722
.word 0xf9403ba2
.word 0xf9400c42
.word 0xf940d842
bl _mono_gsharedvt_value_copy
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9402022
.word 0xd2a00001
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9805322
.word 0xaa1803e0
.word 0x8b020000
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800b7e
.word 0x790123be
.word 0xf9403ba0
.word 0xf940241a
.word 0xf9004fbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90053a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90057a0
.word 0xf9005bbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910243a0
.word 0xf90002c0
.word 0xf9404fa0
.word 0xf94053a1
.word 0xf94057a2
.word 0xaa1a03e3
.word 0xf9405ba4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003fa
.word 0xf9400b20
.word 0xf9005fa0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf9405fa0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004340
.word 0xf90063a0
.word 0x1400000e
.word 0xb9804320
.word 0x8b000300
.word 0xf90063a0
.word 0xf900001a
.word 0x14000009
.word 0xf9400f21
.word 0xb9804b20
.word 0x8b000308
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb9804b20
.word 0x8b000300
.word 0xf90063a0
.word 0xf94063a1
.word 0xb9805b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940081a
.word 0xf90067bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400c00
.word 0xf9006ba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9006fa0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf90073b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf94073a4
.word 0x39000080
.word 0xb9805320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9805b20
.word 0x8b000300
.word 0xf90006c0
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9406fa2
.word 0xaa1a03e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x6b1f001f
.word 0x9a9f97fa
.word 0x140006c0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9401022
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9822b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940140f
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401801
.word 0xb9822b20
.word 0x8b000300
.word 0xd63f0020
.word 0x53003c00
.word 0xb9015ba0
.word 0xd28004be
.word 0x6b1e001f
.word 0x54000140
.word 0xb9815ba0
.word 0xd28005fe
.word 0x6b1e001f
.word 0x5400c0a0
.word 0xb9815ba0
.word 0xd280075e
.word 0x6b1e001f
.word 0x540032e0
.word 0x1400068e
.word 0x394223a0
.word 0x34000200
.word 0xb9807ba1
.word 0xb9807ba0
.word 0x11000400
.word 0xb9007ba0
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x5400eaa9
.word 0xd37ff821
.word 0x8b010000
.word 0x79000015
.word 0xd2a00000
.word 0x390223a0
.word 0xb90163ba
.word 0x1100075a
.word 0x14000008

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x1100075a
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00035f
.word 0x54001bea
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9401c22
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9807320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x790393be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402014
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf900dba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900dfa0
.word 0xf900e3bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910723a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf940dba1
.word 0xf940dfa2
.word 0xaa1403e3
.word 0xf940e3a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f4
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x91004293
.word 0x1400000c
.word 0xb9806320
.word 0x8b000313
.word 0xf9000274
.word 0x14000008
.word 0xf9400f21
.word 0xb9806b20
.word 0x8b000308
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb9806b20
.word 0x8b000313
.word 0xb9807b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402414
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf900eba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900efa0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf900f3b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf940f3a4
.word 0x39000080
.word 0xb9807320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9807b20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf940eba1
.word 0xf940efa2
.word 0xaa1403e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34000e00
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9402c22
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9809320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28005fe
.word 0x7903d3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9403014
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf900fba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900ffa0
.word 0xf90103bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x9107a3a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf940fba1
.word 0xf940ffa2
.word 0xaa1403e3
.word 0xf94103a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f4
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x91004293
.word 0x1400000c
.word 0xb9808320
.word 0x8b000313
.word 0xf9000274
.word 0x14000008
.word 0xf9400f21
.word 0xb9808b20
.word 0x8b000308
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb9808b20
.word 0x8b000313
.word 0xb9809b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9403414
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf90107a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9010ba0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9010fb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9410fa4
.word 0x39000080
.word 0xb9809320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9809b20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf94107a1
.word 0xf9410ba2
.word 0xaa1403e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x35ffe300
.word 0xf9402ba0
.word 0xb98163a1
.word 0x4b010342
.word 0xf9403ba3
.word 0xf9400c63
.word 0xf940386f
.word 0xf9403ba3
.word 0xf9400c63
.word 0xf9403c63
.word 0xb9823324
.word 0x8b040308
.word 0xd63f0060
.word 0xb9823320
.word 0x8b000301
.word 0xf94037a0
.word 0xf9401322
.word 0xf9401722
.word 0xf9403ba2
.word 0xf9400c42
.word 0xf940d842
bl _mono_gsharedvt_value_copy
.word 0x14000008

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x1100075a
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00035f
.word 0x5400aeea
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9404022
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb980b320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x7902d3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9404400
.word 0xf900bba0
.word 0xf900bfbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf900c3a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900c7a0
.word 0xf900cbbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x9105a3a0
.word 0xf90002c0
.word 0xf940bfa0
.word 0xf940c3a1
.word 0xf940c7a2
.word 0xf940bba3
.word 0xf940cba4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xf900cfa0
.word 0xf9400b20
.word 0xf900d3a0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000120
.word 0xf940d3a0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000160
.word 0xf940cfa0
.word 0x91004000
.word 0xf900d7a0
.word 0x1400000f
.word 0xb980a320
.word 0x8b000300
.word 0xf900d7a0
.word 0xf940cfa1
.word 0xf9000001
.word 0x14000009
.word 0xf9400f21
.word 0xb980ab20
.word 0x8b000308
.word 0xf940cfa0
.word 0xd63f0020
.word 0xb980ab20
.word 0x8b000300
.word 0xf900d7a0
.word 0xf940d7a1
.word 0xb980bb20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9404814
.word 0xf900dbbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402813
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900dfa0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf900e3b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf940e3a4
.word 0x39000080
.word 0xb980b320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb980bb20
.word 0x8b000300
.word 0xf90006c0
.word 0xf940dba0
.word 0xaa1303e1
.word 0xf940dfa2
.word 0xaa1403e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x35fff000
.word 0x14000500
.word 0xb9807ba1
.word 0xb9807ba0
.word 0x11000400
.word 0xb9007ba0
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x5400b849
.word 0xd37ff821
.word 0x8b010000
.word 0x79000015
.word 0xd2a00015
.word 0x1100075a
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9404c22
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb980d320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd280075e
.word 0x790483be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9405014
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90117a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9011ba0
.word 0xf9011fbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910903a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf94117a1
.word 0xf9411ba2
.word 0xaa1403e3
.word 0xf9411fa4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f4
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x91004293
.word 0x1400000c
.word 0xb980c320
.word 0x8b000313
.word 0xf9000274
.word 0x14000008
.word 0xf9400f21
.word 0xb980cb20
.word 0x8b000308
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb980cb20
.word 0x8b000313
.word 0xb980db20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9405414
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400c00
.word 0xf90127a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9012ba0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9012fb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9412fa4
.word 0x39000080
.word 0xb980d320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb980db20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf94127a1
.word 0xf9412ba2
.word 0xaa1403e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x340000a0
.word 0xb9807ba0
.word 0xb90083a0
.word 0x1100075a
.word 0x14000008
.word 0xb98083a0
.word 0x6b1f001f
.word 0x540000aa
.word 0xb9807ba0
.word 0xd28000de
.word 0x6b1e001f
.word 0x54008eeb
.word 0xaa1a03f4
.word 0x14000208

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9405822
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb980f320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28005de
.word 0x790783be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9405c13
.word 0xf901e7bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf901eba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf901efa0
.word 0xf901f3bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910f03a0
.word 0xf90002c0
.word 0xf941e7a0
.word 0xf941eba1
.word 0xf941efa2
.word 0xaa1303e3
.word 0xf941f3a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f3
.word 0xf9400b20
.word 0xf901f7a0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf941f7a0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004260
.word 0xf901fba0
.word 0x1400000e
.word 0xb980e320
.word 0x8b000300
.word 0xf901fba0
.word 0xf9000013
.word 0x14000009
.word 0xf9400f21
.word 0xb980eb20
.word 0x8b000308
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb980eb20
.word 0x8b000300
.word 0xf901fba0
.word 0xf941fba1
.word 0xb980fb20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9406013
.word 0xf901ffbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400c00
.word 0xf90203a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90207a0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9020bb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9420ba4
.word 0x39000080
.word 0xb980f320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb980fb20
.word 0x8b000300
.word 0xf90006c0
.word 0xf941ffa0
.word 0xf94203a1
.word 0xf94207a2
.word 0xaa1303e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x340031a0
.word 0x14000008

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x11000694
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00029f
.word 0x540029ca
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9406422
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9811320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x790833be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9406815
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90213a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90217a0
.word 0xf9021bbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x911063a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf94213a1
.word 0xf94217a2
.word 0xaa1503e3
.word 0xf9421ba4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f5
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x910042b3
.word 0x1400000c
.word 0xb9810320
.word 0x8b000313
.word 0xf9000275
.word 0x14000008
.word 0xf9400f21
.word 0xb9810b20
.word 0x8b000308
.word 0xaa1503e0
.word 0xd63f0020
.word 0xb9810b20
.word 0x8b000313
.word 0xb9811b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9406c15
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf9021fa0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90223a0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf90227b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf94227a4
.word 0x39000080
.word 0xb9811320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9811b20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf9421fa1
.word 0xf94223a2
.word 0xaa1503e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34001be0
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9407022
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9813320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28005fe
.word 0x7908a3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9407415
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9022fa0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90233a0
.word 0xf90237bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x911143a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf9422fa1
.word 0xf94233a2
.word 0xaa1503e3
.word 0xf94237a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f5
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x910042b3
.word 0x1400000c
.word 0xb9812320
.word 0x8b000313
.word 0xf9000275
.word 0x14000008
.word 0xf9400f21
.word 0xb9812b20
.word 0x8b000308
.word 0xaa1503e0
.word 0xd63f0020
.word 0xb9812b20
.word 0x8b000313
.word 0xb9813b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9407815
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf9023ba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9023fa0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf90243b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf94243a4
.word 0x39000080
.word 0xb9813320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9813b20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf9423ba1
.word 0xf9423fa2
.word 0xaa1503e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34000e00
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9407c22
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9815320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28004be
.word 0x790913be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9408015
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9024ba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9024fa0
.word 0xf90253bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x911223a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf9424ba1
.word 0xf9424fa2
.word 0xaa1503e3
.word 0xf94253a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f5
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x910042b3
.word 0x1400000c
.word 0xb9814320
.word 0x8b000313
.word 0xf9000275
.word 0x14000008
.word 0xf9400f21
.word 0xb9814b20
.word 0x8b000308
.word 0xaa1503e0
.word 0xd63f0020
.word 0xb9814b20
.word 0x8b000313
.word 0xb9815b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9408415
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf90257a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9025ba0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9025fb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9425fa4
.word 0x39000080
.word 0xb9815320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9815b20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf94257a1
.word 0xf9425ba2
.word 0xaa1503e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x35ffd520
.word 0xf9402ba1
.word 0xb9823b20
.word 0x8b000300
.word 0xf9401322
.word 0xf9401723
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940880f
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9408c03
.word 0xb9823b20
.word 0x8b000300
.word 0xaa1a03e1
.word 0xaa1403e2
.word 0xd63f0060
.word 0x93407c00
.word 0xaa0003fa
.word 0xb9807ba2
.word 0xb9807ba0
.word 0x11000401
.word 0xb9007ba1
.word 0xf9402fa0
.word 0x93407c42
.word 0xb98063a3
.word 0xeb02007f
.word 0x10000011
.word 0x54006a29
.word 0xd37ff842
.word 0x8b020000
.word 0x13107f42
.word 0x79000002
.word 0xb9807ba0
.word 0x11000400
.word 0xb9007ba0
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x54006889
.word 0xd37ff821
.word 0x8b010000
.word 0x12003f41
.word 0x79000001
.word 0xaa1403fa
.word 0xd2a00015
.word 0xd2a00000
.word 0x390223a0
.word 0x1400026f
.word 0x11000694
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00029f
.word 0x54004d4a
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9409022
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9817320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x7904c3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9409413
.word 0xf90137bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9013ba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9013fa0
.word 0xf90143bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910983a0
.word 0xf90002c0
.word 0xf94137a0
.word 0xf9413ba1
.word 0xf9413fa2
.word 0xaa1303e3
.word 0xf94143a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f3
.word 0xf9400b20
.word 0xf90147a0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf94147a0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004260
.word 0xf9014ba0
.word 0x1400000e
.word 0xb9816320
.word 0x8b000300
.word 0xf9014ba0
.word 0xf9000013
.word 0x14000009
.word 0xf9400f21
.word 0xb9816b20
.word 0x8b000308
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb9816b20
.word 0x8b000300
.word 0xf9014ba0
.word 0xf9414ba1
.word 0xb9817b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9409813
.word 0xf9014fbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf90153a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90157a0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9015bb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9415ba4
.word 0x39000080
.word 0xb9817320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9817b20
.word 0x8b000300
.word 0xf90006c0
.word 0xf9414fa0
.word 0xf94153a1
.word 0xf94157a2
.word 0xaa1303e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34003ec0
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9409c22
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9819320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd280075e
.word 0x790573be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940a013
.word 0xf90163bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90167a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9016ba0
.word 0xf9016fbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910ae3a0
.word 0xf90002c0
.word 0xf94163a0
.word 0xf94167a1
.word 0xf9416ba2
.word 0xaa1303e3
.word 0xf9416fa4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f3
.word 0xf9400b20
.word 0xf90173a0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf94173a0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004260
.word 0xf90177a0
.word 0x1400000e
.word 0xb9818320
.word 0x8b000300
.word 0xf90177a0
.word 0xf9000013
.word 0x14000009
.word 0xf9400f21
.word 0xb9818b20
.word 0x8b000308
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb9818b20
.word 0x8b000300
.word 0xf90177a0
.word 0xf94177a1
.word 0xb9819b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940a413
.word 0xf9017bbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf9017fa0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90183a0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf90187b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf94187a4
.word 0x39000080
.word 0xb9819320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9819b20
.word 0x8b000300
.word 0xf90006c0
.word 0xf9417ba0
.word 0xf9417fa1
.word 0xf94183a2
.word 0xaa1303e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34003040
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf940a822
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb981b320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28004be
.word 0x790623be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940ac13
.word 0xf9018fbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90193a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90197a0
.word 0xf9019bbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910c43a0
.word 0xf90002c0
.word 0xf9418fa0
.word 0xf94193a1
.word 0xf94197a2
.word 0xaa1303e3
.word 0xf9419ba4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f3
.word 0xf9400b20
.word 0xf9019fa0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf9419fa0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004260
.word 0xf901a3a0
.word 0x1400000e
.word 0xb981a320
.word 0x8b000300
.word 0xf901a3a0
.word 0xf9000013
.word 0x14000009
.word 0xf9400f21
.word 0xb981ab20
.word 0x8b000308
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb981ab20
.word 0x8b000300
.word 0xf901a3a0
.word 0xf941a3a1
.word 0xb981bb20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940b013
.word 0xf901a7bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf901aba0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf901afa0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf901b3b7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf941b3a4
.word 0x39000080
.word 0xb981b320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb981bb20
.word 0x8b000300
.word 0xf90006c0
.word 0xf941a7a0
.word 0xf941aba1
.word 0xf941afa2
.word 0xaa1303e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x340021c0
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf940b422
.word 0xaa1403e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb981d320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd28005fe
.word 0x7906d3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940b813
.word 0xf901bbbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf901bfa0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf901c3a0
.word 0xf901c7bf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910da3a0
.word 0xf90002c0
.word 0xf941bba0
.word 0xf941bfa1
.word 0xf941c3a2
.word 0xaa1303e3
.word 0xf941c7a4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f3
.word 0xf9400b20
.word 0xf901cba0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000100
.word 0xf941cba0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000120
.word 0x91004260
.word 0xf901cfa0
.word 0x1400000e
.word 0xb981c320
.word 0x8b000300
.word 0xf901cfa0
.word 0xf9000013
.word 0x14000009
.word 0xf9400f21
.word 0xb981cb20
.word 0x8b000308
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb981cb20
.word 0x8b000300
.word 0xf901cfa0
.word 0xf941cfa1
.word 0xb981db20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940bc13
.word 0xf901d3bf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf901d7a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf901dba0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf901dfb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf941dfa4
.word 0x39000080
.word 0xb981d320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb981db20
.word 0x8b000300
.word 0xf90006c0
.word 0xf941d3a0
.word 0xf941d7a1
.word 0xf941dba2
.word 0xaa1303e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x34001340
.word 0x11001340
.word 0x6b00029f
.word 0x54ff846b
.word 0x14000096
.word 0x394223a0
.word 0x34000200
.word 0xb9807ba1
.word 0xb9807ba0
.word 0x11000400
.word 0xb9007ba0
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x54002ac9
.word 0xd37ff821
.word 0x8b010000
.word 0x79000015
.word 0xd2a00000
.word 0x390223a0
.word 0x1100075a
.word 0x14000008

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0x1100075a
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00035f
.word 0x54000f0a
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf940c022
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb981f320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x790443be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940c414
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90107a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9010ba0
.word 0xf9010fbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x910883a0
.word 0xf90002c0
.word 0xaa1303e0
.word 0xf94107a1
.word 0xf9410ba2
.word 0xaa1403e3
.word 0xf9410fa4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xaa0003f4
.word 0xf9400b33
.word 0xd280005e
.word 0xeb1e027f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e027f
.word 0x540000e0
.word 0x91004293
.word 0x1400000c
.word 0xb981e320
.word 0x8b000313
.word 0xf9000274
.word 0x14000008
.word 0xf9400f21
.word 0xb981eb20
.word 0x8b000308
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb981eb20
.word 0x8b000313
.word 0xb981fb20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xaa1303e1
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940c814
.word 0xd2800013
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf90117a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf9011ba0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf9011fb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf9411fa4
.word 0x39000080
.word 0xb981f320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb981fb20
.word 0x8b000300
.word 0xf90006c0
.word 0xaa1303e0
.word 0xf94117a1
.word 0xf9411ba2
.word 0xaa1403e3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x35fff0e0
.word 0x14000008
.word 0xb9815ba0
bl _p_247
.word 0x93407c00
.word 0xaa0003f4
.word 0x531c6ea0
.word 0xb140015
.word 0x1100075a
.word 0xf9402ba0
.word 0xb9800800
.word 0x6b00035f
.word 0x54000f2a
.word 0xf9402ba0
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf940cc22
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003e1
.word 0xb9821320
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xd2800bbe
.word 0x7901d3be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940d000
.word 0xf9007ba0
.word 0xf9007fbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf90083a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf90087a0
.word 0xf9008bbf
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0x9103a3a0
.word 0xf90002c0
.word 0xf9407fa0
.word 0xf94083a1
.word 0xf94087a2
.word 0xf9407ba3
.word 0xf9408ba4
.word 0xaa1603e5
bl _p_244
.word 0xf9400721
bl _p_245
.word 0xf9008fa0
.word 0xf9400b20
.word 0xf90093a0
.word 0xd280005e
.word 0xeb1e001f
.word 0x54000120
.word 0xf94093a0
.word 0xd280007e
.word 0xeb1e001f
.word 0x54000160
.word 0xf9408fa0
.word 0x91004000
.word 0xf90097a0
.word 0x1400000f
.word 0xb9820320
.word 0x8b000300
.word 0xf90097a0
.word 0xf9408fa1
.word 0xf9000001
.word 0x14000009
.word 0xf9400f21
.word 0xb9820b20
.word 0x8b000308
.word 0xf9408fa0
.word 0xd63f0020
.word 0xb9820b20
.word 0x8b000300
.word 0xf90097a0
.word 0xf94097a1
.word 0xb9821b20
.word 0x8b000300
.word 0xf9401b22
.word 0xf9401f23
.word 0xd63f0060
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf940d400
.word 0xf9009ba0
.word 0xf9009fbf
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9402800
.word 0xf900a3a0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400400
.word 0xf900a7a0
.word 0xb5000097
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f7
.word 0xf900abb7
.word 0xb5000096
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003f6
.word 0xf9400b20
.word 0xf940aba4
.word 0x39000080
.word 0xb9821320
.word 0x8b000300
.word 0xf90002c0
.word 0xf9400b20
.word 0x39000480
.word 0xb9821b20
.word 0x8b000300
.word 0xf90006c0
.word 0xf9409fa0
.word 0xf940a3a1
.word 0xf940a7a2
.word 0xf9409ba3
.word 0xaa1603e5
bl _p_244
.word 0x39404000
.word 0x35ff18c0
.word 0x394223a0
.word 0x340001c0
.word 0xb9807ba1
.word 0xb9807ba0
.word 0x11000400
.word 0xb9007ba0
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x540008a9
.word 0xd37ff821
.word 0x8b010000
.word 0x79000015
.word 0xb98083a0
.word 0x6b1f001f
.word 0x5400068d
.word 0xd28000fa
.word 0xb9807ba0
.word 0x51000419
.word 0xaa1903e0
.word 0xd28000fe
.word 0x6b1e001f
.word 0x540005a0
.word 0xb9807ba0
.word 0xb98083a1
.word 0x4b010018
.word 0x14000027

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xaa1a03e1
.word 0x5100075a
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x540004c9
.word 0xd37ff821
.word 0x8b010000
.word 0xf9402fa1
.word 0x93407f22
.word 0xb98063a3
.word 0xeb02007f
.word 0x10000011
.word 0x540003c9
.word 0xd37ff842
.word 0x8b020021
.word 0x79400021
.word 0x79000001
.word 0xaa1903e1
.word 0x51000739
.word 0xf9402fa0
.word 0x93407c21
.word 0xb98063a2
.word 0xeb01005f
.word 0x10000011
.word 0x54000249
.word 0xd37ff821
.word 0x8b010000
.word 0x7900001f
.word 0x51000718
.word 0x6b1f031f
.word 0x54fffb2c
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2809810
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0
.word 0xd2801880
.word 0xaa1103e1
bl _p_241

Lme_e5:
.text
ut_230:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401019
.word 0xb9800320
.word 0xf90017bf
.word 0xf9400720
.word 0xd1000401
.word 0xf9400fa0
.word 0x8b010000
.word 0xb9800000
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e6:
.text
ut_231:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf90017af
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401018
.word 0xb9800300
.word 0xf9001bbf
.word 0xf9400fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x540001c0
.word 0xf9400701
.word 0xd1000421
.word 0x8b010000
.word 0xf94017a1
.word 0xf940142f
.word 0xf94017a1
.word 0xf9401822
.word 0xb98023a1
.word 0xd63f0040
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_241

Lme_e7:
.text
ut_232:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001faf
.word 0xaa0003fa
.word 0xf9001ba1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
.word 0xf9401019
.word 0xb9800320
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
.word 0x910003f8
.word 0xb9804320
.word 0x8b000300
.word 0xf9400f21
.word 0xf9401322
.word 0xd63f0040
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xb9800017
.word 0xf9400b20
.word 0xd1000400
.word 0x8b000341
.word 0xb9804322
.word 0xaa1803e0
.word 0x8b020000
.word 0xf9400f22
.word 0xf9401723
.word 0xd63f0060
.word 0xb9804321
.word 0xaa1803e0
.word 0x8b010000
.word 0xb9800800
.word 0x6b0002ff
.word 0x540002a2
.word 0xb9804320
.word 0x8b000300
.word 0xf9401fa1
.word 0xf940142f
.word 0xf9401fa1
.word 0xf9401822
.word 0xaa1703e1
.word 0xd63f0040
.word 0xf9401ba1
.word 0xf9401b22
.word 0xf9401f22
.word 0xf9401fa2
.word 0xf9402442
bl _mono_gsharedvt_value_copy
.word 0x110006e1
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xb9000001
.word 0x14000008
.word 0xf9401fa0
.word 0xf9401c0f
.word 0xf9401fa0
.word 0xf9402002
.word 0xaa1a03e0
.word 0xf9401ba1
.word 0xd63f0040
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e8:
.text
ut_233:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90017af
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401019
.word 0xb9800320
.word 0xf9001bbf
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xb9800000
.word 0xf90027a0
.word 0xf94017a0
.word 0xf940140f
.word 0xf94017a0
.word 0xf9401802
.word 0xaa1a03e0
.word 0xd2800021
.word 0xd63f0040
.word 0xf94027a1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000360
.word 0xf9400b20
.word 0xd1000400
.word 0x8b000340
.word 0xf94017a2
.word 0xf9401c4f
.word 0xf94017a2
.word 0xf9402042
.word 0xf90023a1
.word 0xd63f0040
.word 0xf9401ba1
.word 0xf94013a1
.word 0xf9400f22
.word 0xf9401322
.word 0xf94017a2
.word 0xf9402442
bl _mono_gsharedvt_value_copy
.word 0xf94023a0
.word 0x11000401
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xb9000001
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_241

Lme_e9:
.text
ut_234:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90017af
.word 0xf90013a0

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401019
.word 0xb9800320
.word 0xf9001bbf
.word 0xf9400720
.word 0xd1000401
.word 0xf94013a0
.word 0x8b010000
.word 0xf9400018
.word 0xaa1803e0
.word 0xb40003e0
.word 0xf9400720
.word 0xd1000401
.word 0xf94013a0
.word 0x8b010000
.word 0xf900001f
.word 0xf94017a0
.word 0xf9402400
bl _p_211
.word 0x53001c00
.word 0x35000120
.word 0xf9400b20
.word 0xd1000401
.word 0xf94013a0
.word 0x8b010000
.word 0xb9800002
.word 0xaa1803e0
.word 0xd2a00001
bl _p_212
.word 0xf94017a0
.word 0xf940140f
.word 0xf94017a0
.word 0xf9401800
.word 0xd63f0000
.word 0xf94017a1
.word 0xf9401c21
.word 0xf94017a1
.word 0xf9402023
.word 0xaa1803e1
.word 0xd2a00002
.word 0xd63f0060
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ea:
.text
ut_235:
add x0, x0, 16
b System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int
.text
	.align 4
	.no_dead_strip System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int
System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #344]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
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
.word 0xeb1f033f
.word 0x10000011
.word 0x54001500
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xb9800800
.word 0x35000060
.word 0xd2800096
.word 0x14000009
.word 0xeb1f033f
.word 0x10000011
.word 0x540013c0
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xb9800800
.word 0x531f7816
.word 0xeb1f033f
.word 0x10000011
.word 0x540012c0
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xb9800800
.word 0xb1a0001
.word 0xaa1603e0
bl _p_248
.word 0x93407c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xd29ff8fe
.word 0xf2affffe
.word 0x6b1e001f
.word 0x540002e9
.word 0xeb1f033f
.word 0x10000011
.word 0x540010a0
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xb9800800
.word 0x11000400
.word 0xd29ff8e1
.word 0xf2afffe1
bl _p_248
.word 0x93407c00
.word 0xeb1f033f
.word 0x10000011
.word 0x54000f20
.word 0xf9400701
.word 0xd1000421
.word 0x8b010321
.word 0xb9800821
bl _p_248
.word 0x93407c00
.word 0xaa0003fa
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9401800
.word 0xd63f0000
.word 0xf9401fa1
.word 0xf9401c21
.word 0xf9401fa1
.word 0xf9402022
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xaa0003fa
.word 0xeb1f033f
.word 0x10000011
.word 0x54000c60
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xf9002fa0
.word 0xf9401fa0
.word 0xf940240f
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400001
.word 0xb9803300
.word 0x8b0002e8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9402fa0
.word 0xf9401fa1
.word 0xf9400c21
.word 0xf940042f
.word 0xf9401fa1
.word 0xf9400c21
.word 0xf9400822
.word 0xb9803301
.word 0x8b0102e1
.word 0xd63f0040
.word 0xf9400b00
.word 0xd1000400
.word 0x8b000320
.word 0xf9400016
.word 0xf90023ba
.word 0xf9400b00
.word 0xd1000400
.word 0x8b000320
.word 0xf9002ba0
.word 0xd5033bbf
.word 0xf9402ba0
.word 0xf900001a
.word 0xd349fc00
.word 0x92405800

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9401fa0
.word 0xf940240f
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400c01
.word 0xb9803b00
.word 0x8b0002e8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xb9803b01
.word 0x8b0102e1
.word 0xf9401302
.word 0xf9401702
.word 0xf9401fa2
.word 0xf9400c42
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xb40003b6
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9402000
bl _p_211
.word 0x53001c00
.word 0x35000100
.word 0xf9400f00
.word 0xd1000400
.word 0x8b000320
.word 0xb9800002
.word 0xaa1603e0
.word 0xd2a00001
bl _p_212
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9401000
.word 0xd63f0000
.word 0xf9401fa1
.word 0xf9400c21
.word 0xf9401421
.word 0xf9401fa1
.word 0xf9400c21
.word 0xf9401823
.word 0xaa1603e1
.word 0xd2a00002
.word 0xd63f0060
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_241

Lme_eb:
.text
	.align 4
	.no_dead_strip _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013a8
.word 0xf9001faf
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #352]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
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
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9401802
.word 0xb9801b00
.word 0x8b0002e8
.word 0xf94017a0
.word 0xb98033a1
.word 0xd63f0040
.word 0xf94013a0
.word 0xb9801b02
.word 0xaa1703e1
.word 0x8b020021
.word 0xf9400702
.word 0xf9400b02
.word 0xf9401fa2
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ec:
.text
	.align 4
	.no_dead_strip _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
_PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013a8
.word 0xf9001faf
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #360]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
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
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9401802
.word 0xb9801b00
.word 0x8b0002e8
.word 0xf94017a0
.word 0xb98033a1
.word 0xd63f0040
.word 0xf94013a0
.word 0xb9801b02
.word 0xaa1703e1
.word 0x8b020021
.word 0xf9400702
.word 0xf9400b02
.word 0xf9401fa2
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ed:
.text
	.align 4
	.no_dead_strip _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf90017af
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x1, [x16, #368]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401018
.word 0xb9800300
.word 0xf9001bbf
.word 0xf9400700
.word 0x93407c01
.word 0xb98023a0
.word 0x9b017c01
.word 0xf9400fa0
.word 0x8b010000
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ee:
.text
ut_240:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Uri_Offset_StructureToPtr_object_intptr_bool
.text
ut_241:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Uri_Offset_PtrToStructure_intptr_object
.text
ut_242:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_UriCreationOptions_StructureToPtr_object_intptr_bool
.text
ut_243:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_UriCreationOptions_PtrToStructure_intptr_object
.text
ut_244:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_char_StructureToPtr_object_intptr_bool
.text
ut_245:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_char_PtrToStructure_intptr_object
.text
ut_246:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_StructureToPtr_object_intptr_bool
.text
ut_247:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_PtrToStructure_intptr_object
.text
ut_248:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
.text
ut_249:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
.text
ut_250:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_byte_StructureToPtr_object_intptr_bool
.text
ut_251:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_byte_PtrToStructure_intptr_object
.text
ut_252:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_long_StructureToPtr_object_intptr_bool
.text
ut_253:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_long_PtrToStructure_intptr_object
.text
ut_254:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_uint16_StructureToPtr_object_intptr_bool
.text
ut_255:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_Span_1_uint16_PtrToStructure_intptr_object
.text
ut_256:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_StructureToPtr_object_intptr_bool
.text
ut_257:
add x0, x0, 16
b _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_PtrToStructure_intptr_object
.text
	.align 3
jit_code_end:
_mono_aot_System_Private_Urijit_code_end:
	.globl _mono_aot_System_Private_Urijit_code_end

	.byte 0,0,0,0
.no_dead_strip _System_Private_Uri_System_HexConverter_ToCharsBuffer_byte_System_Span_1_char_int_System_HexConverter_Casing
.no_dead_strip _System_Private_Uri_System_HexConverter_FromChar_int
.no_dead_strip _System_Private_Uri_System_HexConverter_get_CharToHexLookup
.no_dead_strip _System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool_
.no_dead_strip _System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int_
.no_dead_strip _System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string
.no_dead_strip _System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder_
.no_dead_strip _System_Private_Uri_System_DomainNameHelper__cctor
.no_dead_strip _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool
.no_dead_strip _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool
.no_dead_strip _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool
.no_dead_strip _System_Private_Uri_System_IriHelper_IsInInclusiveRange_uint_uint_uint
.no_dead_strip _System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents
.no_dead_strip _System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents
.no_dead_strip _System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool
.no_dead_strip _System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool_
.no_dead_strip _System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool
.no_dead_strip _System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_get_IsImplicitFile
.no_dead_strip _System_Private_Uri_System_Uri_get_IsUncOrDosPath
.no_dead_strip _System_Private_Uri_System_Uri_get_IsDosPath
.no_dead_strip _System_Private_Uri_System_Uri_get_IsUncPath
.no_dead_strip _System_Private_Uri_System_Uri_get_IsUnixPath
.no_dead_strip _System_Private_Uri_System_Uri_get_HostType
.no_dead_strip _System_Private_Uri_System_Uri_get_Syntax
.no_dead_strip _System_Private_Uri_System_Uri_get_IsNotAbsoluteUri
.no_dead_strip _System_Private_Uri_System_Uri_get_IriParsing
.no_dead_strip _System_Private_Uri_System_Uri_IriParsingStatic_System_UriParser
.no_dead_strip _System_Private_Uri_System_Uri_get_DisablePathAndQueryCanonicalization
.no_dead_strip _System_Private_Uri_System_Uri_get_UserDrivenParsing
.no_dead_strip _System_Private_Uri_System_Uri_get_SecuredPathIndex
.no_dead_strip _System_Private_Uri_System_Uri_NotAny_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_InFact_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_StaticNotAny_System_Uri_Flags_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_StaticInFact_System_Uri_Flags_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_EnsureUriInfo
.no_dead_strip _System_Private_Uri_System_Uri_EnsureParseRemaining
.no_dead_strip _System_Private_Uri_System_Uri_EnsureHostString_bool
.no_dead_strip _System_Private_Uri_System_Uri__ctor_string
.no_dead_strip _System_Private_Uri_System_Uri__ctor_string_bool
.no_dead_strip _System_Private_Uri_System_Uri__ctor_System_Uri_string_bool
.no_dead_strip _System_Private_Uri_System_Uri__ctor_string_System_UriKind
.no_dead_strip _System_Private_Uri_System_Uri__ctor_string_System_UriCreationOptions_
.no_dead_strip _System_Private_Uri_System_Uri__ctor_System_Uri_string
.no_dead_strip _System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool
.no_dead_strip _System_Private_Uri_System_Uri__ctor_System_Uri_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string_
.no_dead_strip _System_Private_Uri_System_Uri_GetException_System_ParsingError
.no_dead_strip _System_Private_Uri_System_Uri_get_AbsolutePath
.no_dead_strip _System_Private_Uri_System_Uri_get_PrivateAbsolutePath
.no_dead_strip _System_Private_Uri_System_Uri_get_AbsoluteUri
.no_dead_strip _System_Private_Uri_System_Uri_get_LocalPath
.no_dead_strip _System_Private_Uri_System_Uri_get_Authority
.no_dead_strip _System_Private_Uri_System_Uri_get_IsFile
.no_dead_strip _System_Private_Uri_System_Uri_get_PathAndQuery
.no_dead_strip _System_Private_Uri_System_Uri_get_IsUnc
.no_dead_strip _System_Private_Uri_System_Uri_get_Host
.no_dead_strip _System_Private_Uri_System_Uri_StaticIsFile_System_UriParser
.no_dead_strip _System_Private_Uri_System_Uri_GetLocalPath
.no_dead_strip _System_Private_Uri_System_Uri_get_Port
.no_dead_strip _System_Private_Uri_System_Uri_get_Query
.no_dead_strip _System_Private_Uri_System_Uri_get_Fragment
.no_dead_strip _System_Private_Uri_System_Uri_get_Scheme
.no_dead_strip _System_Private_Uri_System_Uri_get_OriginalString
.no_dead_strip _System_Private_Uri_System_Uri_get_DnsSafeHost
.no_dead_strip _System_Private_Uri_System_Uri_get_IdnHost
.no_dead_strip _System_Private_Uri_System_Uri_get_IsAbsoluteUri
.no_dead_strip _System_Private_Uri_System_Uri_get_UserEscaped
.no_dead_strip _System_Private_Uri_System_Uri_GetHashCode
.no_dead_strip _System_Private_Uri_System_Uri_ToString
.no_dead_strip _System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int_
.no_dead_strip _System_Private_Uri_System_Uri_System_ISpanFormattable_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider
.no_dead_strip _System_Private_Uri_System_Uri_System_IFormattable_ToString_string_System_IFormatProvider
.no_dead_strip _System_Private_Uri_System_Uri_op_Equality_System_Uri_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_Equals_object
.no_dead_strip _System_Private_Uri_System_Uri_Equals_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_MakeRelativeUri_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string
.no_dead_strip _System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser_
.no_dead_strip _System_Private_Uri_System_Uri_ParseMinimal
.no_dead_strip _System_Private_Uri_System_Uri_PrivateParseMinimal
.no_dead_strip _System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags
.no_dead_strip _System_Private_Uri_System_Uri_CreateHostString
.no_dead_strip _System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo
.no_dead_strip _System_Private_Uri_System_Uri_GetHostViaCustomSyntax
.no_dead_strip _System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents
.no_dead_strip _System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents
.no_dead_strip _System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int
.no_dead_strip _System_Private_Uri_System_Uri_ParseRemaining
.no_dead_strip _System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser_
.no_dead_strip _System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError_
.no_dead_strip _System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string_
.no_dead_strip _System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError_
.no_dead_strip _System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char
.no_dead_strip _System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char
.no_dead_strip _System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser
.no_dead_strip _System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_PathDifference_string_string_bool
.no_dead_strip _System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions_
.no_dead_strip _System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException_
.no_dead_strip _System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string
.no_dead_strip _System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri_
.no_dead_strip _System_Private_Uri_System_Uri_GetComponents_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_UnescapeDataString_string
.no_dead_strip _System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string
.no_dead_strip _System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents
.no_dead_strip _System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string
.no_dead_strip _System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions_
.no_dead_strip _System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool_
.no_dead_strip _System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_Uri_IsBaseOf_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri
.no_dead_strip _System_Private_Uri_System_Uri__cctor
.no_dead_strip _System_Private_Uri_System_Uri_UriInfo_get_MoreInfo
.no_dead_strip _System_Private_Uri_System_Uri_UriInfo__ctor
.no_dead_strip _System_Private_Uri_System_Uri_MoreInfo__ctor
.no_dead_strip _System_Private_Uri_System_UriCreationOptions_get_DangerousDisablePathAndQueryCanonicalization
.no_dead_strip _System_Private_Uri_System_UriFormatException__ctor_string
.no_dead_strip _System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char
.no_dead_strip _System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char
.no_dead_strip _System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char
.no_dead_strip _System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string
.no_dead_strip _System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char
.no_dead_strip _System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
.no_dead_strip _System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder_
.no_dead_strip _System_Private_Uri_System_UriHelper_DecodeHexChars_int_int
.no_dead_strip _System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char
.no_dead_strip _System_Private_Uri_System_UriHelper_IsGenDelim_char
.no_dead_strip _System_Private_Uri_System_UriHelper_IsLWS_char
.no_dead_strip _System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char
.no_dead_strip _System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string
.no_dead_strip _System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_
.no_dead_strip _System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool
.no_dead_strip _System_Private_Uri_System_UriHelper__cctor
.no_dead_strip _System_Private_Uri_System_UriHelper__c__cctor
.no_dead_strip _System_Private_Uri_System_UriHelper__c__ctor
.no_dead_strip _System_Private_Uri_System_UriHelper__c__SpanToLowerInvariantStringb__0_0_System_Span_1_char_System_ReadOnlySpan_1_char
.no_dead_strip _System_Private_Uri_System_UriHelper__c__StripBidiControlCharactersb__27_0_System_Span_1_char_System_ReadOnlySpan_1_char
.no_dead_strip _System_Private_Uri_System_UriParser_get_SchemeName
.no_dead_strip _System_Private_Uri_System_UriParser_get_DefaultPort
.no_dead_strip _System_Private_Uri_System_UriParser_OnNewUri
.no_dead_strip _System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException_
.no_dead_strip _System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException_
.no_dead_strip _System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri
.no_dead_strip _System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_UriParser_get_Flags
.no_dead_strip _System_Private_Uri_System_UriParser_NotAny_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_UriParser_InFact_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_UriParser_IsAllSet_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_UriParser_IsFullMatch_System_UriSyntaxFlags_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_UriParser__ctor_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string
.no_dead_strip _System_Private_Uri_System_UriParser_get_IsSimple
.no_dead_strip _System_Private_Uri_System_UriParser_InternalOnNewUri
.no_dead_strip _System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException_
.no_dead_strip _System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException_
.no_dead_strip _System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri
.no_dead_strip _System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat
.no_dead_strip _System_Private_Uri_System_UriParser__cctor
.no_dead_strip _System_Private_Uri_System_UriParser_BuiltInUriParser__ctor_string_int_System_UriSyntaxFlags
.no_dead_strip _System_Private_Uri_System_SR_Format_string_object
.no_dead_strip _System_Private_Uri_System_SR_Format_string_object_object
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder__ctor_System_Span_1_char
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder__ctor_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_get_Length
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_set_Length_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_get_Capacity
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_GetPinnableReference
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_get_Item_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_ToString
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_get_RawChars
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Append_char
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Append_string
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_AppendSpan_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Grow_int
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Dispose
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_Text_Rune
.no_dead_strip _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune
.no_dead_strip _System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool_
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char_
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int_
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16
.no_dead_strip _System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Length
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Item_int
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Append_T_REF
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Dispose
.no_dead_strip _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int
.no_dead_strip _System_Private_Uri__PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
.no_dead_strip _System_Private_Uri__PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
.no_dead_strip _System_Private_Uri__PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int
.no_dead_strip _System_Private_Uri_wrapper_delegate_invoke_System_Runtime_CompilerServices_ConditionalWeakTable_2_CreateValueCallback_TKey_REF_TValue_REF_invoke_TValue_TKey_TKey_REF
.no_dead_strip _System_Private_Uri_wrapper_other_System_Uri_Offset_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_Uri_Offset_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_UriCreationOptions_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_UriCreationOptions_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_char_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_char_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_byte_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_byte_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_long_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_long_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_uint16_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_Span_1_uint16_PtrToStructure_intptr_object
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_StructureToPtr_object_intptr_bool
.no_dead_strip _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_PtrToStructure_intptr_object
.no_dead_strip _mono_aot_System_Private_Uri_init_method
.no_dead_strip _mono_aot_System_Private_Uri_init_method_gshared_mrgctx
.no_dead_strip _mono_aot_System_Private_Uri_init_method_gshared_this
.no_dead_strip _mono_aot_System_Private_Uri_init_method_gshared_vtable
.no_dead_strip _mono_aot_System_Private_Uri_icall_cold_wrapper_249
.no_dead_strip _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared
.no_dead_strip _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__cctor
.no_dead_strip _System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor
.no_dead_strip _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor

.text
	.align 3
method_addresses:
_mono_aot_System_Private_Urimethod_addresses:
	.globl _mono_aot_System_Private_Urimethod_addresses
	.no_dead_strip method_addresses
bl _System_Private_Uri_System_HexConverter_ToCharsBuffer_byte_System_Span_1_char_int_System_HexConverter_Casing
bl _System_Private_Uri_System_HexConverter_FromChar_int
bl _System_Private_Uri_System_HexConverter_get_CharToHexLookup
bl _System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool_
bl _System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int_
bl _System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string
bl _System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder_
bl _System_Private_Uri_System_DomainNameHelper__cctor
bl _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool
bl _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool
bl _System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool
bl _System_Private_Uri_System_IriHelper_IsInInclusiveRange_uint_uint_uint
bl _System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents
bl _System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents
bl _System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool
bl _System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool_
bl _System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool
bl _System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags
bl _System_Private_Uri_System_Uri_get_IsImplicitFile
bl _System_Private_Uri_System_Uri_get_IsUncOrDosPath
bl _System_Private_Uri_System_Uri_get_IsDosPath
bl _System_Private_Uri_System_Uri_get_IsUncPath
bl _System_Private_Uri_System_Uri_get_IsUnixPath
bl _System_Private_Uri_System_Uri_get_HostType
bl _System_Private_Uri_System_Uri_get_Syntax
bl _System_Private_Uri_System_Uri_get_IsNotAbsoluteUri
bl _System_Private_Uri_System_Uri_get_IriParsing
bl _System_Private_Uri_System_Uri_IriParsingStatic_System_UriParser
bl _System_Private_Uri_System_Uri_get_DisablePathAndQueryCanonicalization
bl _System_Private_Uri_System_Uri_get_UserDrivenParsing
bl _System_Private_Uri_System_Uri_get_SecuredPathIndex
bl _System_Private_Uri_System_Uri_NotAny_System_Uri_Flags
bl _System_Private_Uri_System_Uri_InFact_System_Uri_Flags
bl _System_Private_Uri_System_Uri_StaticNotAny_System_Uri_Flags_System_Uri_Flags
bl _System_Private_Uri_System_Uri_StaticInFact_System_Uri_Flags_System_Uri_Flags
bl _System_Private_Uri_System_Uri_EnsureUriInfo
bl _System_Private_Uri_System_Uri_EnsureParseRemaining
bl _System_Private_Uri_System_Uri_EnsureHostString_bool
bl _System_Private_Uri_System_Uri__ctor_string
bl _System_Private_Uri_System_Uri__ctor_string_bool
bl _System_Private_Uri_System_Uri__ctor_System_Uri_string_bool
bl _System_Private_Uri_System_Uri__ctor_string_System_UriKind
bl _System_Private_Uri_System_Uri__ctor_string_System_UriCreationOptions_
bl _System_Private_Uri_System_Uri__ctor_System_Uri_string
bl _System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool
bl _System_Private_Uri_System_Uri__ctor_System_Uri_System_Uri
bl _System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string_
bl _System_Private_Uri_System_Uri_GetException_System_ParsingError
bl _System_Private_Uri_System_Uri_get_AbsolutePath
bl _System_Private_Uri_System_Uri_get_PrivateAbsolutePath
bl _System_Private_Uri_System_Uri_get_AbsoluteUri
bl _System_Private_Uri_System_Uri_get_LocalPath
bl _System_Private_Uri_System_Uri_get_Authority
bl _System_Private_Uri_System_Uri_get_IsFile
bl _System_Private_Uri_System_Uri_get_PathAndQuery
bl _System_Private_Uri_System_Uri_get_IsUnc
bl _System_Private_Uri_System_Uri_get_Host
bl _System_Private_Uri_System_Uri_StaticIsFile_System_UriParser
bl _System_Private_Uri_System_Uri_GetLocalPath
bl _System_Private_Uri_System_Uri_get_Port
bl _System_Private_Uri_System_Uri_get_Query
bl _System_Private_Uri_System_Uri_get_Fragment
bl _System_Private_Uri_System_Uri_get_Scheme
bl _System_Private_Uri_System_Uri_get_OriginalString
bl _System_Private_Uri_System_Uri_get_DnsSafeHost
bl _System_Private_Uri_System_Uri_get_IdnHost
bl _System_Private_Uri_System_Uri_get_IsAbsoluteUri
bl _System_Private_Uri_System_Uri_get_UserEscaped
bl _System_Private_Uri_System_Uri_GetHashCode
bl _System_Private_Uri_System_Uri_ToString
bl _System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int_
bl _System_Private_Uri_System_Uri_System_ISpanFormattable_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider
bl _System_Private_Uri_System_Uri_System_IFormattable_ToString_string_System_IFormatProvider
bl _System_Private_Uri_System_Uri_op_Equality_System_Uri_System_Uri
bl _System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri
bl _System_Private_Uri_System_Uri_Equals_object
bl _System_Private_Uri_System_Uri_Equals_System_Uri
bl _System_Private_Uri_System_Uri_MakeRelativeUri_System_Uri
bl _System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string
bl _System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser_
bl _System_Private_Uri_System_Uri_ParseMinimal
bl _System_Private_Uri_System_Uri_PrivateParseMinimal
bl _System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags
bl _System_Private_Uri_System_Uri_CreateHostString
bl _System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo
bl _System_Private_Uri_System_Uri_GetHostViaCustomSyntax
bl _System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents
bl _System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat
bl _System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat
bl _System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat
bl _System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents
bl _System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int
bl _System_Private_Uri_System_Uri_ParseRemaining
bl _System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser_
bl _System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError_
bl _System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string_
bl _System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError_
bl _System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char
bl _System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat
bl _System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char
bl _System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser
bl _System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat
bl _System_Private_Uri_System_Uri_PathDifference_string_string_bool
bl _System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions_
bl _System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException_
bl _System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string
bl _System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri_
bl _System_Private_Uri_System_Uri_GetComponents_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_Uri_UnescapeDataString_string
bl _System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string
bl _System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents
bl _System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string
bl _System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions_
bl _System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool_
bl _System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat
bl _System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_Uri_IsBaseOf_System_Uri
bl _System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri
bl _System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri
bl _System_Private_Uri_System_Uri__cctor
bl _System_Private_Uri_System_Uri_UriInfo_get_MoreInfo
bl _System_Private_Uri_System_Uri_UriInfo__ctor
bl _System_Private_Uri_System_Uri_MoreInfo__ctor
bl _System_Private_Uri_System_UriCreationOptions_get_DangerousDisablePathAndQueryCanonicalization
bl _System_Private_Uri_System_UriFormatException__ctor_string
bl _System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char
bl _System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char
bl _System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool
bl _System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char
bl _System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string
bl _System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char
bl _System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool
bl _System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
bl _System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
bl _System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
bl _System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
bl _System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
bl _System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder_
bl _System_Private_Uri_System_UriHelper_DecodeHexChars_int_int
bl _System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char
bl _System_Private_Uri_System_UriHelper_IsGenDelim_char
bl _System_Private_Uri_System_UriHelper_IsLWS_char
bl _System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char
bl _System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string
bl _System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_
bl _System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool
bl _System_Private_Uri_System_UriHelper__cctor
bl _System_Private_Uri_System_UriHelper__c__cctor
bl _System_Private_Uri_System_UriHelper__c__ctor
bl _System_Private_Uri_System_UriHelper__c__SpanToLowerInvariantStringb__0_0_System_Span_1_char_System_ReadOnlySpan_1_char
bl _System_Private_Uri_System_UriHelper__c__StripBidiControlCharactersb__27_0_System_Span_1_char_System_ReadOnlySpan_1_char
bl _System_Private_Uri_System_UriParser_get_SchemeName
bl _System_Private_Uri_System_UriParser_get_DefaultPort
bl _System_Private_Uri_System_UriParser_OnNewUri
bl _System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException_
bl _System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException_
bl _System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri
bl _System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_UriParser_get_Flags
bl _System_Private_Uri_System_UriParser_NotAny_System_UriSyntaxFlags
bl _System_Private_Uri_System_UriParser_InFact_System_UriSyntaxFlags
bl _System_Private_Uri_System_UriParser_IsAllSet_System_UriSyntaxFlags
bl _System_Private_Uri_System_UriParser_IsFullMatch_System_UriSyntaxFlags_System_UriSyntaxFlags
bl _System_Private_Uri_System_UriParser__ctor_System_UriSyntaxFlags
bl _System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string
bl _System_Private_Uri_System_UriParser_get_IsSimple
bl _System_Private_Uri_System_UriParser_InternalOnNewUri
bl _System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException_
bl _System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException_
bl _System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri
bl _System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat
bl _System_Private_Uri_System_UriParser__cctor
bl _System_Private_Uri_System_UriParser_BuiltInUriParser__ctor_string_int_System_UriSyntaxFlags
bl _System_Private_Uri_System_SR_Format_string_object
bl _System_Private_Uri_System_SR_Format_string_object_object
bl _System_Private_Uri_System_Text_ValueStringBuilder__ctor_System_Span_1_char
bl _System_Private_Uri_System_Text_ValueStringBuilder__ctor_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_get_Length
bl _System_Private_Uri_System_Text_ValueStringBuilder_set_Length_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_get_Capacity
bl _System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_GetPinnableReference
bl _System_Private_Uri_System_Text_ValueStringBuilder_get_Item_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_ToString
bl _System_Private_Uri_System_Text_ValueStringBuilder_get_RawChars
bl _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan
bl _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_AsSpan_int_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_Append_char
bl _System_Private_Uri_System_Text_ValueStringBuilder_Append_string
bl _System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string
bl _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char
bl _System_Private_Uri_System_Text_ValueStringBuilder_AppendSpan_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char
bl _System_Private_Uri_System_Text_ValueStringBuilder_Grow_int
bl _System_Private_Uri_System_Text_ValueStringBuilder_Dispose
bl _System_Private_Uri_System_Text_ValueStringBuilder_Append_System_Text_Rune
bl _System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune
bl _System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool_
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl _System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char_
bl _System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16
bl _System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool
bl _System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int_
bl _System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16
bl _System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16
bl method_addresses
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Length
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_get_Item_int
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Append_T_REF
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Dispose
bl _System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int
bl _System_Private_Uri__PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
bl _System_Private_Uri__PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
bl _System_Private_Uri__PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int
bl method_addresses
bl System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT
bl System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int
bl System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool
bl System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool
bl System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool
bl System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose
bl System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int
bl _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
bl _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
bl _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
bl _System_Private_Uri_wrapper_delegate_invoke_System_Runtime_CompilerServices_ConditionalWeakTable_2_CreateValueCallback_TKey_REF_TValue_REF_invoke_TValue_TKey_TKey_REF
bl _System_Private_Uri_wrapper_other_System_Uri_Offset_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_Uri_Offset_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_UriCreationOptions_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_UriCreationOptions_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_Span_1_char_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_Span_1_char_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_byte_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_char_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_Span_1_byte_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_Span_1_byte_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_Span_1_long_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_Span_1_long_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_Span_1_uint16_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_Span_1_uint16_PtrToStructure_intptr_object
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_StructureToPtr_object_intptr_bool
bl _System_Private_Uri_wrapper_other_System_ReadOnlySpan_1_uint16_PtrToStructure_intptr_object
bl _mono_aot_System_Private_Uri_init_method
bl _mono_aot_System_Private_Uri_init_method_gshared_mrgctx
bl _mono_aot_System_Private_Uri_init_method_gshared_this
bl _mono_aot_System_Private_Uri_init_method_gshared_vtable
bl _mono_aot_System_Private_Uri_icall_cold_wrapper_249
bl _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared
bl method_addresses
bl method_addresses
bl method_addresses
bl _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__cctor
bl _System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor
bl _System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
_mono_aot_System_Private_Uriunbox_trampolines:
	.globl _mono_aot_System_Private_Uriunbox_trampolines

	.long 126,178,179,180,181,182,183,184
	.long 185,186,187,188,189,190,191,192
	.long 193,194,195,196,197,198,199,200
	.long 214,215,216,217,218,219,230,231
	.long 232,233,234,235,240,241,242,243
	.long 244,245,246,247,248,249,250,251
	.long 252,253,254,255,256,257
unbox_trampolines_end:
_mono_aot_System_Private_Uriunbox_trampolines_end:
	.globl _mono_aot_System_Private_Uriunbox_trampolines_end

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
_mono_aot_System_Private_Uriunbox_trampoline_addresses:
	.globl _mono_aot_System_Private_Uriunbox_trampoline_addresses
bl ut_126
bl ut_178
bl ut_179
bl ut_180
bl ut_181
bl ut_182
bl ut_183
bl ut_184
bl ut_185
bl ut_186
bl ut_187
bl ut_188
bl ut_189
bl ut_190
bl ut_191
bl ut_192
bl ut_193
bl ut_194
bl ut_195
bl ut_196
bl ut_197
bl ut_198
bl ut_199
bl ut_200
bl ut_214
bl ut_215
bl ut_216
bl ut_217
bl ut_218
bl ut_219
bl ut_230
bl ut_231
bl ut_232
bl ut_233
bl ut_234
bl ut_235
bl ut_240
bl ut_241
bl ut_242
bl ut_243
bl ut_244
bl ut_245
bl ut_246
bl ut_247
bl ut_248
bl ut_249
bl ut_250
bl ut_251
bl ut_252
bl ut_253
bl ut_254
bl ut_255
bl ut_256
bl ut_257

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:
_mono_aot_System_Private_Uriunwind_info:
	.globl _mono_aot_System_Private_Uriunwind_info

	.byte 0,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6,32,12,31,0,68,14,160,1,157
	.byte 20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12,13,12,31,0,68,14,80,157
	.byte 10,158,9,68,13,29,34,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,147,24,148,23,68,149,22,150,21,68
	.byte 151,20,152,19,68,153,18,154,17,34,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,147,18,148,17,68,149,16
	.byte 150,15,68,151,14,152,13,68,153,12,154,11,44,12,31,0,84,14,192,9,157,152,1,158,151,1,68,13,29,68,147,150
	.byte 1,148,149,1,68,149,148,1,150,147,1,68,151,146,1,152,145,1,68,153,144,1,154,143,1,16,12,31,0,68,14,48
	.byte 157,6,158,5,68,13,29,68,153,4,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,23,12,31,0,68
	.byte 14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3,18,12,31,0,68,14,80,157,10,158,9,68,13
	.byte 29,68,153,8,154,7,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,26,12,31,0,68,14,96
	.byte 157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6,18,12,31,0,68,14,64,157,8,158,7,68
	.byte 13,29,68,151,6,152,5

.text
	.align 4
plt:
_mono_aot_System_Private_Uriplt:
	.globl _mono_aot_System_Private_Uriplt
mono_aot_System_Private_Uri_plt:
_p_1_plt_System_Private_Uri__jit_icall_mono_threads_state_poll_llvm:
	.globl _p_1_plt_System_Private_Uri__jit_icall_mono_threads_state_poll_llvm
.private_extern _p_1_plt_System_Private_Uri__jit_icall_mono_threads_state_poll_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_threads_state_poll
plt_System_Private_Uri__jit_icall_mono_threads_state_poll:
_p_1:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #384]
br x16
.word 4535
_p_2_plt_System_Private_Uri__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm:
	.globl _p_2_plt_System_Private_Uri__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
.private_extern _p_2_plt_System_Private_Uri__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_llvm_throw_corlib_exception_abs_trampoline
plt_System_Private_Uri__jit_icall_llvm_throw_corlib_exception_abs_trampoline:
_p_2:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #392]
br x16
.word 4538
_p_3_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm:
	.globl _p_3_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
.private_extern _p_3_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException
plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException:
_p_3:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #400]
br x16
.word 4541
_p_4_plt_System_Private_Uri_string_Substring_int_int_llvm:
	.globl _p_4_plt_System_Private_Uri_string_Substring_int_int_llvm
.private_extern _p_4_plt_System_Private_Uri_string_Substring_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_string_Substring_int_int
plt_System_Private_Uri_string_Substring_int_int:
_p_4:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #408]
br x16
.word 4546
_p_5_plt_System_Private_Uri_System_SpanHelpers_SequenceEqual_byte__byte__uintptr_llvm:
	.globl _p_5_plt_System_Private_Uri_System_SpanHelpers_SequenceEqual_byte__byte__uintptr_llvm
.private_extern _p_5_plt_System_Private_Uri_System_SpanHelpers_SequenceEqual_byte__byte__uintptr_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_SequenceEqual_byte__byte__uintptr
plt_System_Private_Uri_System_SpanHelpers_SequenceEqual_byte__byte__uintptr:
_p_5:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #416]
br x16
.word 4551
_p_6_plt_System_Private_Uri_System_MemoryExtensions_Equals_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm:
	.globl _p_6_plt_System_Private_Uri_System_MemoryExtensions_Equals_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm
.private_extern _p_6_plt_System_Private_Uri_System_MemoryExtensions_Equals_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm
	.no_dead_strip plt_System_Private_Uri_System_MemoryExtensions_Equals_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison
plt_System_Private_Uri_System_MemoryExtensions_Equals_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison:
_p_6:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #424]
br x16
.word 4556
_p_7_plt_System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char_llvm:
	.globl _p_7_plt_System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char_llvm
.private_extern _p_7_plt_System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char
plt_System_Private_Uri_System_UriHelper_SpanToLowerInvariantString_System_ReadOnlySpan_1_char:
_p_7:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #432]
br x16
.word 4561
_p_8_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm:
	.globl _p_8_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
.private_extern _p_8_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument
plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument:
_p_8:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #440]
br x16
.word 4564
_p_9_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyInRange_char_char__char_char_int_llvm:
	.globl _p_9_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyInRange_char_char__char_char_int_llvm
.private_extern _p_9_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyInRange_char_char__char_char_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyInRange_char_char__char_char_int
plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyInRange_char_char__char_char_int:
_p_9:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #448]
br x16
.word 4569
_p_10_plt_System_Private_Uri_System_ThrowHelper_ThrowNotSupportedException_llvm:
	.globl _p_10_plt_System_Private_Uri_System_ThrowHelper_ThrowNotSupportedException_llvm
.private_extern _p_10_plt_System_Private_Uri_System_ThrowHelper_ThrowNotSupportedException_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowNotSupportedException
plt_System_Private_Uri_System_ThrowHelper_ThrowNotSupportedException:
_p_10:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #456]
br x16
.word 4585
_p_11_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyInRangeUnsignedNumber_uint16_System_SpanHelpers_DontNegate_1_uint16_uint16__uint16_uint16_int_llvm:
	.globl _p_11_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyInRangeUnsignedNumber_uint16_System_SpanHelpers_DontNegate_1_uint16_uint16__uint16_uint16_int_llvm
.private_extern _p_11_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyInRangeUnsignedNumber_uint16_System_SpanHelpers_DontNegate_1_uint16_uint16__uint16_uint16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyInRangeUnsignedNumber_uint16_System_SpanHelpers_DontNegate_1_uint16_uint16__uint16_uint16_int
plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyInRangeUnsignedNumber_uint16_System_SpanHelpers_DontNegate_1_uint16_uint16__uint16_uint16_int:
_p_11:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #464]
br x16
.word 4610
_p_12_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm:
	.globl _p_12_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm
.private_extern _p_12_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument:
_p_12:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #472]
br x16
.word 4626
_p_13_plt_System_Private_Uri_System_Buffers_ProbabilisticMap_IndexOfAny_char__int_char__int_llvm:
	.globl _p_13_plt_System_Private_Uri_System_Buffers_ProbabilisticMap_IndexOfAny_char__int_char__int_llvm
.private_extern _p_13_plt_System_Private_Uri_System_Buffers_ProbabilisticMap_IndexOfAny_char__int_char__int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_ProbabilisticMap_IndexOfAny_char__int_char__int
plt_System_Private_Uri_System_Buffers_ProbabilisticMap_IndexOfAny_char__int_char__int:
_p_13:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #480]
br x16
.word 4631
_p_14_plt_System_Private_Uri_System_Text_Ascii_IsValidCore_uint16_uint16__int_llvm:
	.globl _p_14_plt_System_Private_Uri_System_Text_Ascii_IsValidCore_uint16_uint16__int_llvm
.private_extern _p_14_plt_System_Private_Uri_System_Text_Ascii_IsValidCore_uint16_uint16__int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Ascii_IsValidCore_uint16_uint16__int
plt_System_Private_Uri_System_Text_Ascii_IsValidCore_uint16_uint16__int:
_p_14:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #488]
br x16
.word 4636
_p_15_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm:
	.globl _p_15_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm
.private_extern _p_15_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int
plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int:
_p_15:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #496]
br x16
.word 4668
_p_16_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int_llvm:
	.globl _p_16_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int_llvm
.private_extern _p_16_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int
plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int:
_p_16:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #504]
br x16
.word 4684
_p_17_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int_llvm:
	.globl _p_17_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int_llvm
.private_extern _p_17_plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int
plt_System_Private_Uri_System_SpanHelpers_NonPackedIndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int:
_p_17:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #512]
br x16
.word 4700
_p_18_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int_llvm:
	.globl _p_18_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int_llvm
.private_extern _p_18_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int
plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int:
_p_18:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #520]
br x16
.word 4716
_p_19_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int16_int_llvm:
	.globl _p_19_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int16_int_llvm
.private_extern _p_19_plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int16_int
plt_System_Private_Uri_System_SpanHelpers_IndexOfAnyValueType_int16_System_SpanHelpers_DontNegate_1_int16_int16__int16_int16_int16_int16_int16_int:
_p_19:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 4732
_p_20_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_llvm:
	.globl _p_20_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_llvm
.private_extern _p_20_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string
plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string:
_p_20:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 4748
_p_21_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_llvm:
	.globl _p_21_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_llvm
.private_extern _p_21_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string
plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string:
_p_21:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 4751
_p_22_plt_System_Private_Uri__jit_icall_mono_helper_ldstr_llvm:
	.globl _p_22_plt_System_Private_Uri__jit_icall_mono_helper_ldstr_llvm
.private_extern _p_22_plt_System_Private_Uri__jit_icall_mono_helper_ldstr_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_helper_ldstr
plt_System_Private_Uri__jit_icall_mono_helper_ldstr:
_p_22:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 4756
_p_23_plt_System_Private_Uri_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm:
	.globl _p_23_plt_System_Private_Uri_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
.private_extern _p_23_plt_System_Private_Uri_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
	.no_dead_strip plt_System_Private_Uri_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_System_Private_Uri_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_23:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 4759
_p_24_plt_System_Private_Uri_System_UriFormatException__ctor_string_llvm:
	.globl _p_24_plt_System_Private_Uri_System_UriFormatException__ctor_string_llvm
.private_extern _p_24_plt_System_Private_Uri_System_UriFormatException__ctor_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriFormatException__ctor_string
plt_System_Private_Uri_System_UriFormatException__ctor_string:
_p_24:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #568]
br x16
.word 4767
_p_25_plt_System_Private_Uri__jit_icall_mono_arch_throw_exception_llvm:
	.globl _p_25_plt_System_Private_Uri__jit_icall_mono_arch_throw_exception_llvm
.private_extern _p_25_plt_System_Private_Uri__jit_icall_mono_arch_throw_exception_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_arch_throw_exception
plt_System_Private_Uri__jit_icall_mono_arch_throw_exception:
_p_25:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #576]
br x16
.word 4770
_p_26_plt_System_Private_Uri_string_ToLowerInvariant_llvm:
	.globl _p_26_plt_System_Private_Uri_string_ToLowerInvariant_llvm
.private_extern _p_26_plt_System_Private_Uri_string_ToLowerInvariant_llvm
	.no_dead_strip plt_System_Private_Uri_string_ToLowerInvariant
plt_System_Private_Uri_string_ToLowerInvariant:
_p_26:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #584]
br x16
.word 4772
_p_27_plt_System_Private_Uri_System_MemoryExtensions_StartsWith_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm:
	.globl _p_27_plt_System_Private_Uri_System_MemoryExtensions_StartsWith_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm
.private_extern _p_27_plt_System_Private_Uri_System_MemoryExtensions_StartsWith_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison_llvm
	.no_dead_strip plt_System_Private_Uri_System_MemoryExtensions_StartsWith_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison
plt_System_Private_Uri_System_MemoryExtensions_StartsWith_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_StringComparison:
_p_27:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #592]
br x16
.word 4777
_p_28_plt_System_Private_Uri_System_MemoryExtensions_ToLowerInvariant_System_ReadOnlySpan_1_char_System_Span_1_char_llvm:
	.globl _p_28_plt_System_Private_Uri_System_MemoryExtensions_ToLowerInvariant_System_ReadOnlySpan_1_char_System_Span_1_char_llvm
.private_extern _p_28_plt_System_Private_Uri_System_MemoryExtensions_ToLowerInvariant_System_ReadOnlySpan_1_char_System_Span_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_MemoryExtensions_ToLowerInvariant_System_ReadOnlySpan_1_char_System_Span_1_char
plt_System_Private_Uri_System_MemoryExtensions_ToLowerInvariant_System_ReadOnlySpan_1_char_System_Span_1_char:
_p_28:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 4782
_p_29_plt_System_Private_Uri_System_Text_ValueStringBuilder_Grow_int_llvm:
	.globl _p_29_plt_System_Private_Uri_System_Text_ValueStringBuilder_Grow_int_llvm
.private_extern _p_29_plt_System_Private_Uri_System_Text_ValueStringBuilder_Grow_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_Grow_int
plt_System_Private_Uri_System_Text_ValueStringBuilder_Grow_int:
_p_29:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 4787
_p_30_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_int_int_llvm:
	.globl _p_30_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_int_int_llvm
.private_extern _p_30_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_int_int
plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_int_int:
_p_30:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 4790
_p_31_plt_System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string_llvm:
	.globl _p_31_plt_System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string_llvm
.private_extern _p_31_plt_System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string
plt_System_Private_Uri_System_Text_ValueStringBuilder_AppendSlow_string:
_p_31:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 4795
_p_32_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_int_int_llvm:
	.globl _p_32_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_int_int_llvm
.private_extern _p_32_plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_int_int
plt_System_Private_Uri_System_Globalization_IdnMapping_GetAscii_string_int_int:
_p_32:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 4798
_p_33_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_llvm:
	.globl _p_33_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_llvm
.private_extern _p_33_plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string
plt_System_Private_Uri_System_Globalization_IdnMapping_GetUnicode_string:
_p_33:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 4803
_p_34_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char_llvm:
	.globl _p_34_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char_llvm
.private_extern _p_34_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char
plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_char:
_p_34:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 4808
_p_35_plt_System_Private_Uri__jit_icall_mono_thread_get_undeniable_exception_llvm:
	.globl _p_35_plt_System_Private_Uri__jit_icall_mono_thread_get_undeniable_exception_llvm
.private_extern _p_35_plt_System_Private_Uri__jit_icall_mono_thread_get_undeniable_exception_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_thread_get_undeniable_exception
plt_System_Private_Uri__jit_icall_mono_thread_get_undeniable_exception:
_p_35:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 4811
_p_36_plt_System_Private_Uri_System_Buffers_SearchValues_Create_System_ReadOnlySpan_1_char_llvm:
	.globl _p_36_plt_System_Private_Uri_System_Buffers_SearchValues_Create_System_ReadOnlySpan_1_char_llvm
.private_extern _p_36_plt_System_Private_Uri_System_Buffers_SearchValues_Create_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_SearchValues_Create_System_ReadOnlySpan_1_char
plt_System_Private_Uri_System_Buffers_SearchValues_Create_System_ReadOnlySpan_1_char:
_p_36:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 4814
_p_37_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_char_System_Text_Rune__llvm:
	.globl _p_37_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_char_System_Text_Rune__llvm
.private_extern _p_37_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_char_System_Text_Rune__llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune_TryCreate_char_char_System_Text_Rune_
plt_System_Private_Uri_System_Text_Rune_TryCreate_char_char_System_Text_Rune_:
_p_37:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 4819
_p_38_plt_System_Private_Uri_System_SpanHelpers_NonPackedContainsValueType_int16_int16__int16_int_llvm:
	.globl _p_38_plt_System_Private_Uri_System_SpanHelpers_NonPackedContainsValueType_int16_int16__int16_int_llvm
.private_extern _p_38_plt_System_Private_Uri_System_SpanHelpers_NonPackedContainsValueType_int16_int16__int16_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_NonPackedContainsValueType_int16_int16__int16_int
plt_System_Private_Uri_System_SpanHelpers_NonPackedContainsValueType_int16_int16__int16_int:
_p_38:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 4824
_p_39_plt_System_Private_Uri_System_UriHelper_IsGenDelim_char_llvm:
	.globl _p_39_plt_System_Private_Uri_System_UriHelper_IsGenDelim_char_llvm
.private_extern _p_39_plt_System_Private_Uri_System_UriHelper_IsGenDelim_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_IsGenDelim_char
plt_System_Private_Uri_System_UriHelper_IsGenDelim_char:
_p_39:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 4840
_p_40_plt_System_Private_Uri_System_Text_ValueStringBuilder__ctor_int_llvm:
	.globl _p_40_plt_System_Private_Uri_System_Text_ValueStringBuilder__ctor_int_llvm
.private_extern _p_40_plt_System_Private_Uri_System_Text_ValueStringBuilder__ctor_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder__ctor_int
plt_System_Private_Uri_System_Text_ValueStringBuilder__ctor_int:
_p_40:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 4843
_p_41_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool_llvm:
	.globl _p_41_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool_llvm
.private_extern _p_41_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool
plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_bool:
_p_41:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 4846
_p_42_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_System_Text_Rune__llvm:
	.globl _p_42_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_System_Text_Rune__llvm
.private_extern _p_42_plt_System_Private_Uri_System_Text_Rune_TryCreate_char_System_Text_Rune__llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune_TryCreate_char_System_Text_Rune_
plt_System_Private_Uri_System_Text_Rune_TryCreate_char_System_Text_Rune_:
_p_42:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 4848
_p_43_plt_System_Private_Uri_System_Text_Rune_TryEncodeToUtf8_System_Text_Rune_System_Span_1_byte_int__llvm:
	.globl _p_43_plt_System_Private_Uri_System_Text_Rune_TryEncodeToUtf8_System_Text_Rune_System_Span_1_byte_int__llvm
.private_extern _p_43_plt_System_Private_Uri_System_Text_Rune_TryEncodeToUtf8_System_Text_Rune_System_Span_1_byte_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune_TryEncodeToUtf8_System_Text_Rune_System_Span_1_byte_int_
plt_System_Private_Uri_System_Text_Rune_TryEncodeToUtf8_System_Text_Rune_System_Span_1_byte_int_:
_p_43:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 4853
_p_44_plt_System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder__llvm:
	.globl _p_44_plt_System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder__llvm
.private_extern _p_44_plt_System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder_
plt_System_Private_Uri_System_UriHelper_PercentEncodeByte_byte_System_Text_ValueStringBuilder_:
_p_44:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 4858
_p_45_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm:
	.globl _p_45_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm
.private_extern _p_45_plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentException_DestinationTooShort
plt_System_Private_Uri_System_ThrowHelper_ThrowArgumentException_DestinationTooShort:
_p_45:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 4861
_p_46_plt_System_Private_Uri_System_Text_Rune__ctor_char_char_llvm:
	.globl _p_46_plt_System_Private_Uri_System_Text_Rune__ctor_char_char_llvm
.private_extern _p_46_plt_System_Private_Uri_System_Text_Rune__ctor_char_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune__ctor_char_char
plt_System_Private_Uri_System_Text_Rune__ctor_char_char:
_p_46:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 4866
_p_47_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool_llvm:
	.globl _p_47_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool_llvm
.private_extern _p_47_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool
plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_char_char_bool__bool:
_p_47:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 4871
_p_48_plt_System_Private_Uri_System_UriHelper_DecodeHexChars_int_int_llvm:
	.globl _p_48_plt_System_Private_Uri_System_UriHelper_DecodeHexChars_int_int_llvm
.private_extern _p_48_plt_System_Private_Uri_System_UriHelper_DecodeHexChars_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_DecodeHexChars_int_int
plt_System_Private_Uri_System_UriHelper_DecodeHexChars_int_int:
_p_48:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 4873
_p_49_plt_System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents_llvm:
	.globl _p_49_plt_System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents_llvm
.private_extern _p_49_plt_System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents_llvm
	.no_dead_strip plt_System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents
plt_System_Private_Uri_System_IriHelper_CheckIsReserved_char_System_UriComponents:
_p_49:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 4876
_p_50_plt_System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char_llvm:
	.globl _p_50_plt_System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char_llvm
.private_extern _p_50_plt_System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char
plt_System_Private_Uri_System_UriHelper_IsNotSafeForUnescape_char:
_p_50:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 4878
_p_51_plt_System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool_llvm:
	.globl _p_51_plt_System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool_llvm
.private_extern _p_51_plt_System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool
plt_System_Private_Uri_System_PercentEncodingHelper_UnescapePercentEncodedUTF8Sequence_char__int_System_Text_ValueStringBuilder__bool_bool:
_p_51:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #784]
br x16
.word 4881
_p_52_plt_System_Private_Uri_System_Text_ValueStringBuilder_ToString_llvm:
	.globl _p_52_plt_System_Private_Uri_System_Text_ValueStringBuilder_ToString_llvm
.private_extern _p_52_plt_System_Private_Uri_System_Text_ValueStringBuilder_ToString_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_ToString
plt_System_Private_Uri_System_Text_ValueStringBuilder_ToString:
_p_52:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #792]
br x16
.word 4883
_p_53_plt_System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char_llvm:
	.globl _p_53_plt_System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char_llvm
.private_extern _p_53_plt_System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char
plt_System_Private_Uri_System_Text_ValueStringBuilder_Append_System_ReadOnlySpan_1_char:
_p_53:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 4886
_p_54_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf8_System_ReadOnlySpan_1_byte_System_Text_Rune__int__llvm:
	.globl _p_54_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf8_System_ReadOnlySpan_1_byte_System_Text_Rune__int__llvm
.private_extern _p_54_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf8_System_ReadOnlySpan_1_byte_System_Text_Rune__int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf8_System_ReadOnlySpan_1_byte_System_Text_Rune__int_
plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf8_System_ReadOnlySpan_1_byte_System_Text_Rune__int_:
_p_54:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 4889
_p_55_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune_llvm:
	.globl _p_55_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune_llvm
.private_extern _p_55_plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune
plt_System_Private_Uri_System_Text_ValueStringBuilder_GrowAndAppend_System_Text_Rune:
_p_55:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 4894
_p_56_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool_llvm:
	.globl _p_56_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool_llvm
.private_extern _p_56_plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool
plt_System_Private_Uri_System_IriHelper_CheckIriUnicodeRange_uint_bool:
_p_56:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 4897
_p_57_plt_System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool__llvm:
	.globl _p_57_plt_System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool__llvm
.private_extern _p_57_plt_System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool__llvm
	.no_dead_strip plt_System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool_
plt_System_Private_Uri_System_DomainNameHelper_ParseCanonicalName_string_int_int_bool_:
_p_57:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 4899
_p_58_plt_System_Private_Uri_char_IsLetter_char_llvm:
	.globl _p_58_plt_System_Private_Uri_char_IsLetter_char_llvm
.private_extern _p_58_plt_System_Private_Uri_char_IsLetter_char_llvm
	.no_dead_strip plt_System_Private_Uri_char_IsLetter_char
plt_System_Private_Uri_char_IsLetter_char:
_p_58:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 4901
_p_59_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_fast_llvm:
	.globl _p_59_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_fast_llvm
.private_extern _p_59_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_fast_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_fast
plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_fast:
_p_59:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 4906
_p_60_plt_System_Private_Uri__jit_icall_ves_icall_thread_finish_async_abort_llvm:
	.globl _p_60_plt_System_Private_Uri__jit_icall_ves_icall_thread_finish_async_abort_llvm
.private_extern _p_60_plt_System_Private_Uri__jit_icall_ves_icall_thread_finish_async_abort_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_ves_icall_thread_finish_async_abort
plt_System_Private_Uri__jit_icall_ves_icall_thread_finish_async_abort:
_p_60:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 4909
_p_61_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_internal_llvm:
	.globl _p_61_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_internal_llvm
.private_extern _p_61_plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_internal_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_internal
plt_System_Private_Uri__jit_icall_mono_monitor_enter_v4_internal:
_p_61:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 4912
_p_62_plt_System_Private_Uri_System_Threading_Monitor_Exit_object_llvm:
	.globl _p_62_plt_System_Private_Uri_System_Threading_Monitor_Exit_object_llvm
.private_extern _p_62_plt_System_Private_Uri_System_Threading_Monitor_Exit_object_llvm
	.no_dead_strip plt_System_Private_Uri_System_Threading_Monitor_Exit_object
plt_System_Private_Uri_System_Threading_Monitor_Exit_object:
_p_62:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 4915
_p_63_plt_System_Private_Uri__jit_icall_llvm_resume_unwind_trampoline_llvm:
	.globl _p_63_plt_System_Private_Uri__jit_icall_llvm_resume_unwind_trampoline_llvm
.private_extern _p_63_plt_System_Private_Uri__jit_icall_llvm_resume_unwind_trampoline_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_llvm_resume_unwind_trampoline
plt_System_Private_Uri__jit_icall_llvm_resume_unwind_trampoline:
_p_63:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 4920
_p_64_plt_System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags_llvm:
	.globl _p_64_plt_System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags_llvm
.private_extern _p_64_plt_System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags
plt_System_Private_Uri_System_Uri_CreateUriInfo_System_Uri_Flags:
_p_64:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 4923
_p_65_plt_System_Private_Uri_System_Uri_ParseRemaining_llvm:
	.globl _p_65_plt_System_Private_Uri_System_Uri_ParseRemaining_llvm
.private_extern _p_65_plt_System_Private_Uri_System_Uri_ParseRemaining_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_ParseRemaining
plt_System_Private_Uri_System_Uri_ParseRemaining:
_p_65:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 4925
_p_66_plt_System_Private_Uri_System_Uri_EnsureUriInfo_llvm:
	.globl _p_66_plt_System_Private_Uri_System_Uri_EnsureUriInfo_llvm
.private_extern _p_66_plt_System_Private_Uri_System_Uri_EnsureUriInfo_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_EnsureUriInfo
plt_System_Private_Uri_System_Uri_EnsureUriInfo:
_p_66:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 4927
_p_67_plt_System_Private_Uri_System_Uri_CreateHostString_llvm:
	.globl _p_67_plt_System_Private_Uri_System_Uri_CreateHostString_llvm
.private_extern _p_67_plt_System_Private_Uri_System_Uri_CreateHostString_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateHostString
plt_System_Private_Uri_System_Uri_CreateHostString:
_p_67:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 4929
_p_68_plt_System_Private_Uri_System_ArgumentNullException_ThrowIfNull_object_string_llvm:
	.globl _p_68_plt_System_Private_Uri_System_ArgumentNullException_ThrowIfNull_object_string_llvm
.private_extern _p_68_plt_System_Private_Uri_System_ArgumentNullException_ThrowIfNull_object_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_ArgumentNullException_ThrowIfNull_object_string
plt_System_Private_Uri_System_ArgumentNullException_ThrowIfNull_object_string:
_p_68:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 4931
_p_69_plt_System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions__llvm:
	.globl _p_69_plt_System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions__llvm
.private_extern _p_69_plt_System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions_
plt_System_Private_Uri_System_Uri_CreateThis_string_bool_System_UriKind_System_UriCreationOptions_:
_p_69:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 4936
_p_70_plt_System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool_llvm:
	.globl _p_70_plt_System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool_llvm
.private_extern _p_70_plt_System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool
plt_System_Private_Uri_System_Uri_CreateUri_System_Uri_string_bool:
_p_70:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 4938
_p_71_plt_System_Private_Uri__jit_icall_mono_create_corlib_exception_1_llvm:
	.globl _p_71_plt_System_Private_Uri__jit_icall_mono_create_corlib_exception_1_llvm
.private_extern _p_71_plt_System_Private_Uri__jit_icall_mono_create_corlib_exception_1_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_create_corlib_exception_1
plt_System_Private_Uri__jit_icall_mono_create_corlib_exception_1:
_p_71:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 4940
_p_72_plt_System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException__llvm:
	.globl _p_72_plt_System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException__llvm
.private_extern _p_72_plt_System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException_
plt_System_Private_Uri_System_UriParser_InternalResolve_System_Uri_System_Uri_System_UriFormatException_:
_p_72:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 4943
_p_73_plt_System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool__llvm:
	.globl _p_73_plt_System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool__llvm
.private_extern _p_73_plt_System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool_
plt_System_Private_Uri_System_Uri_ResolveHelper_System_Uri_System_Uri_string__bool_:
_p_73:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 4946
_p_74_plt_System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri_llvm:
	.globl _p_74_plt_System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri_llvm
.private_extern _p_74_plt_System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri
plt_System_Private_Uri_System_Uri_op_Inequality_System_Uri_System_Uri:
_p_74:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 4948
_p_75_plt_System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri_llvm:
	.globl _p_75_plt_System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri_llvm
.private_extern _p_75_plt_System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri
plt_System_Private_Uri_System_Uri_CreateThisFromUri_System_Uri:
_p_75:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 4950
_p_76_plt_System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat_llvm:
	.globl _p_76_plt_System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat_llvm
.private_extern _p_76_plt_System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat
plt_System_Private_Uri_System_Uri_CombineUri_System_Uri_string_System_UriFormat:
_p_76:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 4952
_p_77_plt_System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError__llvm:
	.globl _p_77_plt_System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError__llvm
.private_extern _p_77_plt_System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError_
plt_System_Private_Uri_System_Uri_CheckSchemeSyntax_System_ReadOnlySpan_1_char_System_ParsingError_:
_p_77:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 4954
_p_78_plt_System_Private_Uri_string_Substring_int_llvm:
	.globl _p_78_plt_System_Private_Uri_string_Substring_int_llvm
.private_extern _p_78_plt_System_Private_Uri_string_Substring_int_llvm
	.no_dead_strip plt_System_Private_Uri_string_Substring_int
plt_System_Private_Uri_string_Substring_int:
_p_78:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 4956
_p_79_plt_System_Private_Uri_System_Uri_get_PrivateAbsolutePath_llvm:
	.globl _p_79_plt_System_Private_Uri_System_Uri_get_PrivateAbsolutePath_llvm
.private_extern _p_79_plt_System_Private_Uri_System_Uri_get_PrivateAbsolutePath_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_PrivateAbsolutePath
plt_System_Private_Uri_System_Uri_get_PrivateAbsolutePath:
_p_79:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 4961
_p_80_plt_System_Private_Uri_System_Uri_UriInfo_get_MoreInfo_llvm:
	.globl _p_80_plt_System_Private_Uri_System_Uri_UriInfo_get_MoreInfo_llvm
.private_extern _p_80_plt_System_Private_Uri_System_Uri_UriInfo_get_MoreInfo_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_UriInfo_get_MoreInfo
plt_System_Private_Uri_System_Uri_UriInfo_get_MoreInfo:
_p_80:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 4963
_p_81_plt_System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat_llvm:
	.globl _p_81_plt_System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat_llvm
.private_extern _p_81_plt_System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_Uri_GetParts_System_UriComponents_System_UriFormat:
_p_81:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 4965
_p_82_plt_System_Private_Uri_System_Uri_GetLocalPath_llvm:
	.globl _p_82_plt_System_Private_Uri_System_Uri_GetLocalPath_llvm
.private_extern _p_82_plt_System_Private_Uri_System_Uri_GetLocalPath_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetLocalPath
plt_System_Private_Uri_System_Uri_GetLocalPath:
_p_82:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 4967
_p_83_plt_System_Private_Uri_System_Uri_EnsureParseRemaining_llvm:
	.globl _p_83_plt_System_Private_Uri_System_Uri_EnsureParseRemaining_llvm
.private_extern _p_83_plt_System_Private_Uri_System_Uri_EnsureParseRemaining_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_EnsureParseRemaining
plt_System_Private_Uri_System_Uri_EnsureParseRemaining:
_p_83:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 4969
_p_84_plt_System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat_llvm:
	.globl _p_84_plt_System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat_llvm
.private_extern _p_84_plt_System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_Uri_GetUnescapedParts_System_UriComponents_System_UriFormat:
_p_84:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 4971
_p_85_plt_System_Private_Uri_System_Uri_EnsureHostString_bool_llvm:
	.globl _p_85_plt_System_Private_Uri_System_Uri_EnsureHostString_bool_llvm
.private_extern _p_85_plt_System_Private_Uri_System_Uri_EnsureHostString_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_EnsureHostString_bool
plt_System_Private_Uri_System_Uri_EnsureHostString_bool:
_p_85:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 4973
_p_86_plt_System_Private_Uri_wrapper_alloc_object_AllocVector_intptr_intptr_llvm:
	.globl _p_86_plt_System_Private_Uri_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
.private_extern _p_86_plt_System_Private_Uri_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
	.no_dead_strip plt_System_Private_Uri_wrapper_alloc_object_AllocVector_intptr_intptr
plt_System_Private_Uri_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_86:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 4975
_p_87_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm:
	.globl _p_87_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
.private_extern _p_87_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool:
_p_87:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 4983
_p_88_plt_System_Private_Uri_System_SpanHelpers_ReplaceValueType_uint16_uint16__uint16__uint16_uint16_uintptr_llvm:
	.globl _p_88_plt_System_Private_Uri_System_SpanHelpers_ReplaceValueType_uint16_uint16__uint16__uint16_uint16_uintptr_llvm
.private_extern _p_88_plt_System_Private_Uri_System_SpanHelpers_ReplaceValueType_uint16_uint16__uint16__uint16_uint16_uintptr_llvm
	.no_dead_strip plt_System_Private_Uri_System_SpanHelpers_ReplaceValueType_uint16_uint16__uint16__uint16_uint16_uintptr
plt_System_Private_Uri_System_SpanHelpers_ReplaceValueType_uint16_uint16__uint16__uint16_uint16_uintptr:
_p_88:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 4986
_p_89_plt_System_Private_Uri_string__ctor_char___int_int_llvm:
	.globl _p_89_plt_System_Private_Uri_string__ctor_char___int_int_llvm
.private_extern _p_89_plt_System_Private_Uri_string__ctor_char___int_int_llvm
	.no_dead_strip plt_System_Private_Uri_string__ctor_char___int_int
plt_System_Private_Uri_string__ctor_char___int_int:
_p_89:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 5002
_p_90_plt_System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser_llvm:
	.globl _p_90_plt_System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser_llvm
.private_extern _p_90_plt_System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser
plt_System_Private_Uri_System_Uri_Compress_char___int_int__System_UriParser:
_p_90:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 5007
_p_91_plt_System_Private_Uri_string_Replace_char_char_llvm:
	.globl _p_91_plt_System_Private_Uri_string_Replace_char_char_llvm
.private_extern _p_91_plt_System_Private_Uri_string_Replace_char_char_llvm
	.no_dead_strip plt_System_Private_Uri_string_Replace_char_char
plt_System_Private_Uri_string_Replace_char_char:
_p_91:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 5009
_p_92_plt_System_Private_Uri_string_Remove_int_int_llvm:
	.globl _p_92_plt_System_Private_Uri_string_Remove_int_int_llvm
.private_extern _p_92_plt_System_Private_Uri_string_Remove_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_string_Remove_int_int
plt_System_Private_Uri_string_Remove_int_int:
_p_92:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 5014
_p_93_plt_System_Private_Uri_string_Insert_int_string_llvm:
	.globl _p_93_plt_System_Private_Uri_string_Insert_int_string_llvm
.private_extern _p_93_plt_System_Private_Uri_string_Insert_int_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_Insert_int_string
plt_System_Private_Uri_string_Insert_int_string:
_p_93:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 5019
_p_94_plt_System_Private_Uri_System_Uri_get_IdnHost_llvm:
	.globl _p_94_plt_System_Private_Uri_System_Uri_get_IdnHost_llvm
.private_extern _p_94_plt_System_Private_Uri_System_Uri_get_IdnHost_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_IdnHost
plt_System_Private_Uri_System_Uri_get_IdnHost:
_p_94:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 5024
_p_95_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm:
	.globl _p_95_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
.private_extern _p_95_plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
plt_System_Private_Uri_System_UriHelper_UnescapeString_string_int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool:
_p_95:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 5026
_p_96_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm:
	.globl _p_96_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
.private_extern _p_96_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char
plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char:
_p_96:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 5029
_p_97_plt_System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string_llvm:
	.globl _p_97_plt_System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string_llvm
.private_extern _p_97_plt_System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string
plt_System_Private_Uri_System_DomainNameHelper_IdnEquivalent_string:
_p_97:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 5034
_p_98_plt_System_Private_Uri__jit_icall_mono_generic_class_init_llvm:
	.globl _p_98_plt_System_Private_Uri__jit_icall_mono_generic_class_init_llvm
.private_extern _p_98_plt_System_Private_Uri__jit_icall_mono_generic_class_init_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_generic_class_init
plt_System_Private_Uri__jit_icall_mono_generic_class_init:
_p_98:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 5036
_p_99_plt_System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat_llvm:
	.globl _p_99_plt_System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat_llvm
.private_extern _p_99_plt_System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_Uri_GetComponentsHelper_System_UriComponents_System_UriFormat:
_p_99:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 5039
_p_100_plt_System_Private_Uri_System_ReadOnlySpan_1_char_TryCopyTo_System_Span_1_char_llvm:
	.globl _p_100_plt_System_Private_Uri_System_ReadOnlySpan_1_char_TryCopyTo_System_Span_1_char_llvm
.private_extern _p_100_plt_System_Private_Uri_System_ReadOnlySpan_1_char_TryCopyTo_System_Span_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_ReadOnlySpan_1_char_TryCopyTo_System_Span_1_char
plt_System_Private_Uri_System_ReadOnlySpan_1_char_TryCopyTo_System_Span_1_char:
_p_100:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 5041
_p_101_plt_System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat_llvm:
	.globl _p_101_plt_System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat_llvm
.private_extern _p_101_plt_System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat
plt_System_Private_Uri_System_Uri_TryRecreateParts_System_Span_1_char_int__System_UriComponents_uint16_System_UriFormat:
_p_101:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 5052
_p_102_plt_System_Private_Uri_System_Uri_get_SecuredPathIndex_llvm:
	.globl _p_102_plt_System_Private_Uri_System_Uri_get_SecuredPathIndex_llvm
.private_extern _p_102_plt_System_Private_Uri_System_Uri_get_SecuredPathIndex_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_SecuredPathIndex
plt_System_Private_Uri_System_Uri_get_SecuredPathIndex:
_p_102:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 5054
_p_103_plt_System_Private_Uri_System_SR_Format_string_object_llvm:
	.globl _p_103_plt_System_Private_Uri_System_SR_Format_string_object_llvm
.private_extern _p_103_plt_System_Private_Uri_System_SR_Format_string_object_llvm
	.no_dead_strip plt_System_Private_Uri_System_SR_Format_string_object
plt_System_Private_Uri_System_SR_Format_string_object:
_p_103:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 5056
_p_104_plt_System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int__llvm:
	.globl _p_104_plt_System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int__llvm
.private_extern _p_104_plt_System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int_
plt_System_Private_Uri_System_Uri_TryFormat_System_Span_1_char_int_:
_p_104:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 5059
_p_105_plt_System_Private_Uri_System_Uri_Equals_System_Uri_llvm:
	.globl _p_105_plt_System_Private_Uri_System_Uri_Equals_System_Uri_llvm
.private_extern _p_105_plt_System_Private_Uri_System_Uri_Equals_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_Equals_System_Uri
plt_System_Private_Uri_System_Uri_Equals_System_Uri:
_p_105:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 5061
_p_106_plt_System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri__llvm:
	.globl _p_106_plt_System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri__llvm
.private_extern _p_106_plt_System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri_
plt_System_Private_Uri_System_Uri_TryCreate_string_System_UriKind_System_Uri_:
_p_106:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 5063
_p_107_plt_System_Private_Uri_string_Equals_string_string_System_StringComparison_llvm:
	.globl _p_107_plt_System_Private_Uri_string_Equals_string_string_System_StringComparison_llvm
.private_extern _p_107_plt_System_Private_Uri_string_Equals_string_string_System_StringComparison_llvm
	.no_dead_strip plt_System_Private_Uri_string_Equals_string_string_System_StringComparison
plt_System_Private_Uri_string_Equals_string_string_System_StringComparison:
_p_107:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 5065
_p_108_plt_System_Private_Uri_string_Equals_string_llvm:
	.globl _p_108_plt_System_Private_Uri_string_Equals_string_llvm
.private_extern _p_108_plt_System_Private_Uri_string_Equals_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_Equals_string
plt_System_Private_Uri_string_Equals_string:
_p_108:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 5070
_p_109_plt_System_Private_Uri_System_Uri_get_Port_llvm:
	.globl _p_109_plt_System_Private_Uri_System_Uri_get_Port_llvm
.private_extern _p_109_plt_System_Private_Uri_System_Uri_get_Port_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_Port
plt_System_Private_Uri_System_Uri_get_Port:
_p_109:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 5075
_p_110_plt_System_Private_Uri_System_Uri_get_Scheme_llvm:
	.globl _p_110_plt_System_Private_Uri_System_Uri_get_Scheme_llvm
.private_extern _p_110_plt_System_Private_Uri_System_Uri_get_Scheme_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_Scheme
plt_System_Private_Uri_System_Uri_get_Scheme:
_p_110:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 5077
_p_111_plt_System_Private_Uri_string_op_Equality_string_string_llvm:
	.globl _p_111_plt_System_Private_Uri_string_op_Equality_string_string_llvm
.private_extern _p_111_plt_System_Private_Uri_string_op_Equality_string_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_op_Equality_string_string
plt_System_Private_Uri_string_op_Equality_string_string:
_p_111:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 5079
_p_112_plt_System_Private_Uri_System_Uri_get_Host_llvm:
	.globl _p_112_plt_System_Private_Uri_System_Uri_get_Host_llvm
.private_extern _p_112_plt_System_Private_Uri_System_Uri_get_Host_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_Host
plt_System_Private_Uri_System_Uri_get_Host:
_p_112:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1272]
br x16
.word 5084
_p_113_plt_System_Private_Uri_System_Uri_get_AbsolutePath_llvm:
	.globl _p_113_plt_System_Private_Uri_System_Uri_get_AbsolutePath_llvm
.private_extern _p_113_plt_System_Private_Uri_System_Uri_get_AbsolutePath_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_AbsolutePath
plt_System_Private_Uri_System_Uri_get_AbsolutePath:
_p_113:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1280]
br x16
.word 5086
_p_114_plt_System_Private_Uri_System_Uri_PathDifference_string_string_bool_llvm:
	.globl _p_114_plt_System_Private_Uri_System_Uri_PathDifference_string_string_bool_llvm
.private_extern _p_114_plt_System_Private_Uri_System_Uri_PathDifference_string_string_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_PathDifference_string_string_bool
plt_System_Private_Uri_System_Uri_PathDifference_string_string_bool:
_p_114:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1288]
br x16
.word 5088
_p_115_plt_System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string_llvm:
	.globl _p_115_plt_System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string_llvm
.private_extern _p_115_plt_System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string
plt_System_Private_Uri_System_Uri_CheckForColonInFirstPathSegment_string:
_p_115:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1296]
br x16
.word 5090
_p_116_plt_System_Private_Uri_string_Concat_string_string_llvm:
	.globl _p_116_plt_System_Private_Uri_string_Concat_string_string_llvm
.private_extern _p_116_plt_System_Private_Uri_string_Concat_string_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_string_string
plt_System_Private_Uri_string_Concat_string_string:
_p_116:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1304]
br x16
.word 5092
_p_117_plt_System_Private_Uri_System_Uri__ctor_string_System_UriKind_llvm:
	.globl _p_117_plt_System_Private_Uri_System_Uri__ctor_string_System_UriKind_llvm
.private_extern _p_117_plt_System_Private_Uri_System_Uri__ctor_string_System_UriKind_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri__ctor_string_System_UriKind
plt_System_Private_Uri_System_Uri__ctor_string_System_UriKind:
_p_117:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1312]
br x16
.word 5097
_p_118_plt_System_Private_Uri_string_Equals_string_System_StringComparison_llvm:
	.globl _p_118_plt_System_Private_Uri_string_Equals_string_System_StringComparison_llvm
.private_extern _p_118_plt_System_Private_Uri_string_Equals_string_System_StringComparison_llvm
	.no_dead_strip plt_System_Private_Uri_string_Equals_string_System_StringComparison
plt_System_Private_Uri_string_Equals_string_System_StringComparison:
_p_118:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1320]
br x16
.word 5099
_p_119_plt_System_Private_Uri_string_StartsWith_string_System_StringComparison_llvm:
	.globl _p_119_plt_System_Private_Uri_string_StartsWith_string_System_StringComparison_llvm
.private_extern _p_119_plt_System_Private_Uri_string_StartsWith_string_System_StringComparison_llvm
	.no_dead_strip plt_System_Private_Uri_string_StartsWith_string_System_StringComparison
plt_System_Private_Uri_string_StartsWith_string_System_StringComparison:
_p_119:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1328]
br x16
.word 5104
_p_120_plt_System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser__llvm:
	.globl _p_120_plt_System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser__llvm
.private_extern _p_120_plt_System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser_
plt_System_Private_Uri_System_Uri_ParseSchemeCheckImplicitFile_string_System_ParsingError__System_Uri_Flags__System_UriParser_:
_p_120:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1336]
br x16
.word 5109
_p_121_plt_System_Private_Uri_System_Uri_PrivateParseMinimal_llvm:
	.globl _p_121_plt_System_Private_Uri_System_Uri_PrivateParseMinimal_llvm
.private_extern _p_121_plt_System_Private_Uri_System_Uri_PrivateParseMinimal_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_PrivateParseMinimal
plt_System_Private_Uri_System_Uri_PrivateParseMinimal:
_p_121:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1344]
br x16
.word 5111
_p_122_plt_System_Private_Uri_System_Uri_GetException_System_ParsingError_llvm:
	.globl _p_122_plt_System_Private_Uri_System_Uri_GetException_System_ParsingError_llvm
.private_extern _p_122_plt_System_Private_Uri_System_Uri_GetException_System_ParsingError_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetException_System_ParsingError
plt_System_Private_Uri_System_Uri_GetException_System_ParsingError:
_p_122:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1352]
br x16
.word 5113
_p_123_plt_System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string__llvm:
	.globl _p_123_plt_System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string__llvm
.private_extern _p_123_plt_System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string_
plt_System_Private_Uri_System_Uri_CheckAuthorityHelper_char__int_int_System_ParsingError__System_Uri_Flags__System_UriParser_string_:
_p_123:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1360]
br x16
.word 5115
_p_124_plt_System_Private_Uri_System_UriHelper_IsLWS_char_llvm:
	.globl _p_124_plt_System_Private_Uri_System_UriHelper_IsLWS_char_llvm
.private_extern _p_124_plt_System_Private_Uri_System_UriHelper_IsLWS_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_IsLWS_char
plt_System_Private_Uri_System_UriHelper_IsLWS_char:
_p_124:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1368]
br x16
.word 5117
_p_125_plt_System_Private_Uri_System_Threading_Interlocked_CompareExchange_System_Uri_Flags_System_Uri_Flags__System_Uri_Flags_System_Uri_Flags_llvm:
	.globl _p_125_plt_System_Private_Uri_System_Threading_Interlocked_CompareExchange_System_Uri_Flags_System_Uri_Flags__System_Uri_Flags_System_Uri_Flags_llvm
.private_extern _p_125_plt_System_Private_Uri_System_Threading_Interlocked_CompareExchange_System_Uri_Flags_System_Uri_Flags__System_Uri_Flags_System_Uri_Flags_llvm
	.no_dead_strip plt_System_Private_Uri_System_Threading_Interlocked_CompareExchange_System_Uri_Flags_System_Uri_Flags__System_Uri_Flags_System_Uri_Flags
plt_System_Private_Uri_System_Threading_Interlocked_CompareExchange_System_Uri_Flags_System_Uri_Flags__System_Uri_Flags_System_Uri_Flags:
_p_125:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1376]
br x16
.word 5120
_p_126_plt_System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo_llvm:
	.globl _p_126_plt_System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo_llvm
.private_extern _p_126_plt_System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo
plt_System_Private_Uri_System_Uri_CreateHostStringHelper_string_int_int_System_Uri_Flags__System_Uri_UriInfo:
_p_126:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1384]
br x16
.word 5132
_p_127_plt_System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags_llvm:
	.globl _p_127_plt_System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags_llvm
.private_extern _p_127_plt_System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags
plt_System_Private_Uri_System_Uri_InterlockedSetFlags_System_Uri_Flags:
_p_127:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1392]
br x16
.word 5134
_p_128_plt_System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char_llvm:
	.globl _p_128_plt_System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char_llvm
.private_extern _p_128_plt_System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char
plt_System_Private_Uri_System_Uri_CheckCanonical_char__int__int_char:
_p_128:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1400]
br x16
.word 5136
_p_129_plt_System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char_llvm:
	.globl _p_129_plt_System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char_llvm
.private_extern _p_129_plt_System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char
plt_System_Private_Uri_System_UriHelper_EscapeString_string_bool_System_Buffers_SearchValues_1_char:
_p_129:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1408]
br x16
.word 5138
_p_130_plt_System_Private_Uri_System_Uri_GetHostViaCustomSyntax_llvm:
	.globl _p_130_plt_System_Private_Uri_System_Uri_GetHostViaCustomSyntax_llvm
.private_extern _p_130_plt_System_Private_Uri_System_Uri_GetHostViaCustomSyntax_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetHostViaCustomSyntax
plt_System_Private_Uri_System_Uri_GetHostViaCustomSyntax:
_p_130:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1416]
br x16
.word 5141
_p_131_plt_System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool__llvm:
	.globl _p_131_plt_System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool__llvm
.private_extern _p_131_plt_System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool__llvm
	.no_dead_strip plt_System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool_
plt_System_Private_Uri_System_UncNameHelper_ParseCanonicalName_string_int_int_bool_:
_p_131:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1424]
br x16
.word 5143
_p_132_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char__llvm:
	.globl _p_132_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char__llvm
.private_extern _p_132_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char__llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char_
plt_System_Private_Uri_System_Net_IPv6AddressHelper_ParseCanonicalName_System_ReadOnlySpan_1_char_bool__System_ReadOnlySpan_1_char_:
_p_132:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1432]
br x16
.word 5145
_p_133_plt_System_Private_Uri_string__ctor_System_ReadOnlySpan_1_char_llvm:
	.globl _p_133_plt_System_Private_Uri_string__ctor_System_ReadOnlySpan_1_char_llvm
.private_extern _p_133_plt_System_Private_Uri_string__ctor_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_string__ctor_System_ReadOnlySpan_1_char
plt_System_Private_Uri_string__ctor_System_ReadOnlySpan_1_char:
_p_133:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1440]
br x16
.word 5148
_p_134_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool__llvm:
	.globl _p_134_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool__llvm
.private_extern _p_134_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool__llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool_
plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseCanonicalName_string_int_int_bool_:
_p_134:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1448]
br x16
.word 5153
_p_135_plt_System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm:
	.globl _p_135_plt_System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm
.private_extern _p_135_plt_System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_UriParser_InternalGetComponents_System_Uri_System_UriComponents_System_UriFormat:
_p_135:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1456]
br x16
.word 5156
_p_136_plt_System_Private_Uri_System_SR_Format_string_object_object_llvm:
	.globl _p_136_plt_System_Private_Uri_System_SR_Format_string_object_object_llvm
.private_extern _p_136_plt_System_Private_Uri_System_SR_Format_string_object_object_llvm
	.no_dead_strip plt_System_Private_Uri_System_SR_Format_string_object_object
plt_System_Private_Uri_System_SR_Format_string_object_object:
_p_136:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1464]
br x16
.word 5159
_p_137_plt_System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat_llvm:
	.globl _p_137_plt_System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat_llvm
.private_extern _p_137_plt_System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_Uri_InternalGetComponents_System_UriComponents_System_UriFormat:
_p_137:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1472]
br x16
.word 5162
_p_138_plt_System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat_llvm:
	.globl _p_138_plt_System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat_llvm
.private_extern _p_138_plt_System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat
plt_System_Private_Uri_System_Uri_RecreateParts_System_UriComponents_uint16_System_UriFormat:
_p_138:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1480]
br x16
.word 5164
_p_139_plt_System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents_llvm:
	.globl _p_139_plt_System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents_llvm
.private_extern _p_139_plt_System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents
plt_System_Private_Uri_System_Uri_GetUriPartsFromUserString_System_UriComponents:
_p_139:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1488]
br x16
.word 5166
_p_140_plt_System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat_llvm:
	.globl _p_140_plt_System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat_llvm
.private_extern _p_140_plt_System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat
plt_System_Private_Uri_System_Uri_RecreateParts_System_Text_ValueStringBuilder__string_System_UriComponents_uint16_System_UriFormat:
_p_140:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1496]
br x16
.word 5168
_p_141_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToString_llvm:
	.globl _p_141_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToString_llvm
.private_extern _p_141_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToString_llvm
	.no_dead_strip plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToString
plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToString:
_p_141:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1504]
br x16
.word 5170
_p_142_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char_llvm:
	.globl _p_142_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char_llvm
.private_extern _p_142_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char
plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__bool_System_Buffers_SearchValues_1_char:
_p_142:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1512]
br x16
.word 5187
_p_143_plt_System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat_llvm:
	.globl _p_143_plt_System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat_llvm
.private_extern _p_143_plt_System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat
plt_System_Private_Uri_System_Uri_GetCanonicalPath_System_Text_ValueStringBuilder__System_UriFormat:
_p_143:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1520]
br x16
.word 5190
_p_144_plt_System_Private_Uri_System_Number__TryFormatUInt32g__TryFormatUInt32Slow_22_0_char_uint_System_ReadOnlySpan_1_char_System_IFormatProvider_System_Span_1_char_int__llvm:
	.globl _p_144_plt_System_Private_Uri_System_Number__TryFormatUInt32g__TryFormatUInt32Slow_22_0_char_uint_System_ReadOnlySpan_1_char_System_IFormatProvider_System_Span_1_char_int__llvm
.private_extern _p_144_plt_System_Private_Uri_System_Number__TryFormatUInt32g__TryFormatUInt32Slow_22_0_char_uint_System_ReadOnlySpan_1_char_System_IFormatProvider_System_Span_1_char_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Number__TryFormatUInt32g__TryFormatUInt32Slow_22_0_char_uint_System_ReadOnlySpan_1_char_System_IFormatProvider_System_Span_1_char_int_
plt_System_Private_Uri_System_Number__TryFormatUInt32g__TryFormatUInt32Slow_22_0_char_uint_System_ReadOnlySpan_1_char_System_IFormatProvider_System_Span_1_char_int_:
_p_144:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1528]
br x16
.word 5192
_p_145_plt_System_Private_Uri_System_Number_TryUInt32ToDecStr_char_uint_System_Span_1_char_int__llvm:
	.globl _p_145_plt_System_Private_Uri_System_Number_TryUInt32ToDecStr_char_uint_System_Span_1_char_int__llvm
.private_extern _p_145_plt_System_Private_Uri_System_Number_TryUInt32ToDecStr_char_uint_System_Span_1_char_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Number_TryUInt32ToDecStr_char_uint_System_Span_1_char_int_
plt_System_Private_Uri_System_Number_TryUInt32ToDecStr_char_uint_System_Span_1_char_int_:
_p_145:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1536]
br x16
.word 5208
_p_146_plt_System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm:
	.globl _p_146_plt_System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
.private_extern _p_146_plt_System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
plt_System_Private_Uri_System_UriHelper_UnescapeString_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool:
_p_146:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1544]
br x16
.word 5224
_p_147_plt_System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder__llvm:
	.globl _p_147_plt_System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder__llvm
.private_extern _p_147_plt_System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder__llvm
	.no_dead_strip plt_System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder_
plt_System_Private_Uri_System_DomainNameHelper_TryGetUnicodeEquivalent_string_System_Text_ValueStringBuilder_:
_p_147:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1552]
br x16
.word 5227
_p_148_plt_System_Private_Uri_uint16_ToString_System_IFormatProvider_llvm:
	.globl _p_148_plt_System_Private_Uri_uint16_ToString_System_IFormatProvider_llvm
.private_extern _p_148_plt_System_Private_Uri_uint16_ToString_System_IFormatProvider_llvm
	.no_dead_strip plt_System_Private_Uri_uint16_ToString_System_IFormatProvider
plt_System_Private_Uri_uint16_ToString_System_IFormatProvider:
_p_148:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1560]
br x16
.word 5229
_p_149_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm:
	.globl _p_149_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
.private_extern _p_149_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char
plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char:
_p_149:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1568]
br x16
.word 5234
_p_150_plt_System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int_llvm:
	.globl _p_150_plt_System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int_llvm
.private_extern _p_150_plt_System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int
plt_System_Private_Uri_System_Uri_GetLengthWithoutTrailingSpaces_string_int__int:
_p_150:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1576]
br x16
.word 5239
_p_151_plt_System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents_llvm:
	.globl _p_151_plt_System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents_llvm
.private_extern _p_151_plt_System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents
plt_System_Private_Uri_System_Uri_EscapeUnescapeIri_string_int_int_System_UriComponents:
_p_151:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1584]
br x16
.word 5241
_p_152_plt_System_Private_Uri_System_Uri_get_IsFile_llvm:
	.globl _p_152_plt_System_Private_Uri_System_Uri_get_IsFile_llvm
.private_extern _p_152_plt_System_Private_Uri_System_Uri_get_IsFile_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_IsFile
plt_System_Private_Uri_System_Uri_get_IsFile:
_p_152:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1592]
br x16
.word 5243
_p_153_plt_System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string_llvm:
	.globl _p_153_plt_System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string_llvm
.private_extern _p_153_plt_System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string
plt_System_Private_Uri_System_UriParser_FindOrFetchAsUnknownV1Syntax_string:
_p_153:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1600]
br x16
.word 5245
_p_154_plt_System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char_llvm:
	.globl _p_154_plt_System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char_llvm
.private_extern _p_154_plt_System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char
plt_System_Private_Uri_System_UriHelper_NormalizeAndConcat_string_System_ReadOnlySpan_1_char:
_p_154:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1608]
br x16
.word 5248
_p_155_plt_System_Private_Uri_System_ThrowHelper_ThrowInvalidTypeWithPointersNotSupported_System_Type_llvm:
	.globl _p_155_plt_System_Private_Uri_System_ThrowHelper_ThrowInvalidTypeWithPointersNotSupported_System_Type_llvm
.private_extern _p_155_plt_System_Private_Uri_System_ThrowHelper_ThrowInvalidTypeWithPointersNotSupported_System_Type_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowInvalidTypeWithPointersNotSupported_System_Type
plt_System_Private_Uri_System_ThrowHelper_ThrowInvalidTypeWithPointersNotSupported_System_Type:
_p_155:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1616]
br x16
.word 5251
_p_156_plt_System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool_llvm:
	.globl _p_156_plt_System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool_llvm
.private_extern _p_156_plt_System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool
plt_System_Private_Uri_System_UncNameHelper_IsValid_char__int_int__bool:
_p_156:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1624]
br x16
.word 5256
_p_157_plt_System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int__llvm:
	.globl _p_157_plt_System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int__llvm
.private_extern _p_157_plt_System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int_
plt_System_Private_Uri_System_DomainNameHelper_IsValid_System_ReadOnlySpan_1_char_bool_bool_int_:
_p_157:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1632]
br x16
.word 5258
_p_158_plt_System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError__llvm:
	.globl _p_158_plt_System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError__llvm
.private_extern _p_158_plt_System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError_
plt_System_Private_Uri_System_Uri_CheckAuthorityHelperHandleDnsIri_char__int_int_bool_System_Uri_Flags__string__System_ParsingError_:
_p_158:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1640]
br x16
.word 5260
_p_159_plt_System_Private_Uri_System_Net_IPv4AddressHelper_IsValid_char_char__int_int__bool_bool_bool_llvm:
	.globl _p_159_plt_System_Private_Uri_System_Net_IPv4AddressHelper_IsValid_char_char__int_int__bool_bool_bool_llvm
.private_extern _p_159_plt_System_Private_Uri_System_Net_IPv4AddressHelper_IsValid_char_char__int_int__bool_bool_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv4AddressHelper_IsValid_char_char__int_int__bool_bool_bool
plt_System_Private_Uri_System_Net_IPv4AddressHelper_IsValid_char_char__int_int__bool_bool_bool:
_p_159:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1648]
br x16
.word 5262
_p_160_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int__llvm:
	.globl _p_160_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int__llvm
.private_extern _p_160_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int_
plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsValid_char__int_int_:
_p_160:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1656]
br x16
.word 5274
_p_161_plt_System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents_llvm:
	.globl _p_161_plt_System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents_llvm
.private_extern _p_161_plt_System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents_llvm
	.no_dead_strip plt_System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents
plt_System_Private_Uri_System_IriHelper_EscapeUnescapeIri_char__int_int_System_UriComponents:
_p_161:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1664]
br x16
.word 5277
_p_162_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string__llvm:
	.globl _p_162_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string__llvm
.private_extern _p_162_plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_
plt_System_Private_Uri_System_UriHelper_StripBidiControlCharacters_System_ReadOnlySpan_1_char_string_:
_p_162:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1672]
br x16
.word 5279
_p_163_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm:
	.globl _p_163_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
.private_extern _p_163_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool
plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_System_Text_ValueStringBuilder__char_char_char_System_UnescapeMode_System_UriParser_bool:
_p_163:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1680]
br x16
.word 5282
_p_164_plt_System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool_llvm:
	.globl _p_164_plt_System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool_llvm
.private_extern _p_164_plt_System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool
plt_System_Private_Uri_System_UriHelper_Compress_System_Span_1_char_bool_bool:
_p_164:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 5285
_p_165_plt_System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char_llvm:
	.globl _p_165_plt_System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char_llvm
.private_extern _p_165_plt_System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char
plt_System_Private_Uri_System_Uri_UnescapeOnly_char__int_int__char_char_char:
_p_165:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 5288
_p_166_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToArray_llvm:
	.globl _p_166_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToArray_llvm
.private_extern _p_166_plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToArray_llvm
	.no_dead_strip plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToArray
plt_System_Private_Uri_System_ReadOnlySpan_1_char_ToArray:
_p_166:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 5290
_p_167_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm:
	.globl _p_167_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
.private_extern _p_167_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int
plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int:
_p_167:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 5301
_p_168_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm:
	.globl _p_168_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
.private_extern _p_168_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string
plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string:
_p_168:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 5306
_p_169_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm:
	.globl _p_169_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
.private_extern _p_169_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string
plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string:
_p_169:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 5311
_p_170_plt_System_Private_Uri_System_Uri_get_DnsSafeHost_llvm:
	.globl _p_170_plt_System_Private_Uri_System_Uri_get_DnsSafeHost_llvm
.private_extern _p_170_plt_System_Private_Uri_System_Uri_get_DnsSafeHost_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_DnsSafeHost
plt_System_Private_Uri_System_Uri_get_DnsSafeHost:
_p_170:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 5316
_p_171_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm:
	.globl _p_171_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
.private_extern _p_171_plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
	.no_dead_strip plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear
plt_System_Private_Uri_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear:
_p_171:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 5318
_p_172_plt_System_Private_Uri_string_Concat_string_string_string_llvm:
	.globl _p_172_plt_System_Private_Uri_string_Concat_string_string_string_llvm
.private_extern _p_172_plt_System_Private_Uri_string_Concat_string_string_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_string_string_string
plt_System_Private_Uri_string_Concat_string_string_string:
_p_172:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 5323
_p_173_plt_System_Private_Uri_string_CopyTo_int_char___int_int_llvm:
	.globl _p_173_plt_System_Private_Uri_string_CopyTo_int_char___int_int_llvm
.private_extern _p_173_plt_System_Private_Uri_string_CopyTo_int_char___int_int_llvm
	.no_dead_strip plt_System_Private_Uri_string_CopyTo_int_char___int_int
plt_System_Private_Uri_string_CopyTo_int_char___int_int:
_p_173:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 5328
_p_174_plt_System_Private_Uri_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm:
	.globl _p_174_plt_System_Private_Uri_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm
.private_extern _p_174_plt_System_Private_Uri_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object_llvm
	.no_dead_strip plt_System_Private_Uri_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object
plt_System_Private_Uri_wrapper_stelemref_object_virt_stelemref_sealed_class_intptr_object:
_p_174:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 5333
_p_175_plt_System_Private_Uri_string_Concat_string___llvm:
	.globl _p_175_plt_System_Private_Uri_string_Concat_string___llvm
.private_extern _p_175_plt_System_Private_Uri_string_Concat_string___llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_string__
plt_System_Private_Uri_string_Concat_string__:
_p_175:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 5342
_p_176_plt_System_Private_Uri_System_Uri_get_IsUnc_llvm:
	.globl _p_176_plt_System_Private_Uri_System_Uri_get_IsUnc_llvm
.private_extern _p_176_plt_System_Private_Uri_System_Uri_get_IsUnc_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_get_IsUnc
plt_System_Private_Uri_System_Uri_get_IsUnc:
_p_176:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 5347
_p_177_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm:
	.globl _p_177_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
.private_extern _p_177_plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char
plt_System_Private_Uri_string_Concat_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char_System_ReadOnlySpan_1_char:
_p_177:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 5349
_p_178_plt_System_Private_Uri_string_IndexOf_char_int_llvm:
	.globl _p_178_plt_System_Private_Uri_string_IndexOf_char_int_llvm
.private_extern _p_178_plt_System_Private_Uri_string_IndexOf_char_int_llvm
	.no_dead_strip plt_System_Private_Uri_string_IndexOf_char_int
plt_System_Private_Uri_string_IndexOf_char_int:
_p_178:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 5354
_p_179_plt_System_Private_Uri_System_Text_StringBuilder__ctor_llvm:
	.globl _p_179_plt_System_Private_Uri_System_Text_StringBuilder__ctor_llvm
.private_extern _p_179_plt_System_Private_Uri_System_Text_StringBuilder__ctor_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_StringBuilder__ctor
plt_System_Private_Uri_System_Text_StringBuilder__ctor:
_p_179:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 5359
_p_180_plt_System_Private_Uri_System_Text_StringBuilder_Append_string_llvm:
	.globl _p_180_plt_System_Private_Uri_System_Text_StringBuilder_Append_string_llvm
.private_extern _p_180_plt_System_Private_Uri_System_Text_StringBuilder_Append_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_StringBuilder_Append_string
plt_System_Private_Uri_System_Text_StringBuilder_Append_string:
_p_180:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 5364
_p_181_plt_System_Private_Uri_System_Text_StringBuilder_Append_System_ReadOnlySpan_1_char_llvm:
	.globl _p_181_plt_System_Private_Uri_System_Text_StringBuilder_Append_System_ReadOnlySpan_1_char_llvm
.private_extern _p_181_plt_System_Private_Uri_System_Text_StringBuilder_Append_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_StringBuilder_Append_System_ReadOnlySpan_1_char
plt_System_Private_Uri_System_Text_StringBuilder_Append_System_ReadOnlySpan_1_char:
_p_181:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 5369
_p_182_plt_System_Private_Uri_System_Globalization_TextInfo_ChangeCase_char_bool_llvm:
	.globl _p_182_plt_System_Private_Uri_System_Globalization_TextInfo_ChangeCase_char_bool_llvm
.private_extern _p_182_plt_System_Private_Uri_System_Globalization_TextInfo_ChangeCase_char_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Globalization_TextInfo_ChangeCase_char_bool
plt_System_Private_Uri_System_Globalization_TextInfo_ChangeCase_char_bool:
_p_182:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 5374
_p_183_plt_System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser__llvm:
	.globl _p_183_plt_System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser__llvm
.private_extern _p_183_plt_System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser_
plt_System_Private_Uri_System_Uri_ParseScheme_string_System_Uri_Flags__System_UriParser_:
_p_183:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 5379
_p_184_plt_System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException__llvm:
	.globl _p_184_plt_System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException__llvm
.private_extern _p_184_plt_System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException_
plt_System_Private_Uri_System_Uri_InitializeUri_System_ParsingError_System_UriKind_System_UriFormatException_:
_p_184:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 5381
_p_185_plt_System_Private_Uri_System_UriParser_InternalOnNewUri_llvm:
	.globl _p_185_plt_System_Private_Uri_System_UriParser_InternalOnNewUri_llvm
.private_extern _p_185_plt_System_Private_Uri_System_UriParser_InternalOnNewUri_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InternalOnNewUri
plt_System_Private_Uri_System_UriParser_InternalOnNewUri:
_p_185:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 5383
_p_186_plt_System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException__llvm:
	.globl _p_186_plt_System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException__llvm
.private_extern _p_186_plt_System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException_
plt_System_Private_Uri_System_UriParser_InternalValidate_System_Uri_System_UriFormatException_:
_p_186:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 5386
_p_187_plt_System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string_llvm:
	.globl _p_187_plt_System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string_llvm
.private_extern _p_187_plt_System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string
plt_System_Private_Uri_System_Uri_CheckForUnicodeOrEscapedUnreserved_string:
_p_187:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 5389
_p_188_plt_System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions__llvm:
	.globl _p_188_plt_System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions__llvm
.private_extern _p_188_plt_System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions_
plt_System_Private_Uri_System_Uri_CreateHelper_string_bool_System_UriKind_System_UriFormatException__System_UriCreationOptions_:
_p_188:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 5391
_p_189_plt_System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat_llvm:
	.globl _p_189_plt_System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat_llvm
.private_extern _p_189_plt_System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat
plt_System_Private_Uri_System_Uri_GetRelativeSerializationString_System_UriFormat:
_p_189:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 5393
_p_190_plt_System_Private_Uri__jit_icall_mono_helper_newobj_mscorlib_llvm:
	.globl _p_190_plt_System_Private_Uri__jit_icall_mono_helper_newobj_mscorlib_llvm
.private_extern _p_190_plt_System_Private_Uri__jit_icall_mono_helper_newobj_mscorlib_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_helper_newobj_mscorlib
plt_System_Private_Uri__jit_icall_mono_helper_newobj_mscorlib:
_p_190:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 5395
_p_191_plt_System_Private_Uri_System_ArgumentOutOfRangeException__ctor_string_object_string_llvm:
	.globl _p_191_plt_System_Private_Uri_System_ArgumentOutOfRangeException__ctor_string_object_string_llvm
.private_extern _p_191_plt_System_Private_Uri_System_ArgumentOutOfRangeException__ctor_string_object_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_ArgumentOutOfRangeException__ctor_string_object_string
plt_System_Private_Uri_System_ArgumentOutOfRangeException__ctor_string_object_string:
_p_191:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 5398
_p_192_plt_System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string_llvm:
	.globl _p_192_plt_System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string_llvm
.private_extern _p_192_plt_System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string
plt_System_Private_Uri_System_Uri_UnescapeDataString_System_ReadOnlySpan_1_char_string:
_p_192:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 5403
_p_193_plt_System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int_llvm:
	.globl _p_193_plt_System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int_llvm
.private_extern _p_193_plt_System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int
plt_System_Private_Uri_System_Text_ValueStringBuilder_EnsureCapacity_int:
_p_193:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 5405
_p_194_plt_System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string_llvm:
	.globl _p_194_plt_System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string_llvm
.private_extern _p_194_plt_System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string
plt_System_Private_Uri_System_Uri__ctor_System_Uri_Flags_System_UriParser_string:
_p_194:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 5408
_p_195_plt_System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string__llvm:
	.globl _p_195_plt_System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string__llvm
.private_extern _p_195_plt_System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string__llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string_
plt_System_Private_Uri_System_Uri_GetCombinedString_System_Uri_string_bool_string_:
_p_195:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 5410
_p_196_plt_System_Private_Uri_string_Trim_char___llvm:
	.globl _p_196_plt_System_Private_Uri_string_Trim_char___llvm
.private_extern _p_196_plt_System_Private_Uri_string_Trim_char___llvm
	.no_dead_strip plt_System_Private_Uri_string_Trim_char__
plt_System_Private_Uri_string_Trim_char__:
_p_196:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 5412
_p_197_plt_System_Private_Uri_System_Uri_UnescapeDataString_string_llvm:
	.globl _p_197_plt_System_Private_Uri_System_Uri_UnescapeDataString_string_llvm
.private_extern _p_197_plt_System_Private_Uri_System_Uri_UnescapeDataString_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_UnescapeDataString_string
plt_System_Private_Uri_System_Uri_UnescapeDataString_string:
_p_197:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 5417
_p_198_plt_System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents_llvm:
	.globl _p_198_plt_System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents_llvm
.private_extern _p_198_plt_System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents
plt_System_Private_Uri_System_Uri_GetEscapedParts_System_UriComponents:
_p_198:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 5419
_p_199_plt_System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri_llvm:
	.globl _p_199_plt_System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri_llvm
.private_extern _p_199_plt_System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri
plt_System_Private_Uri_System_UriParser_InternalIsBaseOf_System_Uri_System_Uri:
_p_199:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 5421
_p_200_plt_System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri_llvm:
	.globl _p_200_plt_System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri_llvm
.private_extern _p_200_plt_System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri
plt_System_Private_Uri_System_Uri_IsBaseOfHelper_System_Uri:
_p_200:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 5424
_p_201_plt_System_Private_Uri_string_op_Inequality_string_string_llvm:
	.globl _p_201_plt_System_Private_Uri_string_op_Inequality_string_string_llvm
.private_extern _p_201_plt_System_Private_Uri_string_op_Inequality_string_string_llvm
	.no_dead_strip plt_System_Private_Uri_string_op_Inequality_string_string
plt_System_Private_Uri_string_op_Inequality_string_string:
_p_201:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 5426
_p_202_plt_System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool_llvm:
	.globl _p_202_plt_System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool_llvm
.private_extern _p_202_plt_System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool
plt_System_Private_Uri_System_UriHelper_TestForSubPath_char__int_char__int_bool:
_p_202:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 5431
_p_203_plt_System_Private_Uri_string_Create_System_ReadOnlySpan_1_char_int_System_ReadOnlySpan_1_char_System_Buffers_SpanAction_2_char_System_ReadOnlySpan_1_char_llvm:
	.globl _p_203_plt_System_Private_Uri_string_Create_System_ReadOnlySpan_1_char_int_System_ReadOnlySpan_1_char_System_Buffers_SpanAction_2_char_System_ReadOnlySpan_1_char_llvm
.private_extern _p_203_plt_System_Private_Uri_string_Create_System_ReadOnlySpan_1_char_int_System_ReadOnlySpan_1_char_System_Buffers_SpanAction_2_char_System_ReadOnlySpan_1_char_llvm
	.no_dead_strip plt_System_Private_Uri_string_Create_System_ReadOnlySpan_1_char_int_System_ReadOnlySpan_1_char_System_Buffers_SpanAction_2_char_System_ReadOnlySpan_1_char
plt_System_Private_Uri_string_Create_System_ReadOnlySpan_1_char_int_System_ReadOnlySpan_1_char_System_Buffers_SpanAction_2_char_System_ReadOnlySpan_1_char:
_p_203:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 5434
_p_204_plt_System_Private_Uri_System_StringNormalizationExtensions_TryNormalize_System_ReadOnlySpan_1_char_System_Span_1_char_int__System_Text_NormalizationForm_llvm:
	.globl _p_204_plt_System_Private_Uri_System_StringNormalizationExtensions_TryNormalize_System_ReadOnlySpan_1_char_System_Span_1_char_int__System_Text_NormalizationForm_llvm
.private_extern _p_204_plt_System_Private_Uri_System_StringNormalizationExtensions_TryNormalize_System_ReadOnlySpan_1_char_System_Span_1_char_int__System_Text_NormalizationForm_llvm
	.no_dead_strip plt_System_Private_Uri_System_StringNormalizationExtensions_TryNormalize_System_ReadOnlySpan_1_char_System_Span_1_char_int__System_Text_NormalizationForm
plt_System_Private_Uri_System_StringNormalizationExtensions_TryNormalize_System_ReadOnlySpan_1_char_System_Span_1_char_int__System_Text_NormalizationForm:
_p_204:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 5446
_p_205_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string_llvm:
	.globl _p_205_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string_llvm
.private_extern _p_205_plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string
plt_System_Private_Uri_System_UriHelper_EscapeString_System_ReadOnlySpan_1_char_bool_System_Buffers_SearchValues_1_char_string:
_p_205:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 5451
_p_206_plt_System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool_llvm:
	.globl _p_206_plt_System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool_llvm
.private_extern _p_206_plt_System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool
plt_System_Private_Uri_System_UriHelper_EscapeStringToBuilder_System_ReadOnlySpan_1_char_System_Text_ValueStringBuilder__System_Buffers_SearchValues_1_char_bool:
_p_206:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 5454
_p_207_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf16_System_ReadOnlySpan_1_char_System_Text_Rune__int__llvm:
	.globl _p_207_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf16_System_ReadOnlySpan_1_char_System_Text_Rune__int__llvm
.private_extern _p_207_plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf16_System_ReadOnlySpan_1_char_System_Text_Rune__int__llvm
	.no_dead_strip plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf16_System_ReadOnlySpan_1_char_System_Text_Rune__int_
plt_System_Private_Uri_System_Text_Rune_DecodeFromUtf16_System_ReadOnlySpan_1_char_System_Text_Rune__int_:
_p_207:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 5457
_p_208_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm:
	.globl _p_208_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
.private_extern _p_208_plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool
plt_System_Private_Uri_System_UriHelper_UnescapeString_char__int_int_char___int__char_char_char_System_UnescapeMode_System_UriParser_bool:
_p_208:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 5462
_p_209_plt_System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char_llvm:
	.globl _p_209_plt_System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char_llvm
.private_extern _p_209_plt_System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char
plt_System_Private_Uri_System_UriHelper_IsBidiControlCharacter_char:
_p_209:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 5465
_p_210_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_System_ValueTuple_2_int_int_AddWithResize_System_ValueTuple_2_int_int_llvm:
	.globl _p_210_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_System_ValueTuple_2_int_int_AddWithResize_System_ValueTuple_2_int_int_llvm
.private_extern _p_210_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_System_ValueTuple_2_int_int_AddWithResize_System_ValueTuple_2_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_System_ValueTuple_2_int_int_AddWithResize_System_ValueTuple_2_int_int
plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_System_ValueTuple_2_int_int_AddWithResize_System_ValueTuple_2_int_int:
_p_210:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 5474
_p_211_plt_System_Private_Uri_System_Type_get_IsPrimitive_llvm:
	.globl _p_211_plt_System_Private_Uri_System_Type_get_IsPrimitive_llvm
.private_extern _p_211_plt_System_Private_Uri_System_Type_get_IsPrimitive_llvm
	.no_dead_strip plt_System_Private_Uri_System_Type_get_IsPrimitive
plt_System_Private_Uri_System_Type_get_IsPrimitive:
_p_211:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 5491
_p_212_plt_System_Private_Uri_System_Array_Clear_System_Array_int_int_llvm:
	.globl _p_212_plt_System_Private_Uri_System_Array_Clear_System_Array_int_int_llvm
.private_extern _p_212_plt_System_Private_Uri_System_Array_Clear_System_Array_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Array_Clear_System_Array_int_int
plt_System_Private_Uri_System_Array_Clear_System_Array_int_int:
_p_212:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 5496
_p_213_plt_System_Private_Uri_string_memcpy_byte__byte__int_llvm:
	.globl _p_213_plt_System_Private_Uri_string_memcpy_byte__byte__int_llvm
.private_extern _p_213_plt_System_Private_Uri_string_memcpy_byte__byte__int_llvm
	.no_dead_strip plt_System_Private_Uri_string_memcpy_byte__byte__int
plt_System_Private_Uri_string_memcpy_byte__byte__int:
_p_213:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 5501
_p_214_plt_System_Private_Uri_System_Uri_ParseMinimal_llvm:
	.globl _p_214_plt_System_Private_Uri_System_Uri_ParseMinimal_llvm
.private_extern _p_214_plt_System_Private_Uri_System_Uri_ParseMinimal_llvm
	.no_dead_strip plt_System_Private_Uri_System_Uri_ParseMinimal
plt_System_Private_Uri_System_Uri_ParseMinimal:
_p_214:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 5506
_p_215_plt_System_Private_Uri_System_Collections_Hashtable__ctor_int_llvm:
	.globl _p_215_plt_System_Private_Uri_System_Collections_Hashtable__ctor_int_llvm
.private_extern _p_215_plt_System_Private_Uri_System_Collections_Hashtable__ctor_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Collections_Hashtable__ctor_int
plt_System_Private_Uri_System_Collections_Hashtable__ctor_int:
_p_215:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 5508
_p_216_plt_System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException__llvm:
	.globl _p_216_plt_System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException__llvm
.private_extern _p_216_plt_System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException_
plt_System_Private_Uri_System_UriParser_InitializeAndValidate_System_Uri_System_UriFormatException_:
_p_216:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 5513
_p_217_plt_System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException__llvm:
	.globl _p_217_plt_System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException__llvm
.private_extern _p_217_plt_System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException__llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException_
plt_System_Private_Uri_System_UriParser_Resolve_System_Uri_System_Uri_System_UriFormatException_:
_p_217:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 5516
_p_218_plt_System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri_llvm:
	.globl _p_218_plt_System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri_llvm
.private_extern _p_218_plt_System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri
plt_System_Private_Uri_System_UriParser_IsBaseOf_System_Uri_System_Uri:
_p_218:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 5519
_p_219_plt_System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm:
	.globl _p_219_plt_System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm
.private_extern _p_219_plt_System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat_llvm
	.no_dead_strip plt_System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat
plt_System_Private_Uri_System_UriParser_GetComponents_System_Uri_System_UriComponents_System_UriFormat:
_p_219:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 5522
_p_220_plt_System_Private_Uri_string_Join_string_System_ReadOnlySpan_1_object_llvm:
	.globl _p_220_plt_System_Private_Uri_string_Join_string_System_ReadOnlySpan_1_object_llvm
.private_extern _p_220_plt_System_Private_Uri_string_Join_string_System_ReadOnlySpan_1_object_llvm
	.no_dead_strip plt_System_Private_Uri_string_Join_string_System_ReadOnlySpan_1_object
plt_System_Private_Uri_string_Join_string_System_ReadOnlySpan_1_object:
_p_220:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 5525
_p_221_plt_System_Private_Uri_System_Span_1_char_ToString_llvm:
	.globl _p_221_plt_System_Private_Uri_System_Span_1_char_ToString_llvm
.private_extern _p_221_plt_System_Private_Uri_System_Span_1_char_ToString_llvm
	.no_dead_strip plt_System_Private_Uri_System_Span_1_char_ToString
plt_System_Private_Uri_System_Span_1_char_ToString:
_p_221:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 5530
_p_222_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseNonCanonical_char_char__int_int__bool_llvm:
	.globl _p_222_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseNonCanonical_char_char__int_int__bool_llvm
.private_extern _p_222_plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseNonCanonical_char_char__int_int__bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseNonCanonical_char_char__int_int__bool
plt_System_Private_Uri_System_Net_IPv4AddressHelper_ParseNonCanonical_char_char__int_int__bool:
_p_222:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 5547
_p_223_plt_System_Private_Uri_System_Net_IPv6AddressHelper_Parse_char_System_ReadOnlySpan_1_char_System_Span_1_uint16_System_ReadOnlySpan_1_char__llvm:
	.globl _p_223_plt_System_Private_Uri_System_Net_IPv6AddressHelper_Parse_char_System_ReadOnlySpan_1_char_System_Span_1_uint16_System_ReadOnlySpan_1_char__llvm
.private_extern _p_223_plt_System_Private_Uri_System_Net_IPv6AddressHelper_Parse_char_System_ReadOnlySpan_1_char_System_Span_1_uint16_System_ReadOnlySpan_1_char__llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_Parse_char_System_ReadOnlySpan_1_char_System_Span_1_uint16_System_ReadOnlySpan_1_char_
plt_System_Private_Uri_System_Net_IPv6AddressHelper_Parse_char_System_ReadOnlySpan_1_char_System_Span_1_uint16_System_ReadOnlySpan_1_char_:
_p_223:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 5559
_p_224_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16_llvm:
	.globl _p_224_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16_llvm
.private_extern _p_224_plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16
plt_System_Private_Uri_System_Net_IPv6AddressHelper_IsLoopback_System_ReadOnlySpan_1_uint16:
_p_224:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 5571
_p_225_plt_System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16_llvm:
	.globl _p_225_plt_System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16_llvm
.private_extern _p_225_plt_System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16
plt_System_Private_Uri_System_Net_IPv6AddressHelper_FindCompressionRange_System_ReadOnlySpan_1_uint16:
_p_225:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 5574
_p_226_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16_llvm:
	.globl _p_226_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16_llvm
.private_extern _p_226_plt_System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16
plt_System_Private_Uri_System_Net_IPv6AddressHelper_ShouldHaveIpv4Embedded_System_ReadOnlySpan_1_uint16:
_p_226:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 5577
_p_227_plt_System_Private_Uri_int_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider_llvm:
	.globl _p_227_plt_System_Private_Uri_int_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider_llvm
.private_extern _p_227_plt_System_Private_Uri_int_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider_llvm
	.no_dead_strip plt_System_Private_Uri_int_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider
plt_System_Private_Uri_int_TryFormat_System_Span_1_char_int__System_ReadOnlySpan_1_char_System_IFormatProvider:
_p_227:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 5580
_p_228_plt_System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool_llvm:
	.globl _p_228_plt_System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool_llvm
.private_extern _p_228_plt_System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool_llvm
	.no_dead_strip plt_System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool
plt_System_Private_Uri_System_Net_IPv6AddressHelper_InternalIsValid_char__int_int__bool:
_p_228:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 5585
_p_229_plt_System_Private_Uri__jit_icall_mini_init_method_rgctx_llvm:
	.globl _p_229_plt_System_Private_Uri__jit_icall_mini_init_method_rgctx_llvm
.private_extern _p_229_plt_System_Private_Uri__jit_icall_mini_init_method_rgctx_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mini_init_method_rgctx
plt_System_Private_Uri__jit_icall_mini_init_method_rgctx:
_p_229:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 5588
_p_230_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF_llvm:
	.globl _p_230_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF_llvm
.private_extern _p_230_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF_llvm
	.no_dead_strip plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF
plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_AddWithResize_T_REF:
_p_230:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 5606
_p_231_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int_llvm:
	.globl _p_231_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int_llvm
.private_extern _p_231_plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int
plt_System_Private_Uri_System_Collections_Generic_ValueListBuilder_1_T_REF_Grow_int:
_p_231:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 5621
_p_232_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared_llvm:
	.globl _p_232_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared_llvm
.private_extern _p_232_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared
plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF_get_Shared:
_p_232:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 5643
_p_233_plt_System_Private_Uri_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm:
	.globl _p_233_plt_System_Private_Uri_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm
.private_extern _p_233_plt_System_Private_Uri_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm
	.no_dead_strip plt_System_Private_Uri_System_ThrowHelper_ThrowArrayTypeMismatchException
plt_System_Private_Uri_System_ThrowHelper_ThrowArrayTypeMismatchException:
_p_233:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 5658
_p_234_plt_System_Private_Uri_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm:
	.globl _p_234_plt_System_Private_Uri_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm
.private_extern _p_234_plt_System_Private_Uri_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr
plt_System_Private_Uri_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr:
_p_234:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 5663
_p_235_plt_System_Private_Uri__jit_icall_mono_thread_interruption_checkpoint_llvm:
	.globl _p_235_plt_System_Private_Uri__jit_icall_mono_thread_interruption_checkpoint_llvm
.private_extern _p_235_plt_System_Private_Uri__jit_icall_mono_thread_interruption_checkpoint_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_thread_interruption_checkpoint
plt_System_Private_Uri__jit_icall_mono_thread_interruption_checkpoint:
_p_235:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 5668
_p_236_plt_System_Private_Uri__jit_icall_mono_arch_rethrow_exception_llvm:
	.globl _p_236_plt_System_Private_Uri__jit_icall_mono_arch_rethrow_exception_llvm
.private_extern _p_236_plt_System_Private_Uri__jit_icall_mono_arch_rethrow_exception_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_arch_rethrow_exception
plt_System_Private_Uri__jit_icall_mono_arch_rethrow_exception:
_p_236:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 5671
_p_237_plt_System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor_llvm:
	.globl _p_237_plt_System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor_llvm
.private_extern _p_237_plt_System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor
plt_System_Private_Uri_System_Buffers_SharedArrayPool_1_T_REF__ctor:
_p_237:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 5679
_p_238_plt_System_Private_Uri_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Buffers_SharedArrayPoolThreadLocalArray___object__ctor_llvm:
	.globl _p_238_plt_System_Private_Uri_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Buffers_SharedArrayPoolThreadLocalArray___object__ctor_llvm
.private_extern _p_238_plt_System_Private_Uri_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Buffers_SharedArrayPoolThreadLocalArray___object__ctor_llvm
	.no_dead_strip plt_System_Private_Uri_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Buffers_SharedArrayPoolThreadLocalArray___object__ctor
plt_System_Private_Uri_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Buffers_SharedArrayPoolThreadLocalArray___object__ctor:
_p_238:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 5710
_p_239_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor_llvm:
	.globl _p_239_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor_llvm
.private_extern _p_239_plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor
plt_System_Private_Uri_System_Buffers_ArrayPool_1_T_REF__ctor:
_p_239:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 5732
_p_240_plt_System_Private_Uri_wrapper_alloc_object_Alloc_intptr_llvm:
	.globl _p_240_plt_System_Private_Uri_wrapper_alloc_object_Alloc_intptr_llvm
.private_extern _p_240_plt_System_Private_Uri_wrapper_alloc_object_Alloc_intptr_llvm
	.no_dead_strip plt_System_Private_Uri_wrapper_alloc_object_Alloc_intptr
plt_System_Private_Uri_wrapper_alloc_object_Alloc_intptr:
_p_240:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 5747
_p_241_plt_System_Private_Uri__jit_icall_mono_arch_throw_corlib_exception_llvm:
	.globl _p_241_plt_System_Private_Uri__jit_icall_mono_arch_throw_corlib_exception_llvm
.private_extern _p_241_plt_System_Private_Uri__jit_icall_mono_arch_throw_corlib_exception_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_arch_throw_corlib_exception
plt_System_Private_Uri__jit_icall_mono_arch_throw_corlib_exception:
_p_241:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 5755
_p_242_plt_System_Private_Uri_System_Span_1_byte__ctor_void__int_llvm:
	.globl _p_242_plt_System_Private_Uri_System_Span_1_byte__ctor_void__int_llvm
.private_extern _p_242_plt_System_Private_Uri_System_Span_1_byte__ctor_void__int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Span_1_byte__ctor_void__int
plt_System_Private_Uri_System_Span_1_byte__ctor_void__int:
_p_242:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 5757
_p_243_plt_System_Private_Uri_System_Buffers_Binary_BinaryPrimitives_ReadInt32BigEndian_System_ReadOnlySpan_1_byte_llvm:
	.globl _p_243_plt_System_Private_Uri_System_Buffers_Binary_BinaryPrimitives_ReadInt32BigEndian_System_ReadOnlySpan_1_byte_llvm
.private_extern _p_243_plt_System_Private_Uri_System_Buffers_Binary_BinaryPrimitives_ReadInt32BigEndian_System_ReadOnlySpan_1_byte_llvm
	.no_dead_strip plt_System_Private_Uri_System_Buffers_Binary_BinaryPrimitives_ReadInt32BigEndian_System_ReadOnlySpan_1_byte
plt_System_Private_Uri_System_Buffers_Binary_BinaryPrimitives_ReadInt32BigEndian_System_ReadOnlySpan_1_byte:
_p_243:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 5768
_p_244_plt_System_Private_Uri__jit_icall_mono_gsharedvt_constrained_call_llvm:
	.globl _p_244_plt_System_Private_Uri__jit_icall_mono_gsharedvt_constrained_call_llvm
.private_extern _p_244_plt_System_Private_Uri__jit_icall_mono_gsharedvt_constrained_call_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_gsharedvt_constrained_call
plt_System_Private_Uri__jit_icall_mono_gsharedvt_constrained_call:
_p_244:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 5773
_p_245_plt_System_Private_Uri__jit_icall_mono_object_castclass_unbox_llvm:
	.globl _p_245_plt_System_Private_Uri__jit_icall_mono_object_castclass_unbox_llvm
.private_extern _p_245_plt_System_Private_Uri__jit_icall_mono_object_castclass_unbox_llvm
	.no_dead_strip plt_System_Private_Uri__jit_icall_mono_object_castclass_unbox
plt_System_Private_Uri__jit_icall_mono_object_castclass_unbox:
_p_245:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 5776
_p_246_plt_System_Private_Uri_System_Span_1_long__ctor_void__int_llvm:
	.globl _p_246_plt_System_Private_Uri_System_Span_1_long__ctor_void__int_llvm
.private_extern _p_246_plt_System_Private_Uri_System_Span_1_long__ctor_void__int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Span_1_long__ctor_void__int
plt_System_Private_Uri_System_Span_1_long__ctor_void__int:
_p_246:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 5779
_p_247_plt_System_Private_Uri_System_HexConverter_FromChar_int_llvm:
	.globl _p_247_plt_System_Private_Uri_System_HexConverter_FromChar_int_llvm
.private_extern _p_247_plt_System_Private_Uri_System_HexConverter_FromChar_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_HexConverter_FromChar_int
plt_System_Private_Uri_System_HexConverter_FromChar_int:
_p_247:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 5796
_p_248_plt_System_Private_Uri_System_Math_Max_int_int_llvm:
	.globl _p_248_plt_System_Private_Uri_System_Math_Max_int_int_llvm
.private_extern _p_248_plt_System_Private_Uri_System_Math_Max_int_int_llvm
	.no_dead_strip plt_System_Private_Uri_System_Math_Max_int_int
plt_System_Private_Uri_System_Math_Max_int_int:
_p_248:
adrp x16, mono_aot_System_Private_Uri_got@PAGE+0
add x16, x16, mono_aot_System_Private_Uri_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 5798
plt_end:
_mono_aot_System_Private_Uriplt_end:
	.globl _mono_aot_System_Private_Uriplt_end
.section __DATA, __bss
	.align 3
jit_got:
_mono_aot_System_Private_Urijit_got:
	.globl _mono_aot_System_Private_Urijit_got
.lcomm mono_aot_System_Private_Uri_got, 2368
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
_mono_aot_System_Private_Uriglobals:
	.globl _mono_aot_System_Private_Uriglobals
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Net.IPv4AddressHelper:ToUShort<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT"

	.byte 0,0
	.quad System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT
	.quad Lme_e0

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM4=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM4
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM5=Lfde0_end - Lfde0_start
	.long LDIFF_SYM5
Lfde0_start:

	.long 0
	.align 3
	.quad System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT

LDIFF_SYM6=Lme_e0 - System_Net_IPv4AddressHelper_ToUShort_TChar_GSHAREDVT_TChar_GSHAREDVT
	.long LDIFF_SYM6
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM7=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_1:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM10=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM11=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM12=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM13=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_0:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM14=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM15=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM16=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM17=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM18=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2
	.asciz "System.Net.IPv4AddressHelper:ParseHostNumber<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int"

	.byte 0,0
	.quad System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int
	.quad Lme_e1

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM19=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 1,80,3
	.asciz "param1"

LDIFF_SYM20=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM21=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM22=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 3,141,136,1,11
	.asciz "V_1"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM24=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM25=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM26=Lfde1_end - Lfde1_start
	.long LDIFF_SYM26
Lfde1_start:

	.long 0
	.align 3
	.quad System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int

LDIFF_SYM27=Lme_e1 - System_Net_IPv4AddressHelper_ParseHostNumber_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_int_int
	.long LDIFF_SYM27
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM28=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM29=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM30=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM31=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM32=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2
	.asciz "System.Net.IPv4AddressHelper:IsValid<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool"

	.byte 0,0
	.quad System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool
	.quad Lme_e2

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM33=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,141,16,3
	.asciz "param1"

LDIFF_SYM34=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,141,24,3
	.asciz "param2"

LDIFF_SYM35=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,141,32,3
	.asciz "param3"

LDIFF_SYM36=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,141,40,3
	.asciz "param4"

LDIFF_SYM37=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,141,48,3
	.asciz "param5"

LDIFF_SYM38=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM39=Lfde2_end - Lfde2_start
	.long LDIFF_SYM39
Lfde2_start:

	.long 0
	.align 3
	.quad System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool

LDIFF_SYM40=Lme_e2 - System_Net_IPv4AddressHelper_IsValid_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool_bool
	.long LDIFF_SYM40
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM41=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM42=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM43=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM44=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM45=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_5:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM46=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM47=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM48=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM49=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM50=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2
	.asciz "System.Net.IPv4AddressHelper:IsValidCanonical<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool"

	.byte 0,0
	.quad System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool
	.quad Lme_e3

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM51=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 1,102,3
	.asciz "param1"

LDIFF_SYM52=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 1,103,3
	.asciz "param2"

LDIFF_SYM53=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 3,141,208,0,3
	.asciz "param3"

LDIFF_SYM54=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 3,141,216,0,3
	.asciz "param4"

LDIFF_SYM55=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 3,141,224,0,11
	.asciz "V_0"

LDIFF_SYM56=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM57=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 3,141,248,0,11
	.asciz "V_2"

LDIFF_SYM58=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 1,105,11
	.asciz "V_3"

LDIFF_SYM59=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 3,141,128,1,11
	.asciz "V_4"

LDIFF_SYM60=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 1,104,11
	.asciz "V_5"

LDIFF_SYM61=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 3,141,136,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM62=Lfde3_end - Lfde3_start
	.long LDIFF_SYM62
Lfde3_start:

	.long 0
	.align 3
	.quad System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool

LDIFF_SYM63=Lme_e3 - System_Net_IPv4AddressHelper_IsValidCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool_bool
	.long LDIFF_SYM63
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,147,24,148,23,68,149,22,150,21,68,151,20,152,19,68,153,18
	.byte 154,17
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Net.IPv4AddressHelper:ParseNonCanonical<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool"

	.byte 0,0
	.quad System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool
	.quad Lme_e4

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM64=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 1,103,3
	.asciz "param1"

LDIFF_SYM65=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 1,104,3
	.asciz "param2"

LDIFF_SYM66=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 3,141,208,0,3
	.asciz "param3"

LDIFF_SYM67=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 3,141,216,0,11
	.asciz "V_0"

LDIFF_SYM68=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM69=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 1,100,11
	.asciz "V_2"

LDIFF_SYM70=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 3,141,248,0,11
	.asciz "V_3"

LDIFF_SYM71=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM72=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM73=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 3,141,144,1,11
	.asciz "V_6"

LDIFF_SYM74=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 3,141,152,1,11
	.asciz "V_7"

LDIFF_SYM75=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM76=Lfde4_end - Lfde4_start
	.long LDIFF_SYM76
Lfde4_start:

	.long 0
	.align 3
	.quad System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool

LDIFF_SYM77=Lme_e4 - System_Net_IPv4AddressHelper_ParseNonCanonical_TChar_GSHAREDVT_TChar_GSHAREDVT__int_int__bool
	.long LDIFF_SYM77
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,147,18,148,17,68,149,16,150,15,68,151,14,152,13,68,153,12
	.byte 154,11
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Net.IPv6AddressHelper:Parse<TChar_GSHAREDVT>"
	.asciz "System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_"

	.byte 0,0
	.quad System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_
	.quad Lme_e5

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM78=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 1,80,3
	.asciz "param1"

LDIFF_SYM79=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 3,141,216,0,3
	.asciz "param2"

LDIFF_SYM80=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 3,141,232,0,11
	.asciz "V_0"

LDIFF_SYM81=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 1,101,11
	.asciz "V_1"

LDIFF_SYM82=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 3,141,216,2,11
	.asciz "V_2"

LDIFF_SYM83=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 3,141,248,0,11
	.asciz "V_3"

LDIFF_SYM84=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 3,141,128,1,11
	.asciz "V_4"

LDIFF_SYM85=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 3,141,136,1,11
	.asciz "V_5"

LDIFF_SYM86=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 1,106,11
	.asciz "V_6"

LDIFF_SYM87=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 3,141,224,2,11
	.asciz "V_7"

LDIFF_SYM88=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 1,100,11
	.asciz "V_8"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 1,100,11
	.asciz "V_9"

LDIFF_SYM90=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 1,106,11
	.asciz "V_10"

LDIFF_SYM91=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 1,106,11
	.asciz "V_11"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 1,105,11
	.asciz "V_12"

LDIFF_SYM93=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM94=Lfde5_end - Lfde5_start
	.long LDIFF_SYM94
Lfde5_start:

	.long 0
	.align 3
	.quad System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_

LDIFF_SYM95=Lme_e5 - System_Net_IPv6AddressHelper_Parse_TChar_GSHAREDVT_System_ReadOnlySpan_1_TChar_GSHAREDVT_System_Span_1_uint16_System_ReadOnlySpan_1_TChar_GSHAREDVT_
	.long LDIFF_SYM95
	.long 0
	.byte 12,31,0,84,14,192,9,157,152,1,158,151,1,68,13,29,68,147,150,1,148,149,1,68,149,148,1,150,147,1,68,151
	.byte 146,1,152,145,1,68,153,144,1,154,143,1
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:get_Length"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length
	.quad Lme_e6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM96=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM97=Lfde6_end - Lfde6_start
	.long LDIFF_SYM97
Lfde6_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length

LDIFF_SYM98=Lme_e6 - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Length
	.long LDIFF_SYM98
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:get_Item"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int
	.quad Lme_e7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM99=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,141,24,3
	.asciz "param0"

LDIFF_SYM100=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde7_end - Lfde7_start
	.long LDIFF_SYM101
Lfde7_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int

LDIFF_SYM102=Lme_e7 - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_get_Item_int
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:Append"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT
	.quad Lme_e8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 1,106,3
	.asciz "param0"

LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM105=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM106=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM107=Lfde8_end - Lfde8_start
	.long LDIFF_SYM107
Lfde8_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT

LDIFF_SYM108=Lme_e8 - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Append_T_GSHAREDVT
	.long LDIFF_SYM108
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:AddWithResize"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT
	.quad Lme_e9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM109=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 1,106,3
	.asciz "param0"

LDIFF_SYM110=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM111=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM112=Lfde9_end - Lfde9_start
	.long LDIFF_SYM112
Lfde9_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT

LDIFF_SYM113=Lme_e9 - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_AddWithResize_T_GSHAREDVT
	.long LDIFF_SYM113
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:Dispose"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose
	.quad Lme_ea

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM114=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM115=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM116=Lfde10_end - Lfde10_start
	.long LDIFF_SYM116
Lfde10_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose

LDIFF_SYM117=Lme_ea - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Dispose
	.long LDIFF_SYM117
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Collections.Generic.ValueListBuilder`1<T_GSHAREDVT>:Grow"
	.asciz "System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int"

	.byte 0,0
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int
	.quad Lme_eb

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM118=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM119=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM120=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM121=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 1,106,11
	.asciz "V_2"

LDIFF_SYM122=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM123=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM124=Lfde11_end - Lfde11_start
	.long LDIFF_SYM124
Lfde11_start:

	.long 0
	.align 3
	.quad System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int

LDIFF_SYM125=Lme_eb - System_Collections_Generic_ValueListBuilder_1_T_GSHAREDVT_Grow_int
	.long LDIFF_SYM125
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "<PrivateImplementationDetails>:InlineArrayAsReadOnlySpan<TBuffer_GSHAREDVT,_TElement_GSHAREDVT>"
	.asciz "_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int"

	.byte 0,0
	.quad _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.quad Lme_ec

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM126=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM127=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM128=Lfde12_end - Lfde12_start
	.long LDIFF_SYM128
Lfde12_start:

	.long 0
	.align 3
	.quad _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int

LDIFF_SYM129=Lme_ec - _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.long LDIFF_SYM129
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "<PrivateImplementationDetails>:InlineArrayAsSpan<TBuffer_GSHAREDVT,_TElement_GSHAREDVT>"
	.asciz "_PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int"

	.byte 0,0
	.quad _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.quad Lme_ed

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM130=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM131=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM132=Lfde13_end - Lfde13_start
	.long LDIFF_SYM132
Lfde13_start:

	.long 0
	.align 3
	.quad _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int

LDIFF_SYM133=Lme_ed - _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.long LDIFF_SYM133
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "<PrivateImplementationDetails>:InlineArrayElementRef<TBuffer_GSHAREDVT,_TElement_GSHAREDVT>"
	.asciz "_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int"

	.byte 0,0
	.quad _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.quad Lme_ee

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM134=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM135=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde14_end - Lfde14_start
	.long LDIFF_SYM136
Lfde14_start:

	.long 0
	.align 3
	.quad _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int

LDIFF_SYM137=Lme_ee - _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_GSHAREDVT_TElement_GSHAREDVT_TBuffer_GSHAREDVT__int
	.long LDIFF_SYM137
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
