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
	.asciz "System.Memory.dll"
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
_mono_aot_System_Memoryjit_code_start:
	.globl _mono_aot_System_Memoryjit_code_start

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
ut_0:
add x0, x0, 16
b _System_Memory_System_SequencePosition__ctor_object_int
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_0
	.long LDIFF_SYM3
.text
ut_1:
add x0, x0, 16
b _System_Memory_System_SequencePosition_GetObject
.text
ut_2:
add x0, x0, 16
b _System_Memory_System_SequencePosition_GetInteger
.text
ut_3:
add x0, x0, 16
b _System_Memory_System_SequencePosition_Equals_System_SequencePosition
.text
ut_4:
add x0, x0, 16
b _System_Memory_System_SequencePosition_Equals_object
.text
ut_5:
add x0, x0, 16
b _System_Memory_System_SequencePosition_GetHashCode
.text
ut_21:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length
.text
ut_22:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsEmpty
.text
ut_23:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment
.text
ut_24:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First
.text
ut_25:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start
.text
ut_26:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int
.text
ut_27:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF__
.text
ut_28:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long_long
.text
ut_29:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_System_SequencePosition_System_SequencePosition
.text
ut_30:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long
.text
ut_31:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_ToString
.text
ut_32:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool
.text
ut_33:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition_
.text
ut_34:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer
.text
ut_35:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool
.text
ut_36:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument
.text
ut_37:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument
.text
ut_38:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object
.text
ut_39:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long
.text
ut_40:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType
.text
ut_41:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int
.text
ut_42:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition_
.text
ut_43:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition_
.text
ut_44:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength
.text
ut_45:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetString_string__int__int_
.text
ut_46:
add x0, x0, 16
b _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__cctor
.text
	.align 4
	.no_dead_strip System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf9001baf
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #200]
.word 0xf9401ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401ba0
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
.word 0xb9803b20
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb9804321
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9400f21
.word 0xf9401322
.word 0xd63f0040
.word 0xf9401ba0
.word 0xf940140f
.word 0xf9401ba0
.word 0xf9401801
.word 0xf94013a0
.word 0xd63f0020
.word 0x53001c00
.word 0x34000600
.word 0xf9401ba0
.word 0xf9401c0f
.word 0xf9401ba0
.word 0xf9402001
.word 0xb9804320
.word 0x8b000308
.word 0xf94013a0
.word 0xd63f0020
.word 0xb9804320
.word 0x8b000300
.word 0xf9401ba1
.word 0xf940242f
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf9400021
.word 0xb9803b22
.word 0x8b020308
.word 0xd63f0020
.word 0xb9803b20
.word 0x8b000300
.word 0xb9800800
.word 0xf94017a1
.word 0xb9800821
.word 0x6b01001f
.word 0x5400006d
.word 0xd28000c0
bl _p_23
.word 0xb9803b20
.word 0x8b000300
.word 0xf90023a0
.word 0xf94017a1
.word 0xb9804b20
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf940042f
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf9400822
.word 0xb9804b21
.word 0x8b010301
.word 0xd63f0040
.word 0x14000011
.word 0xf94017a1
.word 0xb9805320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xd63f0060
.word 0xf9401ba0
.word 0xf9400c00
.word 0xf9400c0f
.word 0xf9401ba0
.word 0xf9400c00
.word 0xf9401002
.word 0xf94013a0
.word 0xb9805321
.word 0x8b010301
.word 0xd63f0040
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf9001baf
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #208]
.word 0xf9401ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401ba0
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
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xb9803b20
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xb9804321
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9400f21
.word 0xf9401322
.word 0xd63f0040
.word 0xf9401ba0
.word 0xf940140f
.word 0xf9401ba0
.word 0xf9401801
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf94017a1
.word 0xb9800821
.word 0x93407c21
.word 0xeb01001f
.word 0x5400006d
.word 0xd28000c0
bl _p_23
.word 0xf9401ba0
.word 0xf9401c0f
.word 0xf9401ba0
.word 0xf9402001
.word 0x9100e3a0
.word 0xf90027a0
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf94027be
.word 0xa90007c0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xb9803b20
.word 0x8b000302
.word 0xf9401ba0
.word 0xf940240f
.word 0xf9401ba0
.word 0xf9400c00
.word 0xf9400004
.word 0xaa1a03e0
.word 0x9100e3a1
.word 0xd2800023
.word 0xd63f0080
.word 0x53001c00
.word 0x340005e0
.word 0xb9803b20
.word 0x8b000300
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf940042f
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf9400821
.word 0xb9804322
.word 0x8b020308
.word 0xd63f0020
.word 0xb9804320
.word 0x8b000300
.word 0xf9002ba0
.word 0xf94017a1
.word 0xb9804b20
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xd63f0060
.word 0xf9402ba0
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf9400c2f
.word 0xf9401ba1
.word 0xf9400c21
.word 0xf9401022
.word 0xb9804b21
.word 0x8b010301
.word 0xd63f0040
.word 0x9100e3a0
bl _p_71
.word 0xb40001c0
.word 0xf94017a0
.word 0xb9804321
.word 0x8b010301
.word 0xb9800821
.word 0xf9401ba2
.word 0xf9400c42
.word 0xf940144f
.word 0xf9401ba2
.word 0xf9400c42
.word 0xf9401842
.word 0xf94017a8
.word 0xd63f0040
.word 0x17ffffc0
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_
System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90017af
.word 0xf90013a0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
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
.word 0xf94017a0
.word 0xf940140f
.word 0xf94017a0
.word 0xf9401801
.word 0xf94013a0
.word 0xd63f0020
.word 0xaa0003e1
.word 0xf94017a0
.word 0xf9401c00
bl _p_29
.word 0xf94017a1
.word 0xf940202f
.word 0xf94017a1
.word 0xf9402421
.word 0xb9800b23
.word 0xaa1803e2
.word 0x8b030048
.word 0xf9001ba0
.word 0xd63f0020
.word 0xf94017a0
.word 0xf9400c00
.word 0xf940000f
.word 0xf94017a0
.word 0xf9400c00
.word 0xf9400402
.word 0xf94013a0
.word 0xb9800b23
.word 0xaa1803e1
.word 0x8b030021
.word 0xd63f0040
.word 0xf9401ba0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3f:
.text
ut_66:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #224]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xf9400fa0
.word 0xf940140f
.word 0xf9400fa0
.word 0xf9401801
.word 0xf9400ba0
.word 0xd63f0020
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_42:
.text
ut_67:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xf9400fa0
.word 0xf940140f
.word 0xf9400fa0
.word 0xf9401801
.word 0xf9400ba0
.word 0xd63f0020
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_43:
.text
ut_68:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #240]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401019
.word 0xb9800320
.word 0xf90017bf
.word 0xf9400720
.word 0xd1000400
.word 0xf9400fa1
.word 0x8b000020
.word 0xf9400000
.word 0xf9400b22
.word 0xd1000442
.word 0x8b020021
.word 0xf9400021
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_44:
.text
ut_69:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a8
.word 0xf9001baf
.word 0xf90017a0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xf9401ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401ba0
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
.word 0xf9401ba0
.word 0xf940140f
.word 0xf9401ba0
.word 0xf9401801
.word 0xb9801b20
.word 0x8b000308
.word 0xf94017a0
.word 0xd63f0020
.word 0xf94013a0
.word 0xb9801b22
.word 0xaa1803e1
.word 0x8b020021
.word 0xf9400722
.word 0xf9400b22
.word 0xf9401ba2
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_45:
.text
ut_70:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90023af
.word 0xf90017a0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #256]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94023a0
.word 0xf9401019
.word 0xb9800320
.word 0xf90027bf
.word 0xf9400720
.word 0xd1000401
.word 0xf94017a0
.word 0x8b010001
.word 0xf9400021
.word 0xf9002ba1
.word 0xf9400b21
.word 0xd1000421
.word 0x8b010000
.word 0xb9800000
.word 0xf94023a1
.word 0xf940142f
.word 0xf94023a1
.word 0xf9401821
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003e2
.word 0xf9402ba1
.word 0xd2800000
.word 0xf9001ba0
.word 0xf9001fa0
.word 0x9100c3a0
bl _p_72
.word 0xf9401ba0
.word 0xf9000fa0
.word 0xf9401fa0
.word 0xf90013a0
.word 0xf9400bb9
.word 0xa94187a0
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_46:
.text
ut_71:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90023af
.word 0xaa0003f6
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94023a0
.word 0xf9401015
.word 0xb98002a0
.word 0xf90027bf
.word 0xf94006a0
.word 0xd1000400
.word 0x8b0002c1
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000020
.word 0xd349fc21
.word 0x92405821

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400aa0
.word 0xd1000400
.word 0x8b0002c1
.word 0xd5033bbf
.word 0xf9401ba0
.word 0xf9000020
.word 0xd349fc21
.word 0x92405821

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400ea0
.word 0xd1000400
.word 0x8b0002c0
.word 0xb9802ba1
.word 0xb9000001
.word 0xf94012a0
.word 0xd1000400
.word 0x8b0002c0
.word 0xb9803ba1
.word 0xb9000001
.word 0xa9415bb5
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_47:
.text
ut_72:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #272]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401018
.word 0xb9800300
.word 0xf9001bbf
.word 0xb500007a
.word 0xd2800180
bl _p_38
.word 0xf9400700
.word 0xd1000400
.word 0x8b000320
.word 0xf90027a0
.word 0xd5033bbf
.word 0xf94027a0
.word 0xf900001a
.word 0xd349fc00
.word 0x92405800

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9400b00
.word 0xd1000400
.word 0x8b000320
.word 0xf90023a0
.word 0xd5033bbf
.word 0xf94023a0
.word 0xf900001a
.word 0xd349fc00
.word 0x92405800

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf9400f00
.word 0xd1000400
.word 0x8b000320
.word 0xb900001f
.word 0xb9801b40
bl _p_73
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401300
.word 0xd1000400
.word 0x8b000320
.word 0xb9000001
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_48:
.text
ut_73:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long:
.loc 1 1 0
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba8
.word 0xf9002faf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #280]
.word 0xf9402fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402fa0
.word 0xf9401017
.word 0xb98002e0
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
.word 0x910003f6
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xb9804ae0
.word 0x8b0002c0
.word 0xf94016e1
.word 0xf9401ae2
.word 0xd63f0040
.word 0xeb1f033f
.word 0x5400006b
.word 0xeb1f035f
.word 0x5400006a
.word 0xaa1903e0
bl _p_39
.word 0xf94006e0
.word 0xd1000400
.word 0x8b000300
.word 0xb9800000
.word 0xf9402fa1
.word 0xf940142f
.word 0xf9402fa1
.word 0xf9401821
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f5
.word 0xf9400ae0
.word 0xd1000400
.word 0x8b000300
.word 0xb9800000
.word 0xf9402fa1
.word 0xf940142f
.word 0xf9402fa1
.word 0xf9401c21
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f4
.word 0xf9400ee0
.word 0xd1000400
.word 0x8b000300
.word 0xf9400013
.word 0xf94012e0
.word 0xd1000400
.word 0x8b000300
.word 0xf9400000
.word 0xf90043a0
.word 0xeb00027f
.word 0x540011e0
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf9402c00
.word 0xf90047a0
.word 0xb4000133
.word 0xf9400260
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94047a1
.word 0xeb01001f
.word 0x10000011
.word 0x54001661
.word 0xf9004bb3
.word 0xf9404ba0
.word 0xf9402fa1
.word 0xf940202f
.word 0x3940001e
.word 0xf9402fa1
.word 0xf9402421
.word 0xb9804ae2
.word 0x8b0202c8
.word 0xd63f0020
.word 0xb9804ae0
.word 0x8b0002c0
.word 0xf9402fa1
.word 0xf9400c21
.word 0xf940002f
.word 0xf9402fa1
.word 0xf9400c21
.word 0xf9400421
.word 0xd63f0020
.word 0x93407c00
.word 0x4b150000
.word 0xb9009ba0
.word 0x93407c00
.word 0xeb19001f
.word 0x5400030d
.word 0xb1902b5
.word 0x9101c3a0
.word 0xaa1303e1
.word 0xaa1503e2
bl _p_72
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf940080f
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf9400c06
.word 0x910183a0
.word 0xf90053a0
.word 0xf9404ba0
.word 0xaa1303e1
.word 0xaa1503e2
.word 0xf94043a3
.word 0xaa1403e4
.word 0xaa1a03e5
.word 0xd63f00c0
.word 0xf94053be
.word 0xa90007c0
.word 0x14000067
.word 0xb9809ba0
.word 0x6b1f001f
.word 0x5400004a
bl _p_45
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf940100f
.word 0xf9404ba0
.word 0x3940001e
.word 0xf9402fa1
.word 0xf9400c21
.word 0xf9401421
.word 0xd63f0020
.word 0xb9809ba1
.word 0x93407c21
.word 0xcb010323
.word 0xf9402fa1
.word 0xf9400c21
.word 0xf940182f
.word 0xf9402fa1
.word 0xf9400c21
.word 0xf9401c25
.word 0x9101c3a1
.word 0xf90053a1
.word 0xf94043a1
.word 0xaa1403e2
.word 0xd2800024
.word 0xd63f00a0
.word 0xf94053be
.word 0xa90007c0
.word 0x9101c3a0
bl _p_74
.word 0x93407c00
.word 0xaa0003f9
.word 0x9101c3a0
bl _p_71
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf94043a1
.word 0xeb01001f
.word 0x540003c0
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf9402c13
.word 0xb4000115
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb13001f
.word 0x10000011
.word 0x540009e1
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf940080f
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf9402006
.word 0x910183a0
.word 0xf90053a0
.word 0xaa1503e0
.word 0xaa1503e1
.word 0xaa1903e2
.word 0xf94043a3
.word 0xaa1403e4
.word 0xaa1a03e5
.word 0xd63f00c0
.word 0xf94053be
.word 0xa90007c0
.word 0x14000021
.word 0x4b190280
.word 0x93407c00
.word 0xeb1a001f
.word 0x5400006a
.word 0xd2800000
bl _p_39
.word 0xb1a0322
.word 0x910183a0
.word 0xaa1503e1
bl _p_72
.word 0x14000016
.word 0x4b150280
.word 0x93407c00
.word 0xeb19001f
.word 0x5400006a
.word 0x92800000
bl _p_39
.word 0xb1902b5
.word 0x9101c3a0
.word 0xaa1303e1
.word 0xaa1503e2
bl _p_72
.word 0x4b150280
.word 0x93407c00
.word 0xeb1a001f
.word 0x5400006a
.word 0xd2800000
bl _p_39
.word 0xb1a02a2
.word 0x910183a0
.word 0xaa1303e1
bl _p_72
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf940240f
.word 0xf9402fa0
.word 0xf9400c00
.word 0xf9402803
.word 0xb98052e0
.word 0x8b0002c8
.word 0xaa1803e0
.word 0x9101c3a1
.word 0x910183a2
.word 0xd63f0060
.word 0xf9402ba0
.word 0xb98052e1
.word 0x8b0102c1
.word 0xf9401ee2
.word 0xf94022e2
.word 0xf9402fa2
.word 0xf9400c42
.word 0xf9403042
bl _mono_gsharedvt_value_copy
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_49:
.text
ut_74:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a8
.word 0xf9002baf
.word 0xf90017a0
.word 0xa9030ba1
.word 0xa90413a3

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #288]
.word 0xf9402ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402ba0
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
.word 0x9100c3a0
bl _p_74
.word 0x93407c00
.word 0xf90033a0
.word 0x9100c3a0
bl _p_71
.word 0xf90037a0
.word 0x910103a0
bl _p_74
.word 0x93407c00
.word 0xf9003ba0
.word 0x910103a0
bl _p_71
.word 0xaa0003e4
.word 0xf94033a1
.word 0xf94037a2
.word 0xf9403ba3
.word 0xf9402ba0
.word 0xf940140f
.word 0xf9402ba0
.word 0xf9401805
.word 0xf94017a0
.word 0xd63f00a0
.word 0xf9402ba0
.word 0xf9401c0f
.word 0xf9402ba0
.word 0xf9402003
.word 0xb9801b21
.word 0xaa1803e0
.word 0x8b010008
.word 0xf94017a0
.word 0x9100c3a1
.word 0x910103a2
.word 0xd63f0060
.word 0xf94013a0
.word 0xb9801b22
.word 0xaa1803e1
.word 0x8b020021
.word 0xf9400722
.word 0xf9400b22
.word 0xf9402ba2
.word 0xf9402442
bl _mono_gsharedvt_value_copy
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_4a:
.text
ut_75:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xf90017a8
.word 0xf9001faf
.word 0xf9001ba0
.word 0xaa0103fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #296]
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
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0xeb1f035f
.word 0x5400006a
.word 0xaa1a03e0
bl _p_39
.word 0xb500021a
.word 0xf9401ba1
.word 0xb9801b00
.word 0x8b0002e0
.word 0xf9400702
.word 0xf9400b03
.word 0xd63f0060
.word 0xf94017a0
.word 0xb9801b01
.word 0x8b0102e1
.word 0xf9400702
.word 0xf9400b02
.word 0xf9401fa2
.word 0xf9402442
bl _mono_gsharedvt_value_copy
.word 0x1400001e
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9401803
.word 0x910103a0
.word 0xf9002ba0
.word 0xf9401ba0
.word 0xaa1a03e1
.word 0xd2800022
.word 0xd63f0060
.word 0xf9402bbe
.word 0xa90007c0
.word 0xf9401fa0
.word 0xf9401c0f
.word 0xf9401fa0
.word 0xf9402002
.word 0xb9802300
.word 0x8b0002e8
.word 0xf9401ba0
.word 0x910103a1
.word 0xd63f0040
.word 0xf94017a0
.word 0xb9802301
.word 0x8b0102e1
.word 0xf9400702
.word 0xf9400b02
.word 0xf9401fa2
.word 0xf9402442
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4b:
.text
ut_76:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString:
.loc 1 1 0
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf9003baf
.word 0xaa0003fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #304]
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
.word 0xb9802320
.word 0x8b000300
.word 0xf9400721
.word 0xf9400b22
.word 0xd63f0040
.word 0xd2800000
.word 0xf90053a0
.word 0xf90057a0
.word 0xf9005ba0
.word 0xf9005fbf
.word 0xb900c3bf
.word 0xb900cbbf
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401c00

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340015a0
.word 0xb9802320
.word 0x8b000300
.word 0xf9400722
.word 0xf9400f23
.word 0xaa1a03e1
.word 0xd63f0060
.word 0xb9802320
.word 0x8b000300
.word 0xf9400001
.word 0xf90053a1
.word 0xf9400401
.word 0xf90057a1
.word 0xf9400800
.word 0xf9005ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x15, [x16, #320]
.word 0xf9403ba0
.word 0xf9401404
.word 0x910283a0
.word 0x9102e3a1
.word 0x910303a2
.word 0x910323a3
.word 0xd63f0080
.word 0x53001c00
.word 0x34000100
.word 0xf9405fa3
.word 0xb980c3a1
.word 0xb980cba2
.word 0xaa0303e0
.word 0x3940007e
bl _p_76
.word 0x140000bb
.word 0xf9403ba0
.word 0xf940180f
.word 0xf9403ba0
.word 0xf9401c01
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xd29ffffe
.word 0xf2affffe
.word 0xeb1e001f
.word 0x5400104a
.word 0xf9403ba0
.word 0xf940180f
.word 0xf9403ba0
.word 0xf9402001
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xf9006ba0
.word 0xf94053a0
.word 0xf90023a0
.word 0xf94057a0
.word 0xf90027a0
.word 0xf9405ba0
.word 0xf9002ba0
.word 0xf9403ba0
.word 0xf9402400
.word 0x3980d410
.word 0xb5000050
bl _p_64
.word 0xf9406ba2
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9400421
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xaa0003e1
.word 0xaa0203fa
.word 0xf94023a2
.word 0xf9002fa2
.word 0xf94027a2
.word 0xf90033a2
.word 0xf9402ba2
.word 0xf90037a2
.word 0xaa0103f9
.word 0xb5000960
.word 0xf9403ba0
.word 0xf9402400
.word 0x3980d410
.word 0xb5000050
bl _p_64
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9400821
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xf90073a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001020

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #328]
.word 0xd2801001
bl _p_8
.word 0xf9006fa0
.word 0xf94073a1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000e80
.word 0xd5033bbf
.word 0xf9406fa0
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0x92405842

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9400c21
.word 0xf9002001
.word 0xf9400822
.word 0xf9001402
.word 0xf9401822
.word 0xf9000c02
.word 0xf9401421
.word 0xf9000801
.word 0xf9006ba0
.word 0xf9403ba0
.word 0xf9402400
.word 0x3980d410
.word 0xb5000050
bl _p_64
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400000
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9400421
.word 0xd1000421
.word 0x8b010001
.word 0xd5033bbf
.word 0xf9406ba0
.word 0xf9000020
.word 0xf9402fa1
.word 0xf9002fa1
.word 0xf94033a1
.word 0xf90033a1
.word 0xf94037a1
.word 0xf90037a1
.word 0xaa0003f9

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x15, [x16, #336]
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401003
.word 0xaa1a03e0
.word 0x9100a3a1
.word 0xf9402fa2
.word 0xf90017a2
.word 0xf94033a2
.word 0xf9001ba2
.word 0xf94037a2
.word 0xf9001fa2
.word 0xaa1903e2
.word 0xd63f0060
.word 0x14000030
.word 0x9101e3a0
.word 0xd2800461
.word 0xd2800042
bl _p_49

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #344]
.word 0x9101e3a0
bl _p_77
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9406c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0x9101e3a0
bl _p_51

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #352]
.word 0x9101e3a0
bl _p_77
.word 0xf9403ba0
.word 0xf940180f
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401401
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xaa0003e1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x15, [x16, #360]
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9401802
.word 0x9101e3a0
.word 0xd63f0040

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #368]
.word 0x9101e3a0
bl _p_77
.word 0x9101e3a0
bl _p_53
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0
.word 0xd2801d60
.word 0xaa1103e1
bl _p_75
.word 0xd2800c20
.word 0xaa1103e1
bl _p_75

Lme_4c:
.text
ut_77:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90027af
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #376]
.word 0xf94027a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94027a0
.word 0xf9401000
.word 0xf90033a0
.word 0xb9800000
.word 0xf90033bf
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf94027a0
.word 0xf940140f
.word 0xf94027a0
.word 0xf9401804
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0x910143a3
.word 0xd63f0080
.word 0x53001c19
.word 0x3940c3a0
.word 0x340002e0
.word 0xf9402ba0
.word 0xf9001fa0
.word 0xf9402fa0
.word 0xf90023a0
.word 0xf94013a2
.word 0xaa0203e0
.word 0xf9003ba0
.word 0xd5033bbf
.word 0xf9403ba0
.word 0xf9401fa1
.word 0xf9000041
.word 0xd349fc02
.word 0x92405842

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94023a1
.word 0xf9000001
.word 0xaa1903e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_4d:
.text
ut_78:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_:
.loc 1 1 0
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf90043af
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #384]
.word 0xf94043a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94043a0
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
.word 0xb9805ac0
.word 0x8b0002a0
.word 0xf94006c1
.word 0xf9400ac2
.word 0xd63f0040
.word 0xb98062c1
.word 0xaa1503e0
.word 0x8b010000
.word 0xf94022c1
.word 0xf94026c2
.word 0xd63f0040
.word 0xaa1803e0
bl _p_71
.word 0xaa0003f4
.word 0xd2800000
.word 0xf9000340
.word 0xf9000740
.word 0xb50000f4
.word 0xf94006c1
.word 0xf9400ac2
.word 0xaa1903e0
.word 0xd63f0040
.word 0xd2a00000
.word 0x1400015a
.word 0xf94043a0
.word 0xf940140f
.word 0xf94043a0
.word 0xf9401801
.word 0xaa1703e0
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f3
.word 0xf9400ec0
.word 0xd1000400
.word 0x8b0002e0
.word 0xf9400000
.word 0xf90047a0
.word 0xaa1803e0
bl _p_74
.word 0x93407c00
.word 0xaa0003f8
.word 0xf94012c0
.word 0xd1000400
.word 0x8b0002e0
.word 0xb9800000
.word 0xf94043a1
.word 0xf9401c2f
.word 0xf94043a1
.word 0xf9402021
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f7
.word 0x35000f13
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404013
.word 0xb4000114
.word 0xf9400280
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb13001f
.word 0x10000011
.word 0x54002721
.word 0xaa1403f3
.word 0xf94047a0
.word 0xeb00029f
.word 0x540008e0
.word 0xf94043a0
.word 0xf940240f
.word 0x3940027e
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9400001
.word 0xaa1303e0
.word 0xd63f0020
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb5000040
bl _p_58
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0x9101c3a0
.word 0xaa1703e1
.word 0xd2a00002
bl _p_72
.word 0xf9403ba0
.word 0xf90033a0
.word 0xf9403fa0
.word 0xf90037a0
.word 0xd5033bbf
.word 0xf94033a0
.word 0xf9000340
.word 0xd349ff41
.word 0x92405821

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x91002340
.word 0xf94037a1
.word 0xf9000001
.word 0xf94043a0
.word 0xf9400c00
.word 0xf940040f
.word 0x3940027e
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9400801
.word 0xb9805ac0
.word 0x8b0002a8
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb9805ac0
.word 0x8b0002a0
.word 0xf94043a1
.word 0xf9400c21
.word 0xf9400c2f
.word 0xf94043a1
.word 0xf9400c21
.word 0xf9401022
.word 0xb98082c1
.word 0x8b0102a8
.word 0xaa1803e1
.word 0xd63f0040
.word 0xb98082c0
.word 0x8b0002a1
.word 0xf94006c0
.word 0xf9402ac0
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404c02
.word 0xaa1903e0
bl _mono_gsharedvt_value_copy
.word 0x140000e7
.word 0xf94043a0
.word 0xf9400c00
.word 0xf940040f
.word 0x3940027e
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9401401
.word 0xb9805ac0
.word 0x8b0002a8
.word 0xaa1303e0
.word 0xd63f0020
.word 0xb9805ac0
.word 0x8b0002a0
.word 0x4b1802e2
.word 0xf94043a1
.word 0xf9400c21
.word 0xf940182f
.word 0xf94043a1
.word 0xf9400c21
.word 0xf9401c23
.word 0xb9808ac1
.word 0x8b0102a8
.word 0xaa1803e1
.word 0xd63f0060
.word 0xb9808ac0
.word 0x8b0002a1
.word 0xf94006c0
.word 0xf9402ac0
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404c02
.word 0xaa1903e0
bl _mono_gsharedvt_value_copy
.word 0x140000c5
.word 0xf94047a0
.word 0xeb00029f
.word 0x54000040
bl _p_58
.word 0xd280003e
.word 0x6b1e027f
.word 0x54000581
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404402
.word 0xf9400441
.word 0xaa1403e0
bl _p_57
.word 0xf90053a0
.word 0x4b1802e0
.word 0xf90057a0
.word 0xb9806ac0
.word 0x8b0002a0
.word 0xf94006c1
.word 0xf9400ac2
.word 0xd63f0040
.word 0xf94053a1
.word 0xf94057a3
.word 0xb9806ac0
.word 0x8b0002a0
.word 0xf94043a2
.word 0xf9400c42
.word 0xf940204f
.word 0xf94043a2
.word 0xf9400c42
.word 0xf9402444
.word 0xaa1803e2
.word 0xd63f0080
.word 0xb9806ac0
.word 0x8b0002a1
.word 0xb98092c0
.word 0x8b0002a0
.word 0xf94006c2
.word 0xf9402ac3
.word 0xd63f0060
.word 0xb98092c0
.word 0x8b0002a1
.word 0xf94006c0
.word 0xf9402ac0
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404c02
.word 0xaa1903e0
bl _mono_gsharedvt_value_copy
.word 0x14000093
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9405000

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000a60
.word 0xd280007e
.word 0x6b1e027f
.word 0x54000a01
.word 0xaa1903fa
.word 0xb4000114
.word 0xf9400280

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xeb01001f
.word 0x10000011
.word 0x540010c1
.word 0x4b1802e2
.word 0x910143a0
.word 0xf9004ba0
.word 0xaa1403e0
.word 0xaa1803e1
bl _p_78
.word 0xf9404bbe
.word 0xa90007c0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #400]
.word 0xd2800401
bl _p_8
.word 0xf90053a0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf94053a0
.word 0xf9402ba2
.word 0xf9000062
.word 0xd349fc23
.word 0x92405863

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9402fa2
.word 0xf9000022
.word 0xf94016c1
bl _p_79
.word 0xaa0003f9
.word 0xf9401ad8
.word 0xd280005e
.word 0xeb1e031f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e031f
.word 0x540000e0
.word 0x91004338
.word 0x1400000c
.word 0xb98072c0
.word 0x8b0002b8
.word 0xf9000319
.word 0x14000008
.word 0xf9401ec1
.word 0xb9807ac0
.word 0x8b0002a8
.word 0xaa1903e0
.word 0xd63f0020
.word 0xb9807ac0
.word 0x8b0002b8
.word 0xb9809ac0
.word 0x8b0002a0
.word 0xf94006c2
.word 0xf9402ac3
.word 0xaa1803e1
.word 0xd63f0060
.word 0xb9809ac0
.word 0x8b0002a1
.word 0xf94006c0
.word 0xf9402ac0
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404c02
.word 0xaa1a03e0
bl _mono_gsharedvt_value_copy
.word 0x14000038
.word 0xf94043a0
.word 0xf9400c00
.word 0xf940481a
.word 0xb4000114
.word 0xf9400280
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb1a001f
.word 0x10000011
.word 0x540006a1
.word 0xf94043a0
.word 0xf9400c00
.word 0xf940280f
.word 0x3940029e
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9402c01
.word 0xb98062c0
.word 0x8b0002a8
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb98062c0
.word 0x8b0002a0
.word 0x4b1802e2
.word 0xf94043a1
.word 0xf9400c21
.word 0xf940302f
.word 0xf94043a1
.word 0xf9400c21
.word 0xf9403423
.word 0xb980a2c1
.word 0x8b0102a8
.word 0xaa1803e1
.word 0xd63f0060
.word 0xf94043a0
.word 0xf9400c00
.word 0xf940380f
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9403c01
.word 0xb980aac0
.word 0x8b0002a8
.word 0xb980a2c0
.word 0x8b0002a0
.word 0xd63f0020
.word 0xb980aac0
.word 0x8b0002a1
.word 0xf94006c0
.word 0xf9402ac0
.word 0xf94043a0
.word 0xf9400c00
.word 0xf9404c02
.word 0xaa1903e0
bl _mono_gsharedvt_value_copy
.word 0xd2800020
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_4e:
.text
ut_79:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027a8
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #408]
.word 0xf9402ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402ba0
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
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804b21
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xf9400017
.word 0xaa1703e0
.word 0xb50002e0
.word 0xb9804320
.word 0x8b000300
.word 0xf9401721
.word 0xf9401b22
.word 0xd63f0040
.word 0xb9804320
.word 0x8b000301
.word 0xb9805320
.word 0x8b000300
.word 0xf9401722
.word 0xf9401f23
.word 0xd63f0060
.word 0xf94027a0
.word 0xb9805321
.word 0x8b010301
.word 0xf9401722
.word 0xf9401f22
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401042
bl _mono_gsharedvt_value_copy
.word 0x14000069
.word 0xf9400b20
.word 0xd1000400
.word 0x8b000340
.word 0xb9800016
.word 0xf9400f20
.word 0xd1000400
.word 0x8b000340
.word 0xb9800015
.word 0xf9401320
.word 0xd1000400
.word 0x8b000340
.word 0xf9400000
.word 0xeb0002ff
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x53001c14
.word 0x2a1502c0
.word 0x6b1f001f
.word 0x5400080b
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c1a
.word 0xb4000117
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb1a001f
.word 0x10000011
.word 0x54000a21
.word 0xf9402ba0
.word 0xf940140f
.word 0x394002fe
.word 0xf9402ba0
.word 0xf9401801
.word 0xb9804b20
.word 0x8b000308
.word 0xaa1703e0
.word 0xd63f0020
.word 0x340002b4
.word 0xb9804b20
.word 0x8b000300
.word 0xf9402ba1
.word 0xf9401c2f
.word 0xf9402ba1
.word 0xf9402022
.word 0xb9805b21
.word 0x8b010308
.word 0xaa1603e1
.word 0xd63f0040
.word 0xf94027a0
.word 0xb9805b21
.word 0x8b010301
.word 0xf9401722
.word 0xf9401f22
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401042
bl _mono_gsharedvt_value_copy
.word 0x1400002c
.word 0xb9804b20
.word 0x8b000300
.word 0x4b1602a2
.word 0xf9402ba1
.word 0xf940242f
.word 0xf9402ba1
.word 0xf9400c21
.word 0xf9400023
.word 0xb9806321
.word 0x8b010308
.word 0xaa1603e1
.word 0xd63f0060
.word 0xf94027a0
.word 0xb9806321
.word 0x8b010301
.word 0xf9401722
.word 0xf9401f22
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401042
bl _mono_gsharedvt_value_copy
.word 0x14000016
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf940040f
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400803
.word 0xb9806b20
.word 0x8b000308
.word 0xaa1a03e0
.word 0xaa1703e1
.word 0xaa1403e2
.word 0xd63f0060
.word 0xf94027a0
.word 0xb9806b21
.word 0x8b010301
.word 0xf9401722
.word 0xf9401f22
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401042
bl _mono_gsharedvt_value_copy
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_4f:
.text
ut_80:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001fa8
.word 0xf9002baf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #416]
.word 0xf9402ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402ba0
.word 0xf9401017
.word 0xb98002e0
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
.word 0x910003f6
.word 0xb9805ae0
.word 0x8b0002c0
.word 0xf9401ae1
.word 0xf9401ee2
.word 0xd63f0040
.word 0x3400005a
bl _p_58
.word 0xf94006e0
.word 0xd1000400
.word 0x8b000300
.word 0xb980001a
.word 0xf9400ae0
.word 0xd1000400
.word 0x8b000300
.word 0xb9800018
.word 0x6b1f035f
.word 0x5400056b
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c02
.word 0xf9400441
.word 0xaa1903e0
bl _p_57
.word 0xf9003ba0
.word 0x12007b00
.word 0x4b1a0000
.word 0xf9003fa0
.word 0xb98062e0
.word 0x8b0002c0
.word 0xf94022e1
.word 0xf94026e2
.word 0xd63f0040
.word 0xf9403ba1
.word 0xf9403fa3
.word 0xb98062e0
.word 0x8b0002c0
.word 0xf9402ba2
.word 0xf940144f
.word 0xf9402ba2
.word 0xf9401844
.word 0xaa1a03e2
.word 0xd63f0080
.word 0xb98062e0
.word 0x8b0002c1
.word 0xb9807ae0
.word 0x8b0002c0
.word 0xf94022e2
.word 0xf9402ae3
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb9807ae1
.word 0x8b0102c1
.word 0xf94022e2
.word 0xf9402ae2
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401442
bl _mono_gsharedvt_value_copy
.word 0x14000091
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9401800

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x34000a20
.word 0x6b1f031f
.word 0x540009ea
.word 0xb4000119
.word 0xf9400320

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xeb01001f
.word 0x10000011
.word 0x54001081
.word 0x12007b41
.word 0x4b1a0302
.word 0x910103a0
.word 0xf90033a0
.word 0xaa1903e0
bl _p_78
.word 0xf94033be
.word 0xa90007c0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #400]
.word 0xd2800401
bl _p_8
.word 0xf9003ba0
.word 0x91004003
.word 0xaa0303e1
.word 0xd5033bbf
.word 0xf9403ba0
.word 0xf94023a2
.word 0xf9000062
.word 0xd349fc23
.word 0x92405863

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf94027a2
.word 0xf9000022
.word 0xf9400ee1
bl _p_79
.word 0xaa0003fa
.word 0xf94012f9
.word 0xd280005e
.word 0xeb1e033f
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e033f
.word 0x540000e0
.word 0x91004359
.word 0x1400000c
.word 0xb9806ae0
.word 0x8b0002d9
.word 0xf900033a
.word 0x14000008
.word 0xf94016e1
.word 0xb98072e0
.word 0x8b0002c8
.word 0xaa1a03e0
.word 0xd63f0020
.word 0xb98072e0
.word 0x8b0002d9
.word 0xb98082e0
.word 0x8b0002c0
.word 0xf94022e2
.word 0xf9402ae3
.word 0xaa1903e1
.word 0xd63f0060
.word 0xf9401fa0
.word 0xb98082e1
.word 0x8b0102c1
.word 0xf94022e2
.word 0xf9402ae2
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401442
bl _mono_gsharedvt_value_copy
.word 0x14000038
.word 0x12007b5a
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9401000
.word 0xf9002fa0
.word 0xb4000139
.word 0xf9400320
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9402fa1
.word 0xeb01001f
.word 0x10000011
.word 0x54000601
.word 0xf9402ba0
.word 0xf9401c0f
.word 0x3940033e
.word 0xf9402ba0
.word 0xf9402001
.word 0xb9805ae0
.word 0x8b0002c8
.word 0xaa1903e0
.word 0xd63f0020
.word 0xb9805ae0
.word 0x8b0002c0
.word 0x4b1a0302
.word 0xf9402ba1
.word 0xf940242f
.word 0xf9402ba1
.word 0xf9400c21
.word 0xf9400023
.word 0xb9808ae1
.word 0x8b0102c8
.word 0xaa1a03e1
.word 0xd63f0060
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf940040f
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400801
.word 0xb98092e0
.word 0x8b0002c8
.word 0xb9808ae0
.word 0x8b0002c0
.word 0xd63f0020
.word 0xf9401fa0
.word 0xb98092e1
.word 0x8b0102c1
.word 0xf94022e2
.word 0xf9402ae2
.word 0xf9402ba2
.word 0xf9400c42
.word 0xf9401442
bl _mono_gsharedvt_value_copy
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_50:
.text
ut_81:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9003faf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90033a2

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #424]
.word 0xf9403fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403fa0
.word 0xf9401017
.word 0xb98002e0
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
.word 0x910003f6
.word 0xb9803ae0
.word 0x8b0002c0
.word 0xf94016e1
.word 0xf9401ae2
.word 0xd63f0040
.word 0xf94006e0
.word 0xd1000400
.word 0x8b000300
.word 0xf9400015
.word 0xf9400ae0
.word 0xd1000400
.word 0x8b000300
.word 0xf9400014
.word 0xf9400ee0
.word 0xd1000400
.word 0x8b000300
.word 0xb9800000
.word 0xf9403fa1
.word 0xf940142f
.word 0xf9403fa1
.word 0xf9401821
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f3
.word 0xf94012e0
.word 0xd1000400
.word 0x8b000300
.word 0xb9800000
.word 0xf9403fa1
.word 0xf940142f
.word 0xf9403fa1
.word 0xf9401c21
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f8
.word 0xeb1402bf
.word 0x540008a0
.word 0xf9403fa0
.word 0xf9400c00
.word 0xf9401800
.word 0xf90043a0
.word 0xb4000135
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94043a1
.word 0xeb01001f
.word 0x10000011
.word 0x54000a21
.word 0xf90047b5
.word 0xf94047a0
.word 0xf9403fa1
.word 0xf940202f
.word 0x3940001e
.word 0xf9403fa1
.word 0xf9402421
.word 0xb9803ae2
.word 0x8b0202c8
.word 0xd63f0020
.word 0xb9803ae0
.word 0x8b0002c0
.word 0xf9403fa1
.word 0xf9400c21
.word 0xf940002f
.word 0xf9403fa1
.word 0xf9400c21
.word 0xf9400421
.word 0xd63f0020
.word 0x93407c00
.word 0x4b13001a
.word 0xaa1a03e0
.word 0x93407c00
.word 0xeb19001f
.word 0x540004ac
.word 0xb4000499
.word 0x6b1f035f
.word 0x5400004a
bl _p_45
.word 0xf9403fa0
.word 0xf9400c00
.word 0xf940080f
.word 0xf94047a0
.word 0x3940001e
.word 0xf9403fa1
.word 0xf9400c21
.word 0xf9400c21
.word 0xd63f0020
.word 0x93407f41
.word 0xcb010323
.word 0xf9403fa1
.word 0xf9400c21
.word 0xf940102f
.word 0xf9403fa1
.word 0xf9400c21
.word 0xf9401425
.word 0x910143a1
.word 0xf9004ba1
.word 0xaa1403e1
.word 0xaa1803e2
.word 0xb98063a4
.word 0xd63f00a0
.word 0xf9404bbe
.word 0xa90007c0
.word 0x14000012
.word 0x4b130300
.word 0x93407c00
.word 0xeb19001f
.word 0x5400006a
.word 0xb98063a0
bl _p_23
.word 0xb190262
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0x9101a3a0
.word 0xaa1503e1
bl _p_72
.word 0xf94037a0
.word 0xf9002ba0
.word 0xf9403ba0
.word 0xf9002fa0
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0xa94507a0
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_51:
.text
ut_82:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xf9001bb7
.word 0xf9001fb9
.word 0xf9003baf
.word 0xaa0003f6
.word 0xaa0103f7
.word 0xf9002ba2
.word 0xaa0303f9
.word 0xf9002fa4

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #432]
.word 0xf9403ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403ba0
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
.word 0xb9801aa0
.word 0x8b000280
.word 0xf94006a1
.word 0xf9400aa2
.word 0xd63f0040
.word 0x14000028

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1
.word 0xf9403ba0
.word 0xf940140f
.word 0x394002de
.word 0xf9403ba0
.word 0xf9401801
.word 0xb9801aa0
.word 0x8b000288
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9801aa0
.word 0x8b000280
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9402021
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f3
.word 0xaa1303e0
.word 0x93407c00
.word 0xeb19001f
.word 0x540002cc
.word 0x93407e60
.word 0xcb000339
.word 0xf9403ba0
.word 0xf940240f
.word 0x394002de
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400001
.word 0xaa1603e0
.word 0xd63f0020
.word 0xaa0003f6
.word 0xb4000076
.word 0xeb1702df
.word 0x54fffae1
.word 0xb40000b6
.word 0xb98053a0
.word 0x93407c00
.word 0xeb19001f
.word 0x5400006a
.word 0xb9805ba0
bl _p_23
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0x910183a0
.word 0xaa1603e1
.word 0xaa1903e2
bl _p_72
.word 0xf94033a0
.word 0xf90023a0
.word 0xf94037a0
.word 0xf90027a0
.word 0xa94153b3
.word 0xa9425bb5
.word 0xf9401bb7
.word 0xf9401fb9
.word 0xa94407a0
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_52:
.text
ut_83:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002baf
.word 0xaa0003f6
.word 0xaa0103f7
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #440]
.word 0xf9402ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9402ba0
.word 0xf9401015
.word 0xb98002a0
.word 0xf9002fbf
.word 0xf94006a0
.word 0xd1000400
.word 0x8b0002c0
.word 0xf9400014
.word 0xf9400aa0
.word 0xd1000400
.word 0x8b0002c0
.word 0xf9400013
.word 0xf9400ea0
.word 0xd1000400
.word 0x8b0002c0
.word 0xb9800000
.word 0xf9402ba1
.word 0xf940142f
.word 0xf9402ba1
.word 0xf9401821
.word 0xd63f0020
.word 0x93407c00
.word 0xb90063a0
.word 0xf94012a0
.word 0xd1000400
.word 0x8b0002c0
.word 0xb9800000
.word 0xf9402ba1
.word 0xf940142f
.word 0xf9402ba1
.word 0xf9401c21
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f6
.word 0xeb13029f
.word 0x540001c1
.word 0xeb1a031f
.word 0x54000141
.word 0xeb14031f
.word 0x54000101
.word 0x6b1902ff
.word 0x540000c8
.word 0xb94063a0
.word 0x6b0002ff
.word 0x54000063
.word 0x6b16033f
.word 0x54000c29
bl _p_45
.word 0x1400005f
.word 0x2a1703f5
.word 0x2a1903f7
.word 0xb4000298
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c19
.word 0xb4000118
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000b01
.word 0xf9402ba0
.word 0xf940200f
.word 0x3940031e
.word 0xf9402ba0
.word 0xf9402401
.word 0xaa1803e0
.word 0xd63f0020
.word 0x8b0002b5
.word 0xb40002ba
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c19
.word 0xb400011a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x54000881
.word 0xf9402ba0
.word 0xf940200f
.word 0x3940035e
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400001
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x8b0002f7
.word 0xeb1702bf
.word 0x54000049
bl _p_45
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c1a
.word 0xb4000114
.word 0xf9400280
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb1a001f
.word 0x10000011
.word 0x540005a1
.word 0xf9402ba0
.word 0xf940200f
.word 0x3940029e
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400401
.word 0xaa1403e0
.word 0xd63f0020
.word 0xb94063a1
.word 0x2a0103e1
.word 0x8b010000
.word 0xeb0002bf
.word 0x54000303
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400c1a
.word 0xb4000113
.word 0xf9400260
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb1a001f
.word 0x10000011
.word 0x540002a1
.word 0xf9402ba0
.word 0xf940200f
.word 0x3940027e
.word 0xf9402ba0
.word 0xf9400c00
.word 0xf9400801
.word 0xaa1303e0
.word 0xd63f0020
.word 0x2a1603e1
.word 0x8b010000
.word 0xeb0002ff
.word 0x54000049
bl _p_45
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_53:
.text
ut_84:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xf90013b5
.word 0xf9003baf
.word 0xaa0003f5
.word 0xf9001fa1
.word 0xf90023a2
.word 0xf90027a3
.word 0xf9002ba4
.word 0xf9002fa5

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #448]
.word 0xf9403ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9403ba0
.word 0xf9401014
.word 0xb9800280
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
.word 0x910003f3
.word 0xb9801a80
.word 0x8b000260
.word 0xf9400681
.word 0xf9400a82
.word 0xd63f0040
.word 0xf9403ba0
.word 0xf940140f
.word 0x394002be
.word 0xf9403ba0
.word 0xf9401801
.word 0xb9801a82
.word 0xaa1303e0
.word 0x8b020008
.word 0xaa1503e0
.word 0xd63f0020
.word 0xb9801a81
.word 0xaa1303e0
.word 0x8b010000
.word 0xf9403ba1
.word 0xf9401c2f
.word 0xf9403ba1
.word 0xf9402021
.word 0xd63f0020
.word 0x93407c00
.word 0xb98043a1
.word 0x4b010014
.word 0xaa1403e0
.word 0x93407c00
.word 0xf9402fa1
.word 0xeb01001f
.word 0x540001ed
.word 0xb98043a0
.word 0xf9402fa1
.word 0xb010002
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0x910183a0
.word 0xf9401fa1
bl _p_72
.word 0xf94033a0
.word 0xf90017a0
.word 0xf94037a0
.word 0xf9001ba0
.word 0x1400001d
.word 0x6b1f029f
.word 0x5400004a
bl _p_45
.word 0xf9403ba0
.word 0xf940240f
.word 0x394002be
.word 0xf9403ba0
.word 0xf9400c00
.word 0xf9400001
.word 0xaa1503e0
.word 0xd63f0020
.word 0x93407e82
.word 0xf9402fa1
.word 0xcb020023
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf940042f
.word 0xf9403ba1
.word 0xf9400c21
.word 0xf9400825
.word 0x9100a3a1
.word 0xf9003fa1
.word 0xf94027a1
.word 0xb98053a2
.word 0xd2a00004
.word 0xd63f00a0
.word 0xf9403fbe
.word 0xa90007c0
.word 0xa94153b3
.word 0xf94013b5
.word 0xa94287a0
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_54:
.text
ut_85:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #456]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401019
.word 0xb9800320
.word 0xf90017bf
.word 0xf9400720
.word 0xd1000400
.word 0xf9400fa1
.word 0x8b000020
.word 0xb9800000
.word 0x131f7c00
.word 0x531f7800
.word 0xf9400b22
.word 0xd1000442
.word 0x8b020021
.word 0xb9800021
.word 0x131f7c21
.word 0xb010000
.word 0x4b0003e0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_55:
.text
ut_86:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #464]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xb98013a0
.word 0x12007800
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_56:
.text
ut_87:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013a8
.word 0xf90023af
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xf94023a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94023a0
.word 0xf9401017
.word 0xb98002e0
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
.word 0x910003f6
.word 0xf9401ba0
bl _p_71
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_74
.word 0x93407c00
.word 0xf94006e1
.word 0xd1000422
.word 0xf94017a1
.word 0x8b020021
.word 0xb9800021
.word 0x12010021
.word 0x2a010000
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_71
.word 0xf90033a0
.word 0xf9401fa0
bl _p_74
.word 0x93407c00
.word 0xf9400ae1
.word 0xd1000422
.word 0xf94017a1
.word 0x8b020021
.word 0xb9800021
.word 0x12010021
.word 0x2a010000
.word 0xf90037a0
.word 0xb98032e1
.word 0xaa1603e0
.word 0x8b010000
.word 0xf9400ee1
.word 0xf94012e2
.word 0xd63f0040
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xf94033a3
.word 0xf94037a4
.word 0xb98032e5
.word 0xaa1603e0
.word 0x8b050000
.word 0xf94023a5
.word 0xf94014af
.word 0xf94023a5
.word 0xf94018a5
.word 0xd63f00a0
.word 0xb98032e1
.word 0xaa1603e0
.word 0x8b010001
.word 0xb9803ae2
.word 0xaa1603e0
.word 0x8b020000
.word 0xf9400ee2
.word 0xf94016e3
.word 0xd63f0060
.word 0xf94013a0
.word 0xb9803ae2
.word 0xaa1603e1
.word 0x8b020021
.word 0xf9400ee2
.word 0xf94016e2
.word 0xf94023a2
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xa9415fb6
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013a8
.word 0xf9001faf
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #480]
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
.word 0xf9401ba0
bl _p_71
.word 0xf90023a0
.word 0xf9401ba0
bl _p_74
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9400700
.word 0xd1000402
.word 0xf94017a0
.word 0x8b020002
.word 0xb9800042
.word 0x12010042
.word 0x2a020021
.word 0xf90027a1
.word 0xf9400b01
.word 0xd1000421
.word 0x8b010001
.word 0xf9400021
.word 0xf9002ba1
.word 0xf9400f01
.word 0xd1000421
.word 0x8b010000
.word 0xb9800000
.word 0xf9002fa0
.word 0xb9803b01
.word 0xaa1703e0
.word 0x8b010000
.word 0xf9401301
.word 0xf9401702
.word 0xd63f0040
.word 0xf94023a1
.word 0xf94027a2
.word 0xf9402ba3
.word 0xf9402fa4
.word 0xb9803b05
.word 0xaa1703e0
.word 0x8b050000
.word 0xf9401fa5
.word 0xf94014af
.word 0xf9401fa5
.word 0xf94018a5
.word 0xd63f00a0
.word 0xb9803b01
.word 0xaa1703e0
.word 0x8b010001
.word 0xb9804302
.word 0xaa1703e0
.word 0x8b020000
.word 0xf9401302
.word 0xf9401b03
.word 0xd63f0060
.word 0xf94013a0
.word 0xb9804302
.word 0xaa1703e1
.word 0x8b020021
.word 0xf9401302
.word 0xf9401b02
.word 0xf9401fa2
.word 0xf9401c42
bl _mono_gsharedvt_value_copy
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_58:
.text
ut_89:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #488]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
.word 0xf9401019
.word 0xb9800320
.word 0xf90023bf
.word 0xf9400720
.word 0xd1000400
.word 0x8b000340
.word 0xf9400018
.word 0xf9400b20
.word 0xd1000400
.word 0x8b000340
.word 0xf9400017
.word 0xf9400f20
.word 0xd1000400
.word 0x8b000340
.word 0xb9800000
.word 0xf9401fa1
.word 0xf940142f
.word 0xf9401fa1
.word 0xf9401821
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003f6
.word 0xf9401320
.word 0xd1000400
.word 0x8b000340
.word 0xb9800000
.word 0xf9401fa1
.word 0xf940142f
.word 0xf9401fa1
.word 0xf9401c21
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003fa
.word 0xeb17031f
.word 0x54000600
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400419
.word 0xb4000118
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb19001f
.word 0x10000011
.word 0x540005a1
.word 0xaa1803f9
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400418
.word 0xb4000117
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xeb18001f
.word 0x10000011
.word 0x54000421
.word 0xf9401fa0
.word 0xf940200f
.word 0x394002fe
.word 0xf9401fa0
.word 0xf9402401
.word 0xaa1703e0
.word 0xd63f0020
.word 0x93407f41
.word 0x8b010000
.word 0xf9002ba0
.word 0xf9401fa0
.word 0xf940200f
.word 0x3940033e
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400001
.word 0xaa1903e0
.word 0xd63f0020
.word 0xaa0003e1
.word 0xf9402ba0
.word 0x93407ec2
.word 0x8b020021
.word 0xcb010000
.word 0x14000003
.word 0x4b160340
.word 0x93407c00
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_59:
.text
ut_90:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013ba
.word 0xf9001faf
.word 0xaa0003f7
.word 0xf90017a1
.word 0xf9001ba2
.word 0xaa0303fa

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #496]
.word 0xf9401fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401fa0
.word 0xf9401016
.word 0xb98002c0
.word 0xf90023bf
.word 0xf9401fa0
.word 0xf9400c00
.word 0xf9400000

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #312]
.word 0xeb01001f
.word 0x9a9f07e0
.word 0x35000160
.word 0xf9401fa0
.word 0xf940140f
.word 0xf9401fa0
.word 0xf9401801
.word 0xaa1703e0
.word 0xd63f0020
.word 0x93407c00
.word 0xd280007e
.word 0x6b1e001f
.word 0x54000120
.word 0xf9401ba0
.word 0xb900001f
.word 0xb900035f
.word 0xd5033bbf
.word 0xf94017a0
.word 0xf900001f
.word 0xd2a00000
.word 0x14000034
.word 0xf94006c0
.word 0xd1000400
.word 0x8b0002e0
.word 0xb9800000
.word 0xf9401fa1
.word 0xf9401c2f
.word 0xf9401fa1
.word 0xf9402021
.word 0xd63f0020
.word 0x93407c00
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xb9000001
.word 0xf9400ac0
.word 0xd1000400
.word 0x8b0002e0
.word 0xb9800000
.word 0xf9401fa1
.word 0xf9401c2f
.word 0xf9401fa1
.word 0xf9402421
.word 0xd63f0020
.word 0x93407c00
.word 0xf9401ba1
.word 0xb9800021
.word 0x4b010000
.word 0xb9000340
.word 0xf9400ec0
.word 0xd1000400
.word 0x8b0002e0
.word 0xf940001a
.word 0xb400011a
.word 0xf9400340

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xeb01001f
.word 0x10000011
.word 0x54000241
.word 0xd5033bbf
.word 0xf94017a0
.word 0xf900001a
.word 0xd349fc00
.word 0x92405800

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xd2800020
.word 0xa9415fb6
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd28019c0
.word 0xaa1103e1
bl _p_75

Lme_5a:
.text
ut_91:
add x0, x0, 16
b System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor
System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013af

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #504]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
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
.word 0xf94013a0
.word 0xf940140f
.word 0xf94013a0
.word 0xf9401800
.word 0xd63f0000
.word 0xf9001ba0
.word 0xb9802341
.word 0xaa1903e0
.word 0x8b010000
.word 0xf9400741
.word 0xf9400b42
.word 0xd63f0040
.word 0xf9401ba1
.word 0xb9802342
.word 0xaa1903e0
.word 0x8b020000
.word 0xf94013a2
.word 0xf9401c4f
.word 0xf94013a2
.word 0xf9402042
.word 0xd63f0040
.word 0xb9802341
.word 0xaa1903e0
.word 0x8b010001
.word 0xb9802b42
.word 0xaa1903e0
.word 0x8b020000
.word 0xf9400742
.word 0xf9400f43
.word 0xd63f0060
.word 0xf94013a0
.word 0xf9402400
.word 0xf94013a1
.word 0xf9400c21
.word 0xf9400021
.word 0xd1000421
.word 0x8b010000
.word 0xb9802b42
.word 0xaa1903e1
.word 0x8b020021
.word 0xf9400742
.word 0xf9400f42
.word 0xf94013a2
.word 0xf9400c42
.word 0xf9400442
bl _mono_gsharedvt_value_copy
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5b:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor
System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000baf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #512]
.word 0xf9400ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9000fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf9401400
bl _p_80
.word 0xf9400ba1
.word 0xf940182f
.word 0xf9400ba1
.word 0xf9401c21
.word 0xf90017a0
.word 0xd63f0020
.word 0xf94017a1
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400ba2
.word 0xf9402442
.word 0xd1000442
.word 0x8b020000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5c:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor
System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #520]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5d:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0
.word 0xa9018ba1
.word 0xf90017a3

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #528]
.word 0xf9401ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9401ba0
.word 0xf9401000
.word 0xf9001fa0
.word 0xb9800000
.word 0xf9001fbf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x15, [x16, #536]
.word 0xf9401ba0
.word 0xf9401403
.word 0xf94017a0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xd63f0060
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5e:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory
System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401000
.word 0xf90017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5f:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next
System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #552]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_60:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex
System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #560]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_61:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #568]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401000
.word 0xf90017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_62:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf90013af
.word 0xf9000fa0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #576]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401000
.word 0xf90017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_63:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #584]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_64:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000faf
.word 0xf9000ba0

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #592]
.word 0xf9400fa0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90013a0
.word 0xb9800000
.word 0xf90013bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_65:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #600]
.word 0xf94013a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94013a0
.word 0xf9401000
.word 0xf90017a0
.word 0xb9800000
.word 0xf90017bf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_66:
.text
	.align 4
	.no_dead_strip System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int
System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf90017af
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #608]
.word 0xf94017a0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf94017a0
.word 0xf9401000
.word 0xf9001ba0
.word 0xb9800000
.word 0xf9001bbf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2801161
bl _p_68
.word 0xaa0003e1
.word 0xd2801d20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_67:
.text
	.align 4
	.no_dead_strip System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0
System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000baf

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x0, [x16, #56]
.word 0xf9400011
.word 0xb4000051
bl _p_1

adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x1, [x16, #616]
.word 0xf9400ba0
.word 0xf9400c10
.word 0xb5000050
bl _mini_init_method_rgctx
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9000fa0
.word 0xb9800000
.word 0xf9000fbf
.word 0xf9400ba0
.word 0xf9401400
bl _p_80
.word 0xf9400ba1
.word 0xf940182f
.word 0xf9400ba1
.word 0xf9401c21
.word 0xf90017a0
.word 0xd63f0020
.word 0xf94017a1
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400ba2
.word 0xf9402442
.word 0xd1000442
.word 0x8b020000
.word 0xf90013a0
.word 0xd5033bbf
.word 0xf94013a0
.word 0xf9000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_70:
.text
	.align 3
jit_code_end:
_mono_aot_System_Memoryjit_code_end:
	.globl _mono_aot_System_Memoryjit_code_end

	.byte 0,0,0,0
.no_dead_strip _System_Memory_System_SequencePosition__ctor_object_int
.no_dead_strip _System_Memory_System_SequencePosition_GetObject
.no_dead_strip _System_Memory_System_SequencePosition_GetInteger
.no_dead_strip _System_Memory_System_SequencePosition_Equals_System_SequencePosition
.no_dead_strip _System_Memory_System_SequencePosition_Equals_object
.no_dead_strip _System_Memory_System_SequencePosition_GetHashCode
.no_dead_strip _System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
.no_dead_strip _System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument
.no_dead_strip _System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument
.no_dead_strip _System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument
.no_dead_strip _System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached
.no_dead_strip _System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached
.no_dead_strip _System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange
.no_dead_strip _System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange
.no_dead_strip _System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long
.no_dead_strip _System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long
.no_dead_strip _System_Memory_System_Buffers_BuffersExtensions_CopyTo_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF
.no_dead_strip _System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF
.no_dead_strip _System_Memory_System_Buffers_BuffersExtensions_ToArray_T_REF_System_Buffers_ReadOnlySequence_1_T_REF_
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsEmpty
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF__
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long_long
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_System_SequencePosition_System_SequencePosition
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_ToString
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition_
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition_
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition_
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetString_string__int__int_
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__cctor
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__cctor
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next
.no_dead_strip _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenMemory
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenSpan
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenCount
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_Clear
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_Advance_int
.no_dead_strip _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_GetMemory_int
.no_dead_strip _mono_aot_System_Memory_init_method
.no_dead_strip _mono_aot_System_Memory_init_method_gshared_mrgctx
.no_dead_strip _mono_aot_System_Memory_init_method_gshared_this
.no_dead_strip _mono_aot_System_Memory_init_method_gshared_vtable
.no_dead_strip _mono_aot_System_Memory_icall_cold_wrapper_249
.no_dead_strip _System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory
.no_dead_strip _System_Memory_System_Array_EmptyArray_1_T_REF__cctor

.text
	.align 3
method_addresses:
_mono_aot_System_Memorymethod_addresses:
	.globl _mono_aot_System_Memorymethod_addresses
	.no_dead_strip method_addresses
bl _System_Memory_System_SequencePosition__ctor_object_int
bl _System_Memory_System_SequencePosition_GetObject
bl _System_Memory_System_SequencePosition_GetInteger
bl _System_Memory_System_SequencePosition_Equals_System_SequencePosition
bl _System_Memory_System_SequencePosition_Equals_object
bl _System_Memory_System_SequencePosition_GetHashCode
bl _System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
bl _System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument
bl _System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument
bl _System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument
bl _System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached
bl _System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached
bl _System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange
bl _System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange
bl _System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long
bl _System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long
bl _System_Memory_System_Buffers_BuffersExtensions_CopyTo_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF
bl _System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF
bl _System_Memory_System_Buffers_BuffersExtensions_ToArray_T_REF_System_Buffers_ReadOnlySequence_1_T_REF_
bl method_addresses
bl method_addresses
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsEmpty
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF__
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long_long
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_System_SequencePosition_System_SequencePosition
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Slice_long
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_ToString
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition_
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition_
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition_
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetString_string__int__int_
bl _System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__cctor
bl _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__cctor
bl _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor
bl _System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
bl _System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int
bl _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory
bl _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next
bl _System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenMemory
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenSpan
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_get_WrittenCount
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_Clear
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_Advance_int
bl _System_Memory_System_Buffers_ArrayBufferWriter_1_T_REF_GetMemory_int
bl method_addresses
bl System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
bl System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
bl System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_
bl method_addresses
bl method_addresses
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_
bl System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor
bl System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor
bl System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor
bl System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
bl System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory
bl System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next
bl System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int
bl System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int
bl _mono_aot_System_Memory_init_method
bl _mono_aot_System_Memory_init_method_gshared_mrgctx
bl _mono_aot_System_Memory_init_method_gshared_this
bl _mono_aot_System_Memory_init_method_gshared_vtable
bl _mono_aot_System_Memory_icall_cold_wrapper_249
bl method_addresses
bl _System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory
bl _System_Memory_System_Array_EmptyArray_1_T_REF__cctor
bl System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
_mono_aot_System_Memoryunbox_trampolines:
	.globl _mono_aot_System_Memoryunbox_trampolines

	.long 0,1,2,3,4,5,21,22
	.long 23,24,25,26,27,28,29,30
	.long 31,32,33,34,35,36,37,38
	.long 39,40,41,42,43,44,45,46
	.long 66,67,68,69,70,71,72,73
	.long 74,75,76,77,78,79,80,81
	.long 82,83,84,85,86,87,88,89
	.long 90,91
unbox_trampolines_end:
_mono_aot_System_Memoryunbox_trampolines_end:
	.globl _mono_aot_System_Memoryunbox_trampolines_end

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
_mono_aot_System_Memoryunbox_trampoline_addresses:
	.globl _mono_aot_System_Memoryunbox_trampoline_addresses
bl ut_0
bl ut_1
bl ut_2
bl ut_3
bl ut_4
bl ut_5
bl ut_21
bl ut_22
bl ut_23
bl ut_24
bl ut_25
bl ut_26
bl ut_27
bl ut_28
bl ut_29
bl ut_30
bl ut_31
bl ut_32
bl ut_33
bl ut_34
bl ut_35
bl ut_36
bl ut_37
bl ut_38
bl ut_39
bl ut_40
bl ut_41
bl ut_42
bl ut_43
bl ut_44
bl ut_45
bl ut_46
bl ut_66
bl ut_67
bl ut_68
bl ut_69
bl ut_70
bl ut_71
bl ut_72
bl ut_73
bl ut_74
bl ut_75
bl ut_76
bl ut_77
bl ut_78
bl ut_79
bl ut_80
bl ut_81
bl ut_82
bl ut_83
bl ut_84
bl ut_85
bl ut_86
bl ut_87
bl ut_88
bl ut_89
bl ut_90
bl ut_91

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:
_mono_aot_System_Memoryunwind_info:
	.globl _mono_aot_System_Memoryunwind_info

	.byte 0,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,21,12,31,0,68,14,96,157,12,158,11,68
	.byte 13,29,68,152,10,153,9,68,154,8,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,13,12,31
	.byte 0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,16,12,31,0
	.byte 68,14,96,157,12,158,11,68,13,29,68,153,10,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7
	.byte 21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6,34,12,31,0,68,14,176,1,157,22
	.byte 158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14,154,13,19,12,31,0,68,14,128
	.byte 1,157,16,158,15,68,13,29,68,152,14,153,13,21,12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9
	.byte 68,154,8,22,12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,152,28,153,27,68,154,26,17,12,31,0,68,14
	.byte 128,1,157,16,158,15,68,13,29,68,153,14,31,12,31,0,68,14,96,157,12,158,11,68,13,29,68,148,10,149,9,68
	.byte 150,8,151,7,68,152,6,153,5,68,154,4,27,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,150,14,151,13
	.byte 68,152,12,153,11,68,154,10,34,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,147,18,148,17,68,149,16,150
	.byte 15,68,151,14,152,13,68,153,12,154,11,30,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68
	.byte 149,12,150,11,68,151,10,68,153,9,33,12,31,0,68,14,112,157,14,158,13,68,13,29,68,147,12,148,11,68,149,10
	.byte 150,9,68,151,8,152,7,68,153,6,154,5,22,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13
	.byte 68,149,12,18,12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,18,12,31,0,68,14,96,157,12,158
	.byte 11,68,13,29,68,151,10,152,9,26,12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153
	.byte 7,68,154,6,21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,154,6,18,12,31,0,68,14
	.byte 64,157,8,158,7,68,13,29,68,153,6,154,5,13,12,31,0,68,14,64,157,8,158,7,68,13,29

.text
	.align 4
plt:
_mono_aot_System_Memoryplt:
	.globl _mono_aot_System_Memoryplt
mono_aot_System_Memory_plt:
_p_1_plt_System_Memory__jit_icall_mono_threads_state_poll_llvm:
	.globl _p_1_plt_System_Memory__jit_icall_mono_threads_state_poll_llvm
.private_extern _p_1_plt_System_Memory__jit_icall_mono_threads_state_poll_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_threads_state_poll
plt_System_Memory__jit_icall_mono_threads_state_poll:
_p_1:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 6168
_p_2_plt_System_Memory__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm:
	.globl _p_2_plt_System_Memory__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
.private_extern _p_2_plt_System_Memory__jit_icall_llvm_throw_corlib_exception_abs_trampoline_llvm
	.no_dead_strip plt_System_Memory__jit_icall_llvm_throw_corlib_exception_abs_trampoline
plt_System_Memory__jit_icall_llvm_throw_corlib_exception_abs_trampoline:
_p_2:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 6171
_p_3_plt_System_Memory_object_Equals_object_object_llvm:
	.globl _p_3_plt_System_Memory_object_Equals_object_object_llvm
.private_extern _p_3_plt_System_Memory_object_Equals_object_object_llvm
	.no_dead_strip plt_System_Memory_object_Equals_object_object
plt_System_Memory_object_Equals_object_object:
_p_3:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 6174
_p_4_plt_System_Memory_System_SequencePosition_Equals_System_SequencePosition_llvm:
	.globl _p_4_plt_System_Memory_System_SequencePosition_Equals_System_SequencePosition_llvm
.private_extern _p_4_plt_System_Memory_System_SequencePosition_Equals_System_SequencePosition_llvm
	.no_dead_strip plt_System_Memory_System_SequencePosition_Equals_System_SequencePosition
plt_System_Memory_System_SequencePosition_Equals_System_SequencePosition:
_p_4:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 6179
_p_5_plt_System_Memory_System_HashCode_Combine_int_int_int_int_llvm:
	.globl _p_5_plt_System_Memory_System_HashCode_Combine_int_int_int_int_llvm
.private_extern _p_5_plt_System_Memory_System_HashCode_Combine_int_int_int_int_llvm
	.no_dead_strip plt_System_Memory_System_HashCode_Combine_int_int_int_int
plt_System_Memory_System_HashCode_Combine_int_int_int_int:
_p_5:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 6181
_p_6_plt_System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument_llvm:
	.globl _p_6_plt_System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument_llvm
.private_extern _p_6_plt_System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument
plt_System_Memory_System_ThrowHelper_CreateArgumentNullException_System_ExceptionArgument:
_p_6:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 6193
_p_7_plt_System_Memory__jit_icall_mono_arch_throw_exception_llvm:
	.globl _p_7_plt_System_Memory__jit_icall_mono_arch_throw_exception_llvm
.private_extern _p_7_plt_System_Memory__jit_icall_mono_arch_throw_exception_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_arch_throw_exception
plt_System_Memory__jit_icall_mono_arch_throw_exception:
_p_7:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 6195
_p_8_plt_System_Memory_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm:
	.globl _p_8_plt_System_Memory_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
.private_extern _p_8_plt_System_Memory_wrapper_alloc_object_AllocSmall_intptr_intptr_llvm
	.no_dead_strip plt_System_Memory_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_System_Memory_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_8:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 6197
_p_9_plt_System_Memory_System_Enum_ToString_llvm:
	.globl _p_9_plt_System_Memory_System_Enum_ToString_llvm
.private_extern _p_9_plt_System_Memory_System_Enum_ToString_llvm
	.no_dead_strip plt_System_Memory_System_Enum_ToString
plt_System_Memory_System_Enum_ToString:
_p_9:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 6205
_p_10_plt_System_Memory_System_ArgumentNullException__ctor_string_llvm:
	.globl _p_10_plt_System_Memory_System_ArgumentNullException__ctor_string_llvm
.private_extern _p_10_plt_System_Memory_System_ArgumentNullException__ctor_string_llvm
	.no_dead_strip plt_System_Memory_System_ArgumentNullException__ctor_string
plt_System_Memory_System_ArgumentNullException__ctor_string:
_p_10:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 6210
_p_11_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument_llvm:
	.globl _p_11_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument_llvm
.private_extern _p_11_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument
plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_System_ExceptionArgument:
_p_11:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 6215
_p_12_plt_System_Memory_System_ArgumentOutOfRangeException__ctor_string_llvm:
	.globl _p_12_plt_System_Memory_System_ArgumentOutOfRangeException__ctor_string_llvm
.private_extern _p_12_plt_System_Memory_System_ArgumentOutOfRangeException__ctor_string_llvm
	.no_dead_strip plt_System_Memory_System_ArgumentOutOfRangeException__ctor_string
plt_System_Memory_System_ArgumentOutOfRangeException__ctor_string:
_p_12:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 6217
_p_13_plt_System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached_llvm:
	.globl _p_13_plt_System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached_llvm
.private_extern _p_13_plt_System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached
plt_System_Memory_System_ThrowHelper_CreateInvalidOperationException_EndPositionNotReached:
_p_13:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 6222
_p_14_plt_System_Memory_System_InvalidOperationException__ctor_string_llvm:
	.globl _p_14_plt_System_Memory_System_InvalidOperationException__ctor_string_llvm
.private_extern _p_14_plt_System_Memory_System_InvalidOperationException__ctor_string_llvm
	.no_dead_strip plt_System_Memory_System_InvalidOperationException__ctor_string
plt_System_Memory_System_InvalidOperationException__ctor_string:
_p_14:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 6224
_p_15_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange_llvm:
	.globl _p_15_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange_llvm
.private_extern _p_15_plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange
plt_System_Memory_System_ThrowHelper_CreateArgumentOutOfRangeException_PositionOutOfRange:
_p_15:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 6229
_p_16_plt_System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long_llvm:
	.globl _p_16_plt_System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long_llvm
.private_extern _p_16_plt_System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long
plt_System_Memory_System_ThrowHelper_CreateStartOrEndArgumentValidationException_long:
_p_16:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 6231
_p_17_plt_System_Memory__jit_icall_mini_init_method_rgctx_llvm:
	.globl _p_17_plt_System_Memory__jit_icall_mini_init_method_rgctx_llvm
.private_extern _p_17_plt_System_Memory__jit_icall_mini_init_method_rgctx_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mini_init_method_rgctx
plt_System_Memory__jit_icall_mini_init_method_rgctx:
_p_17:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 6233
_p_18_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_llvm:
	.globl _p_18_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_llvm
.private_extern _p_18_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment:
_p_18:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 6251
_p_19_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_llvm:
	.globl _p_19_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_llvm
.private_extern _p_19_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF
plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF:
_p_19:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 6265
_p_20_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_llvm:
	.globl _p_20_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_llvm
.private_extern _p_20_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First:
_p_20:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #784]
br x16
.word 6278
_p_21_plt_System_Memory_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm:
	.globl _p_21_plt_System_Memory_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm
.private_extern _p_21_plt_System_Memory_System_ThrowHelper_ThrowArgumentException_DestinationTooShort_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentException_DestinationTooShort
plt_System_Memory_System_ThrowHelper_ThrowArgumentException_DestinationTooShort:
_p_21:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #792]
br x16
.word 6292
_p_22_plt_System_Memory_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm:
	.globl _p_22_plt_System_Memory_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm
.private_extern _p_22_plt_System_Memory_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr_llvm
	.no_dead_strip plt_System_Memory_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr
plt_System_Memory_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr:
_p_22:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 6297
_p_23_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm:
	.globl _p_23_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
.private_extern _p_23_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument
plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument:
_p_23:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 6302
_p_24_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm:
	.globl _p_24_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
.private_extern _p_24_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException
plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException:
_p_24:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 6304
_p_25_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_llvm:
	.globl _p_25_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_llvm
.private_extern _p_25_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length:
_p_25:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 6324
_p_26_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start_llvm:
	.globl _p_26_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start_llvm
.private_extern _p_26_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Start:
_p_26:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 6338
_p_27_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool_llvm:
	.globl _p_27_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool_llvm
.private_extern _p_27_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__bool:
_p_27:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 6352
_p_28_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_0_llvm:
	.globl _p_28_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_0_llvm
.private_extern _p_28_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_0_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_0
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_0:
_p_28:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 6381
_p_29_plt_System_Memory_wrapper_alloc_object_AllocVector_intptr_intptr_llvm:
	.globl _p_29_plt_System_Memory_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
.private_extern _p_29_plt_System_Memory_wrapper_alloc_object_AllocVector_intptr_intptr_llvm
	.no_dead_strip plt_System_Memory_wrapper_alloc_object_AllocVector_intptr_intptr
plt_System_Memory_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_29:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 6395
_p_30_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_0_llvm:
	.globl _p_30_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_0_llvm
.private_extern _p_30_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_0_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_0
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_IsSingleSegment_0:
_p_30:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 6403
_p_31_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_0_llvm:
	.globl _p_31_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_0_llvm
.private_extern _p_31_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_0_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_0
plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_T_REF_System_Buffers_ReadOnlySequence_1_T_REF__System_Span_1_T_REF_0:
_p_31:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 6417
_p_32_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_0_llvm:
	.globl _p_32_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_0_llvm
.private_extern _p_32_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_0_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_0
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_First_0:
_p_32:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 6430
_p_33_plt_System_Memory_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm:
	.globl _p_33_plt_System_Memory_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm
.private_extern _p_33_plt_System_Memory_System_ThrowHelper_ThrowArrayTypeMismatchException_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArrayTypeMismatchException
plt_System_Memory_System_ThrowHelper_ThrowArrayTypeMismatchException:
_p_33:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 6444
_p_34_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength_llvm:
	.globl _p_34_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength_llvm
.private_extern _p_34_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetLength:
_p_34:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 6449
_p_35_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_1_llvm:
	.globl _p_35_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_1_llvm
.private_extern _p_35_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_1_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_1
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_get_Length_1:
_p_35:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 6461
_p_36_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer_llvm:
	.globl _p_36_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer_llvm
.private_extern _p_36_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBuffer:
_p_36:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 6473
_p_37_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int_llvm:
	.globl _p_37_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int_llvm
.private_extern _p_37_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetIndex_int:
_p_37:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 6485
_p_38_plt_System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm:
	.globl _p_38_plt_System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm
.private_extern _p_38_plt_System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
plt_System_Memory_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument:
_p_38:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 6497
_p_39_plt_System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long_llvm:
	.globl _p_39_plt_System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long_llvm
.private_extern _p_39_plt_System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long
plt_System_Memory_System_ThrowHelper_ThrowStartOrEndArgumentValidationException_long:
_p_39:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 6499
_p_40_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition__llvm:
	.globl _p_40_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition__llvm
.private_extern _p_40_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition__llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition_
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__System_SequencePosition_:
_p_40:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 6501
_p_41_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory_llvm:
	.globl _p_41_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory_llvm
.private_extern _p_41_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory
plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Memory:
_p_41:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 6517
_p_42_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next_llvm:
	.globl _p_42_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next_llvm
.private_extern _p_42_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next
plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_Next:
_p_42:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 6530
_p_43_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument_llvm:
	.globl _p_43_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument_llvm
.private_extern _p_43_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_long_System_ExceptionArgument:
_p_43:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 6543
_p_44_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long_llvm:
	.globl _p_44_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long_llvm
.private_extern _p_44_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_REF_object_int_object_int_long:
_p_44:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 6555
_p_45_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange_llvm:
	.globl _p_45_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange_llvm
.private_extern _p_45_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange
plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_PositionOutOfRange:
_p_45:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 6567
_p_46_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object_llvm:
	.globl _p_46_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object_llvm
.private_extern _p_46_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_BoundsCheck_uint_object_uint_object:
_p_46:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 6569
_p_47_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument_llvm:
	.globl _p_47_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument_llvm
.private_extern _p_47_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_Seek_long_System_ExceptionArgument:
_p_47:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 6581
_p_48_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__llvm:
	.globl _p_48_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__llvm
.private_extern _p_48_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition__llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition_
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_SliceImpl_System_SequencePosition_:
_p_48:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 6593
_p_49_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm:
	.globl _p_49_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
.private_extern _p_49_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int:
_p_49:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 6605
_p_50_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm:
	.globl _p_50_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
.private_extern _p_50_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string:
_p_50:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 6610
_p_51_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm:
	.globl _p_51_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
.private_extern _p_51_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string:
_p_51:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 6615
_p_52_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_long_long_llvm:
	.globl _p_52_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_long_long_llvm
.private_extern _p_52_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_long_long_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_long_long
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_long_long:
_p_52:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 6620
_p_53_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm:
	.globl _p_53_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
.private_extern _p_53_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear:
_p_53:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 6636
_p_54_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition__llvm:
	.globl _p_54_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition__llvm
.private_extern _p_54_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition__llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition_
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_REF__System_SequencePosition_:
_p_54:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 6641
_p_55_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType_llvm:
	.globl _p_55_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType_llvm
.private_extern _p_55_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetSequenceType:
_p_55:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 6653
_p_56_plt_System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory_llvm:
	.globl _p_56_plt_System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory_llvm
.private_extern _p_56_plt_System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory
plt_System_Memory_System_Buffers_MemoryManager_1_T_REF_get_Memory:
_p_56:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 6671
_p_57_plt_System_Memory_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm:
	.globl _p_57_plt_System_Memory_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm
.private_extern _p_57_plt_System_Memory_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr_llvm
	.no_dead_strip plt_System_Memory_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
plt_System_Memory_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
_p_57:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 6685
_p_58_plt_System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached_llvm:
	.globl _p_58_plt_System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached_llvm
.private_extern _p_58_plt_System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached
plt_System_Memory_System_ThrowHelper_ThrowInvalidOperationException_EndPositionNotReached:
_p_58:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 6693
_p_59_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_0_llvm:
	.globl _p_59_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_0_llvm
.private_extern _p_59_plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_0_llvm
	.no_dead_strip plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_0
plt_System_Memory_System_ThrowHelper_ThrowArgumentOutOfRangeException_System_ExceptionArgument_0:
_p_59:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 6695
_p_60_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool_llvm:
	.globl _p_60_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool_llvm
.private_extern _p_60_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF_GetFirstBufferSlow_object_bool:
_p_60:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 6700
_p_61_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex_llvm:
	.globl _p_61_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex_llvm
.private_extern _p_61_plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex
plt_System_Memory_System_Buffers_ReadOnlySequenceSegment_1_T_REF_get_RunningIndex:
_p_61:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 6712
_p_62_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int_llvm:
	.globl _p_62_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int_llvm
.private_extern _p_62_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_object_int_object_int:
_p_62:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 6725
_p_63_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF___llvm:
	.globl _p_63_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF___llvm
.private_extern _p_63_plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF___llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF__
plt_System_Memory_System_Buffers_ReadOnlySequence_1_T_REF__ctor_T_REF__:
_p_63:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 6737
_p_64_plt_System_Memory__jit_icall_mono_generic_class_init_llvm:
	.globl _p_64_plt_System_Memory__jit_icall_mono_generic_class_init_llvm
.private_extern _p_64_plt_System_Memory__jit_icall_mono_generic_class_init_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_generic_class_init
plt_System_Memory__jit_icall_mono_generic_class_init:
_p_64:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 6749
_p_65_plt_System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor_llvm:
	.globl _p_65_plt_System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor_llvm
.private_extern _p_65_plt_System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor
plt_System_Memory_System_Buffers_ReadOnlySequence_1__c_T_REF__ctor:
_p_65:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 6752
_p_66_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_char_System_Buffers_ReadOnlySequence_1_char__System_Span_1_char_llvm:
	.globl _p_66_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_char_System_Buffers_ReadOnlySequence_1_char__System_Span_1_char_llvm
.private_extern _p_66_plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_char_System_Buffers_ReadOnlySequence_1_char__System_Span_1_char_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_char_System_Buffers_ReadOnlySequence_1_char__System_Span_1_char
plt_System_Memory_System_Buffers_BuffersExtensions_CopyToMultiSegment_char_System_Buffers_ReadOnlySequence_1_char__System_Span_1_char:
_p_66:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 6764
_p_67_plt_System_Memory_System_Buffers_ReadOnlySequence_1_char_get_First_llvm:
	.globl _p_67_plt_System_Memory_System_Buffers_ReadOnlySequence_1_char_get_First_llvm
.private_extern _p_67_plt_System_Memory_System_Buffers_ReadOnlySequence_1_char_get_First_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_1_char_get_First
plt_System_Memory_System_Buffers_ReadOnlySequence_1_char_get_First:
_p_67:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 6777
_p_68_plt_System_Memory__jit_icall_mono_helper_ldstr_llvm:
	.globl _p_68_plt_System_Memory__jit_icall_mono_helper_ldstr_llvm
.private_extern _p_68_plt_System_Memory__jit_icall_mono_helper_ldstr_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_helper_ldstr
plt_System_Memory__jit_icall_mono_helper_ldstr:
_p_68:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 6793
_p_69_plt_System_Memory__jit_icall_mono_create_corlib_exception_1_llvm:
	.globl _p_69_plt_System_Memory__jit_icall_mono_create_corlib_exception_1_llvm
.private_extern _p_69_plt_System_Memory__jit_icall_mono_create_corlib_exception_1_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_create_corlib_exception_1
plt_System_Memory__jit_icall_mono_create_corlib_exception_1:
_p_69:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 6796
_p_70_plt_System_Memory__jit_icall_mono_helper_ldstr_mscorlib_llvm:
	.globl _p_70_plt_System_Memory__jit_icall_mono_helper_ldstr_mscorlib_llvm
.private_extern _p_70_plt_System_Memory__jit_icall_mono_helper_ldstr_mscorlib_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_helper_ldstr_mscorlib
plt_System_Memory__jit_icall_mono_helper_ldstr_mscorlib:
_p_70:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 6799
_p_71_plt_System_Memory_System_SequencePosition_GetObject_llvm:
	.globl _p_71_plt_System_Memory_System_SequencePosition_GetObject_llvm
.private_extern _p_71_plt_System_Memory_System_SequencePosition_GetObject_llvm
	.no_dead_strip plt_System_Memory_System_SequencePosition_GetObject
plt_System_Memory_System_SequencePosition_GetObject:
_p_71:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 6802
_p_72_plt_System_Memory_System_SequencePosition__ctor_object_int_llvm:
	.globl _p_72_plt_System_Memory_System_SequencePosition__ctor_object_int_llvm
.private_extern _p_72_plt_System_Memory_System_SequencePosition__ctor_object_int_llvm
	.no_dead_strip plt_System_Memory_System_SequencePosition__ctor_object_int
plt_System_Memory_System_SequencePosition__ctor_object_int:
_p_72:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 6804
_p_73_plt_System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int_llvm:
	.globl _p_73_plt_System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int_llvm
.private_extern _p_73_plt_System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int_llvm
	.no_dead_strip plt_System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int
plt_System_Memory_System_Buffers_ReadOnlySequence_ArrayToSequenceEnd_int:
_p_73:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 6806
_p_74_plt_System_Memory_System_SequencePosition_GetInteger_llvm:
	.globl _p_74_plt_System_Memory_System_SequencePosition_GetInteger_llvm
.private_extern _p_74_plt_System_Memory_System_SequencePosition_GetInteger_llvm
	.no_dead_strip plt_System_Memory_System_SequencePosition_GetInteger
plt_System_Memory_System_SequencePosition_GetInteger:
_p_74:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 6808
_p_75_plt_System_Memory__jit_icall_mono_arch_throw_corlib_exception_llvm:
	.globl _p_75_plt_System_Memory__jit_icall_mono_arch_throw_corlib_exception_llvm
.private_extern _p_75_plt_System_Memory__jit_icall_mono_arch_throw_corlib_exception_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_arch_throw_corlib_exception
plt_System_Memory__jit_icall_mono_arch_throw_corlib_exception:
_p_75:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 6810
_p_76_plt_System_Memory_string_Substring_int_int_llvm:
	.globl _p_76_plt_System_Memory_string_Substring_int_int_llvm
.private_extern _p_76_plt_System_Memory_string_Substring_int_int_llvm
	.no_dead_strip plt_System_Memory_string_Substring_int_int
plt_System_Memory_string_Substring_int_int:
_p_76:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 6812
_p_77_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm:
	.globl _p_77_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm
.private_extern _p_77_plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string_llvm
	.no_dead_strip plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string
plt_System_Memory_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendLiteral_string:
_p_77:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 6817
_p_78_plt_System_Memory_System_MemoryExtensions_AsMemory_string_int_int_llvm:
	.globl _p_78_plt_System_Memory_System_MemoryExtensions_AsMemory_string_int_int_llvm
.private_extern _p_78_plt_System_Memory_System_MemoryExtensions_AsMemory_string_int_int_llvm
	.no_dead_strip plt_System_Memory_System_MemoryExtensions_AsMemory_string_int_int
plt_System_Memory_System_MemoryExtensions_AsMemory_string_int_int:
_p_78:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 6822
_p_79_plt_System_Memory__jit_icall_mono_object_castclass_unbox_llvm:
	.globl _p_79_plt_System_Memory__jit_icall_mono_object_castclass_unbox_llvm
.private_extern _p_79_plt_System_Memory__jit_icall_mono_object_castclass_unbox_llvm
	.no_dead_strip plt_System_Memory__jit_icall_mono_object_castclass_unbox
plt_System_Memory__jit_icall_mono_object_castclass_unbox:
_p_79:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 6827
_p_80_plt_System_Memory_wrapper_alloc_object_Alloc_intptr_llvm:
	.globl _p_80_plt_System_Memory_wrapper_alloc_object_Alloc_intptr_llvm
.private_extern _p_80_plt_System_Memory_wrapper_alloc_object_Alloc_intptr_llvm
	.no_dead_strip plt_System_Memory_wrapper_alloc_object_Alloc_intptr
plt_System_Memory_wrapper_alloc_object_Alloc_intptr:
_p_80:
adrp x16, mono_aot_System_Memory_got@PAGE+0
add x16, x16, mono_aot_System_Memory_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 6830
plt_end:
_mono_aot_System_Memoryplt_end:
	.globl _mono_aot_System_Memoryplt_end
.section __DATA, __bss
	.align 3
jit_got:
_mono_aot_System_Memoryjit_got:
	.globl _mono_aot_System_Memoryjit_got
.lcomm mono_aot_System_Memory_got, 1272
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
_mono_aot_System_Memoryglobals:
	.globl _mono_aot_System_Memoryglobals
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.BuffersExtensions:CopyTo<T_GSHAREDVT>"
	.asciz "System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT"

	.byte 0,0
	.quad System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM4=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM4
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM5=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM5
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM6=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 1,80,11
	.asciz "V_1"

LDIFF_SYM7=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM8=Lfde0_end - Lfde0_start
	.long LDIFF_SYM8
Lfde0_start:

	.long 0
	.align 3
	.quad System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT

LDIFF_SYM9=Lme_3d - System_Buffers_BuffersExtensions_CopyTo_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
	.long LDIFF_SYM9
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.BuffersExtensions:CopyToMultiSegment<T_GSHAREDVT>"
	.asciz "System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT"

	.byte 0,0
	.quad System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM10=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 1,106,3
	.asciz "param1"

LDIFF_SYM11=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 1,80,11
	.asciz "V_0"

LDIFF_SYM12=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,141,56,11
	.asciz "V_1"

LDIFF_SYM13=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 1,80,11
	.asciz "V_2"

LDIFF_SYM14=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM15=Lfde1_end - Lfde1_start
	.long LDIFF_SYM15
Lfde1_start:

	.long 0
	.align 3
	.quad System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT

LDIFF_SYM16=Lme_3e - System_Buffers_BuffersExtensions_CopyToMultiSegment_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__System_Span_1_T_GSHAREDVT
	.long LDIFF_SYM16
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.BuffersExtensions:ToArray<T_GSHAREDVT>"
	.asciz "System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_"

	.byte 0,0
	.quad System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM17=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM18=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM19=Lfde2_end - Lfde2_start
	.long LDIFF_SYM19
Lfde2_start:

	.long 0
	.align 3
	.quad System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_

LDIFF_SYM20=Lme_3f - System_Buffers_BuffersExtensions_ToArray_T_GSHAREDVT_System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_
	.long LDIFF_SYM20
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:get_Length"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM21=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM22=Lfde3_end - Lfde3_start
	.long LDIFF_SYM22
Lfde3_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length

LDIFF_SYM23=Lme_42 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Length
	.long LDIFF_SYM23
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:get_IsEmpty"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM24=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM25=Lfde4_end - Lfde4_start
	.long LDIFF_SYM25
Lfde4_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty

LDIFF_SYM26=Lme_43 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsEmpty
	.long LDIFF_SYM26
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:get_IsSingleSegment"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM27=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM28=Lfde5_end - Lfde5_start
	.long LDIFF_SYM28
Lfde5_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment

LDIFF_SYM29=Lme_44 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_IsSingleSegment
	.long LDIFF_SYM29
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:get_First"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM30=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM31=Lfde6_end - Lfde6_start
	.long LDIFF_SYM31
Lfde6_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First

LDIFF_SYM32=Lme_45 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_First
	.long LDIFF_SYM32
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:get_Start"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM33=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM34=Lfde7_end - Lfde7_start
	.long LDIFF_SYM34
Lfde7_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start

LDIFF_SYM35=Lme_46 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_get_Start
	.long LDIFF_SYM35
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM36=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_2:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM39=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM40=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM41=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM42=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_1:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM43=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM45=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM46=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM47=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:.ctor"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM48=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 1,102,3
	.asciz "param0"

LDIFF_SYM49=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM50=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,40,3
	.asciz "param2"

LDIFF_SYM51=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,141,48,3
	.asciz "param3"

LDIFF_SYM52=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM53=Lfde8_end - Lfde8_start
	.long LDIFF_SYM53
Lfde8_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int

LDIFF_SYM54=Lme_47 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_object_int_object_int
	.long LDIFF_SYM54
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:.ctor"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM55=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM56=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde9_end - Lfde9_start
	.long LDIFF_SYM57
Lfde9_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__

LDIFF_SYM58=Lme_48 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__ctor_T_GSHAREDVT__
	.long LDIFF_SYM58
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 5
	.asciz "System_Int64"

	.byte 24,16
LDIFF_SYM59=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM60=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,35,16,0,7
	.asciz "System_Int64"

LDIFF_SYM61=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM62=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM63=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:Slice"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM64=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM65=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM66=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM67=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 3,141,240,0,11
	.asciz "V_1"

LDIFF_SYM68=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM69=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM70=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM71=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM72=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 3,141,128,1,11
	.asciz "V_6"

LDIFF_SYM73=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 3,141,144,1,11
	.asciz "V_7"

LDIFF_SYM74=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 3,141,152,1,11
	.asciz "V_8"

LDIFF_SYM75=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 1,80,11
	.asciz "V_9"

LDIFF_SYM76=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 1,105,11
	.asciz "V_10"

LDIFF_SYM77=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM78=Lfde10_end - Lfde10_start
	.long LDIFF_SYM78
Lfde10_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long

LDIFF_SYM79=Lme_49 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long_long
	.long LDIFF_SYM79
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14
	.byte 154,13
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:Slice"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM80=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,141,40,3
	.asciz "param0"

LDIFF_SYM81=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,141,48,3
	.asciz "param1"

LDIFF_SYM82=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM83=Lfde11_end - Lfde11_start
	.long LDIFF_SYM83
Lfde11_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition

LDIFF_SYM84=Lme_4a - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_System_SequencePosition_System_SequencePosition
	.long LDIFF_SYM84
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,152,14,153,13
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:Slice"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM85=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,141,48,3
	.asciz "param0"

LDIFF_SYM86=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM87=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM88=Lfde12_end - Lfde12_start
	.long LDIFF_SYM88
Lfde12_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long

LDIFF_SYM89=Lme_4b - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Slice_long
	.long LDIFF_SYM89
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,154,8
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:ToString"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM90=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM91=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 1,80,11
	.asciz "V_1"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 3,141,160,1,11
	.asciz "V_2"

LDIFF_SYM93=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 3,141,184,1,11
	.asciz "V_3"

LDIFF_SYM94=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 3,141,192,1,11
	.asciz "V_4"

LDIFF_SYM95=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 3,141,200,1,11
	.asciz "V_5"

LDIFF_SYM96=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM97=Lfde13_end - Lfde13_start
	.long LDIFF_SYM97
Lfde13_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString

LDIFF_SYM98=Lme_4c - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_ToString
	.long LDIFF_SYM98
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,152,28,153,27,68,154,26
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_4:

	.byte 5
	.asciz "System_SequencePosition"

	.byte 32,16
LDIFF_SYM99=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,0,6
	.asciz "_object"

LDIFF_SYM100=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,0,6
	.asciz "_integer"

LDIFF_SYM101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,8,0,7
	.asciz "System_SequencePosition"

LDIFF_SYM102=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM103=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM104=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_5:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM105=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM106=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM107=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM108=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM109=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:TryGet"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM110=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,141,24,3
	.asciz "param0"

LDIFF_SYM111=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,141,32,3
	.asciz "param1"

LDIFF_SYM112=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,141,40,3
	.asciz "param2"

LDIFF_SYM113=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM114=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM115=Lfde14_end - Lfde14_start
	.long LDIFF_SYM115
Lfde14_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool

LDIFF_SYM116=Lme_4d - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGet_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__bool
	.long LDIFF_SYM116
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,153,14
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:TryGetBuffer"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM117=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 1,103,3
	.asciz "param0"

LDIFF_SYM118=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 1,104,3
	.asciz "param1"

LDIFF_SYM119=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 1,105,3
	.asciz "param2"

LDIFF_SYM120=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM121=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 1,100,11
	.asciz "V_1"

LDIFF_SYM122=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 1,99,11
	.asciz "V_2"

LDIFF_SYM123=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 3,141,136,1,11
	.asciz "V_3"

LDIFF_SYM124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM125=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 1,103,11
	.asciz "V_5"

LDIFF_SYM126=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 1,99,11
	.asciz "V_6"

LDIFF_SYM127=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 1,103,11
	.asciz "V_7"

LDIFF_SYM128=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 1,80,11
	.asciz "V_8"

LDIFF_SYM129=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM130=Lfde15_end - Lfde15_start
	.long LDIFF_SYM130
Lfde15_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_

LDIFF_SYM131=Lme_4e - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetBuffer_System_SequencePosition__System_ReadOnlyMemory_1_T_GSHAREDVT__System_SequencePosition_
	.long LDIFF_SYM131
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,147,20,148,19,68,149,18,150,17,68,151,16,152,15,68,153,14
	.byte 154,13
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetFirstBuffer"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM132=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM133=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM134=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM135=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM136=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM137=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 1,80,11
	.asciz "V_5"

LDIFF_SYM138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM139=Lfde16_end - Lfde16_start
	.long LDIFF_SYM139
Lfde16_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer

LDIFF_SYM140=Lme_4f - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBuffer
	.long LDIFF_SYM140
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,148,10,149,9,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetFirstBufferSlow"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM141=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM142=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM143=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM144=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM145=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM146=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM147=Lfde17_end - Lfde17_start
	.long LDIFF_SYM147
Lfde17_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool

LDIFF_SYM148=Lme_50 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetFirstBufferSlow_object_bool
	.long LDIFF_SYM148
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,150,14,151,13,68,152,12,153,11,68,154,10
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 8
	.asciz "System_ExceptionArgument"

	.byte 4
LDIFF_SYM149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 9
	.asciz "length"

	.byte 0,9
	.asciz "start"

	.byte 1,9
	.asciz "minimumBufferSize"

	.byte 2,9
	.asciz "elementIndex"

	.byte 3,9
	.asciz "comparable"

	.byte 4,9
	.asciz "comparer"

	.byte 5,9
	.asciz "destination"

	.byte 6,9
	.asciz "offset"

	.byte 7,9
	.asciz "startSegment"

	.byte 8,9
	.asciz "endSegment"

	.byte 9,9
	.asciz "startIndex"

	.byte 10,9
	.asciz "endIndex"

	.byte 11,9
	.asciz "array"

	.byte 12,9
	.asciz "culture"

	.byte 13,9
	.asciz "manager"

	.byte 14,9
	.asciz "count"

	.byte 15,9
	.asciz "writer"

	.byte 16,0,7
	.asciz "System_ExceptionArgument"

LDIFF_SYM150=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:Seek"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM153=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM154=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM155=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 3,141,224,0,11
	.asciz "V_0"

LDIFF_SYM156=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 1,101,11
	.asciz "V_1"

LDIFF_SYM157=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 1,100,11
	.asciz "V_2"

LDIFF_SYM158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 1,99,11
	.asciz "V_3"

LDIFF_SYM159=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 1,104,11
	.asciz "V_4"

LDIFF_SYM160=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 3,141,136,1,11
	.asciz "V_5"

LDIFF_SYM161=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 1,106,11
	.asciz "V_6"

LDIFF_SYM162=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM163=Lfde18_end - Lfde18_start
	.long LDIFF_SYM163
Lfde18_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument

LDIFF_SYM164=Lme_51 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_Seek_long_System_ExceptionArgument
	.long LDIFF_SYM164
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,147,18,148,17,68,149,16,150,15,68,151,14,152,13,68,153,12
	.byte 154,11
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:SeekMultiSegment"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM165=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 1,102,3
	.asciz "param1"

LDIFF_SYM166=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 1,103,3
	.asciz "param2"

LDIFF_SYM167=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 3,141,208,0,3
	.asciz "param3"

LDIFF_SYM168=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 1,105,3
	.asciz "param4"

LDIFF_SYM169=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 3,141,216,0,11
	.asciz "V_0"

LDIFF_SYM170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 1,99,11
	.asciz "V_1"

LDIFF_SYM171=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM172=Lfde19_end - Lfde19_start
	.long LDIFF_SYM172
Lfde19_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument

LDIFF_SYM173=Lme_52 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SeekMultiSegment_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_long_System_ExceptionArgument
	.long LDIFF_SYM173
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,68,153,9
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM174=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM175=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM176=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM176
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM177=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM178=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_8:

	.byte 5
	.asciz "System_UInt64"

	.byte 24,16
LDIFF_SYM179=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM180=LDIE_U8 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,16,0,7
	.asciz "System_UInt64"

LDIFF_SYM181=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM181
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM182=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM183=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:BoundsCheck"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM184=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 1,102,3
	.asciz "param0"

LDIFF_SYM185=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 1,103,3
	.asciz "param1"

LDIFF_SYM186=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 1,104,3
	.asciz "param2"

LDIFF_SYM187=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 1,105,3
	.asciz "param3"

LDIFF_SYM188=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM189=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 1,100,11
	.asciz "V_1"

LDIFF_SYM190=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 1,99,11
	.asciz "V_2"

LDIFF_SYM191=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 3,141,224,0,11
	.asciz "V_3"

LDIFF_SYM192=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM193=LDIE_U8 - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM194=LDIE_U8 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM195=Lfde20_end - Lfde20_start
	.long LDIFF_SYM195
Lfde20_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object

LDIFF_SYM196=Lme_53 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_BoundsCheck_uint_object_uint_object
	.long LDIFF_SYM196
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,147,12,148,11,68,149,10,150,9,68,151,8,152,7,68,153,6,154
	.byte 5
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetEndPosition"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM197=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 1,101,3
	.asciz "param1"

LDIFF_SYM198=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,141,56,3
	.asciz "param2"

LDIFF_SYM199=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 3,141,192,0,3
	.asciz "param3"

LDIFF_SYM200=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 3,141,200,0,3
	.asciz "param4"

LDIFF_SYM201=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 3,141,208,0,3
	.asciz "param5"

LDIFF_SYM202=LDIE_I8 - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 3,141,216,0,11
	.asciz "V_0"

LDIFF_SYM203=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 1,100,11
	.asciz "V_1"

LDIFF_SYM204=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM205=Lfde21_end - Lfde21_start
	.long LDIFF_SYM205
Lfde21_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long

LDIFF_SYM206=Lme_54 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetEndPosition_System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_object_int_object_int_long
	.long LDIFF_SYM206
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetSequenceType"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM207=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM208=Lfde22_end - Lfde22_start
	.long LDIFF_SYM208
Lfde22_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType

LDIFF_SYM209=Lme_55 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetSequenceType
	.long LDIFF_SYM209
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetIndex"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM210=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM211=Lfde23_end - Lfde23_start
	.long LDIFF_SYM211
Lfde23_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int

LDIFF_SYM212=Lme_56 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetIndex_int
	.long LDIFF_SYM212
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:SliceImpl"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM213=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,141,40,3
	.asciz "param0"

LDIFF_SYM214=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,141,48,3
	.asciz "param1"

LDIFF_SYM215=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM216=Lfde24_end - Lfde24_start
	.long LDIFF_SYM216
Lfde24_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_

LDIFF_SYM217=Lme_57 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition__System_SequencePosition_
	.long LDIFF_SYM217
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:SliceImpl"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM218=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,141,40,3
	.asciz "param0"

LDIFF_SYM219=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM220=Lfde25_end - Lfde25_start
	.long LDIFF_SYM220
Lfde25_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_

LDIFF_SYM221=Lme_58 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_SliceImpl_System_SequencePosition_
	.long LDIFF_SYM221
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:GetLength"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM222=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM223=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM224=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM225=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM226=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 1,106,11
	.asciz "V_4"

LDIFF_SYM227=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM228=Lfde26_end - Lfde26_start
	.long LDIFF_SYM228
Lfde26_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength

LDIFF_SYM229=Lme_59 - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_GetLength
	.long LDIFF_SYM229
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,150,10,151,9,68,152,8,153,7,68,154,6
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:TryGetString"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM230=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 1,103,3
	.asciz "param0"

LDIFF_SYM231=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,141,40,3
	.asciz "param1"

LDIFF_SYM232=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,141,48,3
	.asciz "param2"

LDIFF_SYM233=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM234=Lfde27_end - Lfde27_start
	.long LDIFF_SYM234
Lfde27_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_

LDIFF_SYM235=Lme_5a - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT_TryGetString_string__int__int_
	.long LDIFF_SYM235
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,154,6
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1<T_GSHAREDVT>:.cctor"
	.asciz "System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor
	.quad Lme_5b

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM236=Lfde28_end - Lfde28_start
	.long LDIFF_SYM236
Lfde28_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor

LDIFF_SYM237=Lme_5b - System_Buffers_ReadOnlySequence_1_T_GSHAREDVT__cctor
	.long LDIFF_SYM237
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1/<>c<T_GSHAREDVT>:.cctor"
	.asciz "System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor
	.quad Lme_5c

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM238=Lfde29_end - Lfde29_start
	.long LDIFF_SYM238
Lfde29_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor

LDIFF_SYM239=Lme_5c - System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor
	.long LDIFF_SYM239
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1/<>c<T_GSHAREDVT>:.ctor"
	.asciz "System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor
	.quad Lme_5d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM240=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM241=Lfde30_end - Lfde30_start
	.long LDIFF_SYM241
Lfde30_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor

LDIFF_SYM242=Lme_5d - System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ctor
	.long LDIFF_SYM242
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1/<>c<T_GSHAREDVT>:<ToString>b__33_0"
	.asciz "System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
	.quad Lme_5e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM243=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,141,16,3
	.asciz "span"

LDIFF_SYM244=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,141,24,3
	.asciz "sequence"

LDIFF_SYM245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 1,80,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM246=Lfde31_end - Lfde31_start
	.long LDIFF_SYM246
Lfde31_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char

LDIFF_SYM247=Lme_5e - System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__ToStringb__33_0_System_Span_1_char_System_Buffers_ReadOnlySequence_1_char
	.long LDIFF_SYM247
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequenceSegment`1<T_GSHAREDVT>:get_Memory"
	.asciz "System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory
	.quad Lme_5f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM248=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM249=Lfde32_end - Lfde32_start
	.long LDIFF_SYM249
Lfde32_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory

LDIFF_SYM250=Lme_5f - System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Memory
	.long LDIFF_SYM250
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequenceSegment`1<T_GSHAREDVT>:get_Next"
	.asciz "System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next
	.quad Lme_60

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM251=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM252=Lfde33_end - Lfde33_start
	.long LDIFF_SYM252
Lfde33_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next

LDIFF_SYM253=Lme_60 - System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_Next
	.long LDIFF_SYM253
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequenceSegment`1<T_GSHAREDVT>:get_RunningIndex"
	.asciz "System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex
	.quad Lme_61

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM254=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM255=Lfde34_end - Lfde34_start
	.long LDIFF_SYM255
Lfde34_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex

LDIFF_SYM256=Lme_61 - System_Buffers_ReadOnlySequenceSegment_1_T_GSHAREDVT_get_RunningIndex
	.long LDIFF_SYM256
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:get_WrittenMemory"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory
	.quad Lme_62

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM257=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM258=Lfde35_end - Lfde35_start
	.long LDIFF_SYM258
Lfde35_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory

LDIFF_SYM259=Lme_62 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenMemory
	.long LDIFF_SYM259
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:get_WrittenSpan"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan
	.quad Lme_63

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM260=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM261=Lfde36_end - Lfde36_start
	.long LDIFF_SYM261
Lfde36_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan

LDIFF_SYM262=Lme_63 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenSpan
	.long LDIFF_SYM262
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:get_WrittenCount"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount
	.quad Lme_64

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM263=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM264=Lfde37_end - Lfde37_start
	.long LDIFF_SYM264
Lfde37_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount

LDIFF_SYM265=Lme_64 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_get_WrittenCount
	.long LDIFF_SYM265
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:Clear"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear
	.quad Lme_65

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM266=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM267=Lfde38_end - Lfde38_start
	.long LDIFF_SYM267
Lfde38_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear

LDIFF_SYM268=Lme_65 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Clear
	.long LDIFF_SYM268
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:Advance"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int
	.quad Lme_66

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM269=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM270=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM271=Lfde39_end - Lfde39_start
	.long LDIFF_SYM271
Lfde39_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int

LDIFF_SYM272=Lme_66 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_Advance_int
	.long LDIFF_SYM272
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ArrayBufferWriter`1<T_GSHAREDVT>:GetMemory"
	.asciz "System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int"

	.byte 0,0
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int
	.quad Lme_67

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM273=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,141,24,3
	.asciz "param0"

LDIFF_SYM274=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM274
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM275=Lfde40_end - Lfde40_start
	.long LDIFF_SYM275
Lfde40_start:

	.long 0
	.align 3
	.quad System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int

LDIFF_SYM276=Lme_67 - System_Buffers_ArrayBufferWriter_1_T_GSHAREDVT_GetMemory_int
	.long LDIFF_SYM276
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Buffers.ReadOnlySequence`1/<>c<T_GSHAREDVT>:.cctor"
	.asciz "System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0"

	.byte 0,0
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0
	.quad Lme_70

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM277=Lfde41_end - Lfde41_start
	.long LDIFF_SYM277
Lfde41_start:

	.long 0
	.align 3
	.quad System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0

LDIFF_SYM278=Lme_70 - System_Buffers_ReadOnlySequence_1__c_T_GSHAREDVT__cctor_0
	.long LDIFF_SYM278
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
