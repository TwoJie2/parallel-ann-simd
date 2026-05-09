	.arch armv8-a
	.file	"main.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1646:
	.cfi_startproc
	mov	w0, w1
	ret
	.cfi_endproc
.LFE1646:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZN7hnswlib17BaseFilterFunctorclEm,"axG",@progbits,_ZN7hnswlib17BaseFilterFunctorclEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17BaseFilterFunctorclEm
	.type	_ZN7hnswlib17BaseFilterFunctorclEm, %function
_ZN7hnswlib17BaseFilterFunctorclEm:
.LFB3359:
	.cfi_startproc
	mov	w0, 1
	ret
	.cfi_endproc
.LFE3359:
	.size	_ZN7hnswlib17BaseFilterFunctorclEm, .-_ZN7hnswlib17BaseFilterFunctorclEm
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_, %function
_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_:
.LFB3401:
	.cfi_startproc
	ldr	x4, [x2]
	cbz	x4, .L7
	movi	v1.2s, #0
	mov	x2, 0
	mov	w3, 0
	.p2align 3,,7
.L6:
	ldr	s2, [x0, x2, lsl 2]
	add	w3, w3, 1
	ldr	s0, [x1, x2, lsl 2]
	uxtw	x2, w3
	fmadd	s1, s2, s0, s1
	cmp	x4, x2
	bhi	.L6
	fmov	s0, 1.0e+0
	fsub	s0, s0, s1
	ret
	.p2align 2,,3
.L7:
	fmov	s0, 1.0e+0
	ret
	.cfi_endproc
.LFE3401:
	.size	_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_, .-_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	.section	.text._ZN7hnswlib17InnerProductSpace13get_data_sizeEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace13get_data_sizeEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.type	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv, %function
_ZN7hnswlib17InnerProductSpace13get_data_sizeEv:
.LFB3405:
	.cfi_startproc
	ldr	x0, [x0, 16]
	ret
	.cfi_endproc
.LFE3405:
	.size	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv, .-_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.section	.text._ZN7hnswlib17InnerProductSpace13get_dist_funcEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace13get_dist_funcEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.type	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv, %function
_ZN7hnswlib17InnerProductSpace13get_dist_funcEv:
.LFB3406:
	.cfi_startproc
	ldr	x0, [x0, 8]
	ret
	.cfi_endproc
.LFE3406:
	.size	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv, .-_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.section	.text._ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv,"axG",@progbits,_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.type	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv, %function
_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv:
.LFB3407:
	.cfi_startproc
	add	x0, x0, 24
	ret
	.cfi_endproc
.LFE3407:
	.size	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv, .-_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.section	.text._ZN7hnswlib17InnerProductSpaceD2Ev,"axG",@progbits,_ZN7hnswlib17InnerProductSpaceD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpaceD2Ev
	.type	_ZN7hnswlib17InnerProductSpaceD2Ev, %function
_ZN7hnswlib17InnerProductSpaceD2Ev:
.LFB3409:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE3409:
	.size	_ZN7hnswlib17InnerProductSpaceD2Ev, .-_ZN7hnswlib17InnerProductSpaceD2Ev
	.weak	_ZN7hnswlib17InnerProductSpaceD1Ev
	.set	_ZN7hnswlib17InnerProductSpaceD1Ev,_ZN7hnswlib17InnerProductSpaceD2Ev
	.section	.text._ZN7hnswlib17InnerProductSpaceD0Ev,"axG",@progbits,_ZN7hnswlib17InnerProductSpaceD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib17InnerProductSpaceD0Ev
	.type	_ZN7hnswlib17InnerProductSpaceD0Ev, %function
_ZN7hnswlib17InnerProductSpaceD0Ev:
.LFB3411:
	.cfi_startproc
	b	_ZdlPv
	.cfi_endproc
.LFE3411:
	.size	_ZN7hnswlib17InnerProductSpaceD0Ev, .-_ZN7hnswlib17InnerProductSpaceD0Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"void hnswlib::HierarchicalNSW<dist_t>::unmarkDeletedInternal(hnswlib::tableint) [with dist_t = float; hnswlib::tableint = unsigned int]"
	.align	3
.LC1:
	.string	"hnswlib/hnswlib/hnswalg.h"
	.align	3
.LC2:
	.string	"internalId < cur_element_count"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, %function
_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0:
.LFB13093:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	adrp	x3, .LC0
	adrp	x1, .LC1
	mov	x29, sp
	adrp	x0, .LC2
	add	x3, x3, :lo12:.LC0
	add	x1, x1, :lo12:.LC1
	add	x0, x0, :lo12:.LC2
	mov	w2, 916
	bl	__assert_fail
	.cfi_endproc
.LFE13093:
	.size	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0, .-_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
	.align	2
	.p2align 4,,11
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0, %function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0:
.LFB13173:
	.cfi_startproc
	sub	x12, x2, #1
	and	w3, w3, 65535
	and	x14, x2, 1
	add	x12, x12, x12, lsr 63
	asr	x12, x12, 1
	cmp	x1, x12
	bge	.L17
	mov	x8, x1
	b	.L20
	.p2align 2,,3
.L34:
	csel	x5, x5, x9, hi
	csel	x6, x6, x11, hi
	lsl	x9, x8, 3
	csel	w7, w7, w10, hi
	add	x10, x0, x9
	mov	x8, x5
	ldr	w11, [x6, 4]
	strh	w7, [x0, x9]
	str	w11, [x10, 4]
	cmp	x5, x12
	bge	.L33
.L20:
	add	x6, x8, 1
	lsl	x9, x6, 1
	lsl	x6, x6, 4
	sub	x5, x9, #1
	add	x11, x0, x6
	lsl	x7, x5, 3
	ldrh	w10, [x0, x6]
	add	x6, x0, x7
	ldrh	w7, [x0, x7]
	cmp	w10, w7
	bne	.L34
	ldr	w10, [x6, 4]
	ldr	w13, [x11, 4]
	cmp	w13, w10
	csel	x5, x5, x9, cc
	csel	x6, x6, x11, cc
	lsl	x9, x8, 3
	mov	x8, x5
	add	x10, x0, x9
	ldr	w11, [x6, 4]
	strh	w7, [x0, x9]
	str	w11, [x10, 4]
	cmp	x5, x12
	blt	.L20
.L33:
	cbz	x14, .L27
.L21:
	sub	x2, x5, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x5, x1
	bgt	.L26
	b	.L22
	.p2align 2,,3
.L35:
	bcs	.L32
	ldr	w10, [x6, 4]
.L25:
	lsl	x9, x5, 3
	sub	x7, x2, #1
	add	x11, x0, x9
	mov	x5, x2
	add	x7, x7, x7, lsr 63
	strh	w8, [x0, x9]
	str	w10, [x11, 4]
	asr	x2, x7, 1
	cmp	x1, x5
	bge	.L22
.L26:
	lsl	x7, x2, 3
	add	x6, x0, x7
	ldrh	w8, [x0, x7]
	cmp	w3, w8
	bne	.L35
	ldr	w10, [x6, 4]
	cmp	w4, w10
	bhi	.L25
.L32:
	add	x6, x0, x5, lsl 3
.L22:
	strh	w3, [x6]
	str	w4, [x6, 4]
	ret
	.p2align 2,,3
.L17:
	add	x6, x0, x1, lsl 3
	cbnz	x14, .L22
	mov	x5, x1
	.p2align 3,,7
.L27:
	sub	x2, x2, #2
	add	x2, x2, x2, lsr 63
	cmp	x5, x2, asr 1
	bne	.L21
	lsl	x5, x5, 1
	add	x5, x5, 1
	lsl	x7, x5, 3
	add	x2, x0, x7
	ldrh	w8, [x0, x7]
	ldr	w7, [x2, 4]
	strh	w8, [x6]
	str	w7, [x6, 4]
	mov	x6, x2
	b	.L21
	.cfi_endproc
.LFE13173:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB13149:
	.cfi_startproc
	sub	x4, x1, #1
	add	x4, x4, x4, lsr 63
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L48
.L37:
	lsl	x5, x4, 4
	add	x6, x0, x5
	ldr	s1, [x0, x5]
	fcmpe	s1, s0
	bmi	.L39
	bgt	.L48
	ldr	x8, [x6, 8]
	cmp	x8, x3
	bcc	.L42
.L48:
	add	x6, x0, x1, lsl 4
.L38:
	str	s0, [x6]
	str	x3, [x6, 8]
	ret
	.p2align 2,,3
.L39:
	ldr	x8, [x6, 8]
.L42:
	lsl	x7, x1, 4
	sub	x5, x4, #1
	add	x9, x0, x7
	mov	x1, x4
	add	x5, x5, x5, lsr 63
	str	s1, [x0, x7]
	str	x8, [x9, 8]
	asr	x4, x5, 1
	cmp	x1, x2
	bgt	.L37
	b	.L38
	.cfi_endproc
.LFE13149:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.section	.rodata.str1.8
	.align	3
.LC3:
	.string	"basic_string::_M_construct null not valid"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
.LFB13116:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	cmp	x2, 0
	ccmp	x1, 0, 0, ne
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	beq	.L60
	sub	x19, x2, x1
	str	x19, [sp, 56]
	mov	x21, x1
	mov	x20, x0
	cmp	x19, 15
	bhi	.L61
	ldr	x0, [x0]
	cmp	x19, 1
	bne	.L53
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L53:
	.cfi_restore_state
	cbnz	x19, .L52
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L61:
	.cfi_restore_state
	add	x1, sp, 56
	mov	x2, 0
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	str	x0, [x20]
	ldr	x1, [sp, 56]
	str	x1, [x20, 16]
.L52:
	mov	x2, x19
	mov	x1, x21
	bl	memcpy
	ldr	x0, [x20]
	ldr	x19, [sp, 56]
	str	x19, [x20, 8]
	strb	wzr, [x0, x19]
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L60:
	.cfi_restore_state
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	_ZSt19__throw_logic_errorPKc
	.cfi_endproc
.LFE13116:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, %function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0:
.LFB13104:
	.cfi_startproc
	sub	x4, x1, #1
	lsr	x9, x3, 32
	mov	w10, w9
	lsr	w3, w3, 0
	add	x4, x4, x4, lsr 63
	fmov	d0, x3
	asr	x4, x4, 1
	cmp	x1, x2
	ble	.L74
.L63:
	lsl	x3, x4, 3
	add	x5, x0, x3
	ldr	s1, [x0, x3]
	fcmpe	s0, s1
	bgt	.L65
	bmi	.L74
	ldr	w7, [x5, 4]
	cmp	w10, w7
	bhi	.L68
.L74:
	add	x5, x0, x1, lsl 3
.L64:
	str	s0, [x5]
	str	w9, [x5, 4]
	ret
	.p2align 2,,3
.L65:
	ldr	w7, [x5, 4]
.L68:
	lsl	x6, x1, 3
	sub	x3, x4, #1
	add	x8, x0, x6
	mov	x1, x4
	add	x3, x3, x3, lsr 63
	str	s1, [x0, x6]
	str	w7, [x8, 4]
	asr	x4, x3, 1
	cmp	x2, x1
	blt	.L63
	b	.L64
	.cfi_endproc
.LFE13104:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	.align	2
	.p2align 4,,11
	.type	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, %function
_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0:
.LFB13102:
	.cfi_startproc
	cbz	x0, .L136
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x23, x0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
.L93:
	ldr	x24, [x23, 24]
	cbz	x24, .L77
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -24
	.cfi_offset 25, -32
.L92:
	ldr	x25, [x24, 24]
	cbz	x25, .L78
.L91:
	ldr	x26, [x25, 24]
	cbz	x26, .L79
.L90:
	ldr	x19, [x26, 24]
	cbz	x19, .L80
.L89:
	ldr	x20, [x19, 24]
	cbz	x20, .L81
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -56
	.cfi_offset 21, -64
	str	x27, [sp, 80]
	.cfi_offset 27, -16
.L88:
	ldr	x27, [x20, 24]
	cbz	x27, .L82
.L87:
	ldr	x21, [x27, 24]
	cbz	x21, .L83
.L86:
	ldr	x22, [x21, 24]
	cbz	x22, .L84
.L85:
	ldr	x0, [x22, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x22
	ldr	x22, [x22, 16]
	bl	_ZdlPv
	cbnz	x22, .L85
.L84:
	ldr	x22, [x21, 16]
	mov	x0, x21
	bl	_ZdlPv
	cbz	x22, .L83
	mov	x21, x22
	b	.L86
.L137:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldr	x27, [sp, 80]
	.cfi_restore 27
.L81:
	mov	x0, x19
	ldr	x20, [x19, 16]
	bl	_ZdlPv
	cbz	x20, .L80
	mov	x19, x20
	b	.L89
	.p2align 2,,3
.L82:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x20, 16]
	mov	x0, x20
	bl	_ZdlPv
	cbz	x21, .L137
	mov	x20, x21
	b	.L88
.L80:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x26, 16]
	mov	x0, x26
	bl	_ZdlPv
	cbz	x19, .L79
	mov	x26, x19
	b	.L90
	.p2align 2,,3
.L83:
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 27, -16
	ldr	x21, [x27, 16]
	mov	x0, x27
	bl	_ZdlPv
	cbz	x21, .L82
	mov	x27, x21
	b	.L87
.L79:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	ldr	x19, [x25, 16]
	mov	x0, x25
	bl	_ZdlPv
	cbz	x19, .L78
	mov	x25, x19
	b	.L91
.L78:
	ldr	x19, [x24, 16]
	mov	x0, x24
	bl	_ZdlPv
	cbz	x19, .L138
	mov	x24, x19
	b	.L92
.L138:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L77:
	mov	x0, x23
	ldr	x19, [x23, 16]
	bl	_ZdlPv
	cbz	x19, .L139
	mov	x23, x19
	b	.L93
.L139:
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L136:
	ret
	.cfi_endproc
.LFE13102:
	.size	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0, .-_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	.section	.text._ZN15PQFastScanIndexD2Ev,"axG",@progbits,_ZN15PQFastScanIndexD5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN15PQFastScanIndexD2Ev
	.type	_ZN15PQFastScanIndexD2Ev, %function
_ZN15PQFastScanIndexD2Ev:
.LFB10488:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldr	x0, [x0, 104]
	cbz	x0, .L141
	bl	_ZdlPv
.L141:
	ldr	x0, [x19, 80]
	cbz	x0, .L142
	bl	_ZdlPv
.L142:
	ldr	x0, [x19, 56]
	cbz	x0, .L140
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L140:
	.cfi_restore_state
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10488:
	.size	_ZN15PQFastScanIndexD2Ev, .-_ZN15PQFastScanIndexD2Ev
	.weak	_ZN15PQFastScanIndexD1Ev
	.set	_ZN15PQFastScanIndexD1Ev,_ZN15PQFastScanIndexD2Ev
	.section	.rodata._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.string	"basic_string::append"
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, %function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
.LFB10758:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10758
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	add	x22, x8, 16
	ldr	x20, [x0, 8]
	str	x23, [sp, 48]
	.cfi_offset 23, -32
	str	x22, [x8]
	ldr	x23, [x0]
	cmn	x23, x20
	ccmp	x23, 0, 0, ne
	beq	.L165
	str	x20, [sp, 72]
	mov	x19, x8
	mov	x21, x1
	cmp	x20, 15
	bhi	.L166
	cmp	x20, 1
	bne	.L155
	ldrb	w1, [x23]
	mov	x0, x22
	strb	w1, [x8, 16]
.L156:
	str	x20, [x19, 8]
	strb	wzr, [x0, x20]
	mov	x0, x21
	bl	strlen
	mov	x2, x0
	ldr	x1, [x19, 8]
	mov	x0, 4611686018427387903
	sub	x0, x0, x1
	cmp	x2, x0
	bhi	.L167
	mov	x1, x21
	mov	x0, x19
.LEHB0:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.LEHE0:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L155:
	.cfi_restore_state
	mov	x0, x22
	cbz	x20, .L156
	b	.L154
	.p2align 2,,3
.L166:
	add	x1, sp, 72
	mov	x0, x8
	mov	x2, 0
.LEHB1:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.LEHE1:
	ldr	x1, [sp, 72]
	str	x0, [x19]
	str	x1, [x19, 16]
.L154:
	mov	x2, x20
	mov	x1, x23
	bl	memcpy
	ldr	x0, [x19]
	ldr	x20, [sp, 72]
	b	.L156
.L167:
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
.LEHB2:
	bl	_ZSt20__throw_length_errorPKc
.LEHE2:
.L165:
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
.LEHB3:
	bl	_ZSt19__throw_logic_errorPKc
.L161:
	ldr	x1, [x19]
	mov	x19, x0
	cmp	x1, x22
	beq	.L159
	mov	x0, x1
	bl	_ZdlPv
.L159:
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE3:
	.cfi_endproc
.LFE10758:
	.global	__gxx_personality_v0
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
.LLSDA10758:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10758-.LLSDACSB10758
.LLSDACSB10758:
	.uleb128 .LEHB0-.LFB10758
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L161-.LFB10758
	.uleb128 0
	.uleb128 .LEHB1-.LFB10758
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB10758
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L161-.LFB10758
	.uleb128 0
	.uleb128 .LEHB3-.LFB10758
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE10758:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.text._ZNSt11unique_lockISt5mutexE6unlockEv,"axG",@progbits,_ZNSt11unique_lockISt5mutexE6unlockEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt11unique_lockISt5mutexE6unlockEv
	.type	_ZNSt11unique_lockISt5mutexE6unlockEv, %function
_ZNSt11unique_lockISt5mutexE6unlockEv:
.LFB11188:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	ldrb	w0, [x0, 8]
	cbz	w0, .L179
	ldr	x0, [x19]
	cbz	x0, .L168
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L171
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L171:
	strb	wzr, [x19, 8]
.L168:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
.L179:
	.cfi_restore_state
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
	.cfi_endproc
.LFE11188:
	.size	_ZNSt11unique_lockISt5mutexE6unlockEv, .-_ZNSt11unique_lockISt5mutexE6unlockEv
	.section	.text._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"axG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
	.type	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv, %function
_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv:
.LFB4141:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4141
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	adrp	x1, .LC5
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	ldr	x21, [x1, #:lo12:.LC5]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x0
	add	x0, x0, 80
	str	x0, [sp, 48]
	strb	wzr, [sp, 56]
	cbz	x21, .L181
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L213
.L181:
	mov	w1, 1
	strb	w1, [sp, 56]
	ldp	x0, x3, [x19, 48]
	add	x22, x19, 16
	ldr	x4, [x22, 24]
	ldr	x1, [x19, 72]
	ldr	x2, [x19, 16]
	sub	x1, x1, x4
	ldr	x4, [x22, 16]
	sub	x0, x0, x3
	asr	x1, x1, 3
	sub	x1, x1, #1
	asr	x0, x0, 3
	sub	x3, x4, x2
	add	x1, x0, x1, lsl 6
	add	x0, x1, x3, asr 3
	cbnz	x0, .L214
	mov	x0, 24
.LEHB4:
	bl	_Znwm
.LEHE4:
	mov	x20, x0
	ldr	w1, [x19, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x20, 16]
	ubfiz	x0, x1, 1, 32
.LEHB5:
	bl	_Znam
.LEHE5:
	str	x0, [x20, 8]
.L185:
	ldrb	w0, [sp, 56]
	cbnz	w0, .L184
.L186:
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbz	w0, .L215
.L180:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L214:
	.cfi_restore_state
	sub	x4, x4, #8
	ldr	x20, [x2]
	cmp	x2, x4
	beq	.L183
	add	x2, x2, 8
	str	x2, [x19, 16]
.L184:
	ldr	x0, [sp, 48]
	cbz	x0, .L186
	cbz	x21, .L186
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldrh	w0, [x20]
	add	w0, w0, 1
	and	w0, w0, 65535
	strh	w0, [x20]
	cbnz	w0, .L180
.L215:
	ldr	x0, [x20, 8]
	mov	w1, 0
	ldr	w2, [x20, 16]
	lsl	x2, x2, 1
	bl	memset
	ldrh	w0, [x20]
	ldp	x21, x22, [sp, 32]
	add	w0, w0, 1
	strh	w0, [x20]
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L183:
	.cfi_restore_state
	ldr	x0, [x19, 24]
	bl	_ZdlPv
	ldr	x0, [x19, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	str	x0, [x19, 16]
	b	.L185
.L213:
.LEHB6:
	bl	_ZSt20__throw_system_errori
.LEHE6:
.L192:
	mov	x19, x0
	b	.L190
.L193:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
.L190:
	ldrb	w0, [sp, 56]
	cbz	w0, .L191
	add	x0, sp, 48
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L191:
	mov	x0, x19
.LEHB7:
	bl	_Unwind_Resume
.LEHE7:
	.cfi_endproc
.LFE4141:
	.section	.gcc_except_table._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"aG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
.LLSDA4141:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4141-.LLSDACSB4141
.LLSDACSB4141:
	.uleb128 .LEHB4-.LFB4141
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L192-.LFB4141
	.uleb128 0
	.uleb128 .LEHB5-.LFB4141
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L193-.LFB4141
	.uleb128 0
	.uleb128 .LEHB6-.LFB4141
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4141
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE4141:
	.section	.text._ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,"axG",@progbits,_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv,comdat
	.size	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv, .-_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
	.section	.rodata._ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.str1.8,"aMS",@progbits,1
	.align	3
.LC6:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf,"axG",@progbits,_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	.type	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf, %function
_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf:
.LFB11242:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x0
	mov	x20, x2
	ldr	x3, [x0]
	ldr	x0, [x0, 16]
	sub	x0, x0, x3
	cmp	x1, x0, asr 2
	bhi	.L243
	ldr	x4, [x19, 8]
	sub	x0, x4, x3
	asr	x0, x0, 2
	cmp	x1, x0
	bls	.L224
	ldr	s0, [x2]
	cmp	x3, x4
	beq	.L225
	.p2align 3,,7
.L226:
	str	s0, [x3], 4
	cmp	x4, x3
	bne	.L226
	ldr	s0, [x20]
.L225:
	sub	x1, x1, x0
	add	x1, x4, x1, lsl 2
	cmp	x4, x1
	beq	.L228
	.p2align 3,,7
.L227:
	str	s0, [x4], 4
	cmp	x1, x4
	bne	.L227
.L228:
	str	x1, [x19, 8]
.L216:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L224:
	.cfi_restore_state
	mov	x0, x3
	cbz	x1, .L229
	add	x0, x3, x1, lsl 2
	ldr	s0, [x2]
	cmp	x3, x0
	beq	.L229
	.p2align 3,,7
.L230:
	str	s0, [x3], 4
	cmp	x0, x3
	bne	.L230
.L229:
	cmp	x4, x0
	beq	.L216
	str	x0, [x19, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L243:
	.cfi_restore_state
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x0, 2305843009213693951
	cmp	x1, x0
	bhi	.L244
	lsl	x21, x1, 2
	cbz	x1, .L231
	mov	x0, x21
	bl	_Znwm
	add	x2, x0, x21
	ldr	s0, [x20]
	cmp	x0, x2
	beq	.L220
	mov	x1, x0
	.p2align 3,,7
.L221:
	str	s0, [x1], 4
	cmp	x1, x2
	bne	.L221
.L220:
	ldr	x3, [x19]
.L219:
	stp	x0, x2, [x19]
	str	x2, [x19, 16]
	cbz	x3, .L242
	ldp	x19, x20, [sp, 16]
	mov	x0, x3
	ldr	x21, [sp, 32]
	.cfi_remember_state
	.cfi_restore 21
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L242:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	.cfi_remember_state
	.cfi_restore 21
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L231:
	.cfi_restore_state
	mov	x0, 0
	mov	x2, 0
	b	.L219
.L244:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11242:
	.size	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf, .-_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	.section	.rodata._ZNSt6vectorIfSaIfEE17_M_default_appendEm.str1.8,"aMS",@progbits,1
	.align	3
.LC7:
	.string	"vector::_M_default_append"
	.section	.text._ZNSt6vectorIfSaIfEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIfSaIfEE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIfSaIfEE17_M_default_appendEm
	.type	_ZNSt6vectorIfSaIfEE17_M_default_appendEm, %function
_ZNSt6vectorIfSaIfEE17_M_default_appendEm:
.LFB11301:
	.cfi_startproc
	cbz	x1, .L266
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	ldp	x23, x3, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x20, x0
	ldr	x0, [x0, 16]
	stp	x25, x26, [sp, 64]
	mov	x19, x1
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	sub	x25, x3, x23
	sub	x0, x0, x3
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	mov	x1, 2305843009213693951
	asr	x21, x25, 2
	sub	x2, x1, x21
	cmp	x19, x0, asr 2
	bls	.L269
	cmp	x2, x19
	bcc	.L270
	cmp	x19, x21
	csel	x0, x19, x21, cs
	adds	x0, x21, x0
	bcs	.L250
	cbnz	x0, .L271
	mov	x26, x25
	mov	x24, 0
	lsl	x2, x19, 2
	add	x0, x24, x25
	mov	x22, 0
	mov	w1, 0
	bl	memset
	cmp	x26, 0
	bgt	.L272
.L253:
	cbnz	x23, .L254
.L255:
	add	x19, x19, x21
	str	x22, [x20, 16]
	ldp	x21, x22, [sp, 32]
	add	x19, x24, x19, lsl 2
	stp	x24, x19, [x20]
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L269:
	.cfi_restore_state
	lsl	x19, x19, 2
	mov	x0, x3
	mov	x2, x19
	mov	w1, 0
	bl	memset
	add	x3, x0, x19
	str	x3, [x20, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L266:
	ret
	.p2align 2,,3
.L272:
	.cfi_def_cfa_offset 80
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	.cfi_offset 23, -32
	.cfi_offset 24, -24
	.cfi_offset 25, -16
	.cfi_offset 26, -8
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x2, x26
	mov	x1, x23
	mov	x0, x24
	bl	memmove
.L254:
	mov	x0, x23
	bl	_ZdlPv
	b	.L255
.L271:
	cmp	x0, x1
	csel	x0, x0, x1, ls
	lsl	x22, x0, 2
.L251:
	mov	x0, x22
	bl	_Znwm
	ldp	x23, x26, [x20]
	mov	x24, x0
	add	x22, x0, x22
	lsl	x2, x19, 2
	add	x0, x24, x25
	mov	w1, 0
	sub	x26, x26, x23
	bl	memset
	cmp	x26, 0
	ble	.L253
	b	.L272
.L270:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	_ZSt20__throw_length_errorPKc
.L250:
	mov	x22, 9223372036854775804
	b	.L251
	.cfi_endproc
.LFE11301:
	.size	_ZNSt6vectorIfSaIfEE17_M_default_appendEm, .-_ZNSt6vectorIfSaIfEE17_M_default_appendEm
	.section	.text._ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh,"axG",@progbits,_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
	.type	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh, %function
_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh:
.LFB11306:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0
	mov	x19, x1
	ldr	x0, [x0]
	ldr	x1, [x20, 16]
	str	x21, [sp, 32]
	.cfi_offset 21, -16
	mov	x21, x2
	sub	x1, x1, x0
	cmp	x19, x1
	bhi	.L297
	ldr	x3, [x20, 8]
	sub	x2, x3, x0
	cmp	x19, x2
	bhi	.L298
	cbz	x19, .L282
	ldrb	w1, [x21]
	mov	x2, x19
	add	x21, x0, x19
	bl	memset
	ldr	x3, [x20, 8]
	mov	x0, x21
.L282:
	cmp	x0, x3
	beq	.L273
	str	x0, [x20, 8]
.L273:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L298:
	.cfi_restore_state
	cbnz	x2, .L299
.L280:
	subs	x2, x19, x2
	bne	.L300
	str	x3, [x20, 8]
.L302:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L297:
	.cfi_restore_state
	cmp	x19, 0
	blt	.L301
	beq	.L283
	mov	x0, x19
	bl	_Znwm
	ldrb	w1, [x21]
	mov	x2, x19
	mov	x21, x0
	add	x19, x0, x19
	bl	memset
	ldr	x0, [x20]
.L276:
	stp	x21, x19, [x20]
	str	x19, [x20, 16]
	cbz	x0, .L273
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L300:
	.cfi_restore_state
	ldrb	w1, [x21]
	mov	x0, x3
	add	x21, x3, x2
	bl	memset
	mov	x3, x21
	str	x3, [x20, 8]
	b	.L302
	.p2align 2,,3
.L299:
	ldrb	w1, [x21]
	bl	memset
	ldp	x2, x3, [x20]
	sub	x2, x3, x2
	b	.L280
	.p2align 2,,3
.L283:
	mov	x21, 0
	mov	x19, 0
	b	.L276
.L301:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11306:
	.size	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh, .-_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
	.section	.text._ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm, %function
_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm:
.LFB11348:
	.cfi_startproc
	cbz	x1, .L327
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x2, 1152921504606846975
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x0
	ldp	x0, x4, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x1
	ldr	x1, [x21, 16]
	sub	x20, x4, x0
	sub	x1, x1, x4
	asr	x22, x20, 3
	sub	x3, x2, x22
	cmp	x19, x1, asr 3
	bhi	.L305
	mov	x2, x4
	mov	x3, x19
	.p2align 3,,7
.L306:
	strh	wzr, [x2]
	subs	x3, x3, #1
	str	wzr, [x2, 4]
	add	x2, x2, 8
	bne	.L306
	add	x19, x4, x19, lsl 3
	str	x19, [x21, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L327:
	ret
	.p2align 2,,3
.L305:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	cmp	x3, x19
	bcc	.L330
	cmp	x19, x22
	csel	x1, x19, x22, cs
	adds	x1, x22, x1
	bcs	.L309
	cbnz	x1, .L331
	mov	x23, 0
	mov	x24, 0
.L311:
	add	x1, x24, x20
	mov	x2, x19
	.p2align 3,,7
.L312:
	strh	wzr, [x1]
	subs	x2, x2, #1
	str	wzr, [x1, 4]
	add	x1, x1, 8
	bne	.L312
	cmp	x4, x0
	beq	.L316
	sub	x4, x4, x0
	mov	x1, x24
	add	x4, x24, x4
	mov	x2, x0
	.p2align 3,,7
.L317:
	ldr	x3, [x2], 8
	str	x3, [x1], 8
	cmp	x1, x4
	bne	.L317
.L316:
	cbz	x0, .L315
	bl	_ZdlPv
.L315:
	add	x19, x19, x22
	str	x23, [x21, 16]
	add	x19, x24, x19, lsl 3
	stp	x24, x19, [x21]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L331:
	.cfi_restore_state
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x23, x1, 3
.L310:
	mov	x0, x23
	bl	_Znwm
	mov	x24, x0
	add	x23, x0, x23
	ldp	x0, x4, [x21]
	b	.L311
.L309:
	mov	x23, 9223372036854775800
	b	.L310
.L330:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11348:
	.size	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:
.LFB11403:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	ldr	x19, [x0, 16]
	cbz	x19, .L333
	.p2align 3,,7
.L334:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L334
.L333:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L332
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L332:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11403:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	.set	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev:
.LFB11415:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0
	ldr	x19, [x0, 16]
	cbz	x19, .L342
	.p2align 3,,7
.L343:
	mov	x0, x19
	ldr	x19, [x19]
	bl	_ZdlPv
	cbnz	x19, .L343
.L342:
	ldp	x0, x2, [x20]
	mov	w1, 0
	lsl	x2, x2, 3
	bl	memset
	mov	x1, x20
	ldr	x0, [x1], 48
	stp	xzr, xzr, [x20, 16]
	cmp	x0, x1
	beq	.L341
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L341:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11415:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	.set	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED2Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED2Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED2Ev:
.LFB12871:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	adrp	x1, _ZTVN7hnswlib15HierarchicalNSWIfEE+16
	add	x1, x1, :lo12:_ZTVN7hnswlib15HierarchicalNSWIfEE+16
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x0
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	add	x20, x0, 16
	mov	w19, 0
	ldr	x0, [x0, 256]
	str	x23, [sp, 48]
	.cfi_offset 23, -16
	str	x1, [x22]
	bl	free
	str	xzr, [x22, 256]
	.p2align 3,,7
.L353:
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcs	.L351
.L409:
	ldr	x0, [x22, 272]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L353
	ldr	x0, [x22, 264]
	ldr	x0, [x0, x1, lsl 3]
	bl	free
	ldar	x0, [x20]
	uxtw	x1, w19
	add	w19, w19, 1
	cmp	x1, x0
	bcc	.L409
.L351:
	ldr	x0, [x22, 264]
	bl	free
	str	xzr, [x22, 264]
	stlr	xzr, [x20]
	ldr	x23, [x22, 112]
	str	xzr, [x22, 112]
	cbz	x23, .L354
	add	x20, x23, 48
	add	x19, x23, 16
	b	.L358
	.p2align 2,,3
.L408:
	str	x0, [x23, 16]
	cbnz	x21, .L410
.L358:
	ldp	x3, x21, [x19, 16]
	ldp	x2, x0, [x20]
	ldr	x6, [x20, 24]
	ldr	x4, [x19]
	sub	x1, x6, x21
	sub	x2, x2, x0
	asr	x1, x1, 3
	sub	x5, x3, x4
	sub	x1, x1, #1
	asr	x2, x2, 3
	sub	x3, x3, #8
	add	x0, x4, 8
	add	x1, x2, x1, lsl 6
	add	x1, x1, x5, asr 3
	cbz	x1, .L355
	ldr	x21, [x4]
	cmp	x4, x3
	bne	.L408
	ldr	x0, [x23, 24]
	bl	_ZdlPv
	ldr	x0, [x23, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x19, 8]
	str	x1, [x19, 24]
	add	x1, x0, 512
	str	x1, [x19, 16]
	str	x0, [x23, 16]
	cbz	x21, .L358
	.p2align 3,,7
.L410:
	ldr	x0, [x21, 8]
	cbz	x0, .L359
	bl	_ZdaPv
.L359:
	mov	x0, x21
	bl	_ZdlPv
	b	.L358
	.p2align 2,,3
.L355:
	ldr	x0, [x23]
	cbz	x0, .L361
	add	x19, x6, 8
	cmp	x21, x19
	bcs	.L362
	.p2align 3,,7
.L363:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L363
	ldr	x0, [x23]
.L362:
	bl	_ZdlPv
.L361:
	mov	x0, x23
	bl	_ZdlPv
.L354:
	add	x0, x22, 512
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, x22, 368
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x22, 272]
	cbz	x0, .L364
	bl	_ZdlPv
.L364:
	ldr	x0, [x22, 192]
	cbz	x0, .L365
	bl	_ZdlPv
.L365:
	ldr	x0, [x22, 120]
	cbz	x0, .L366
	bl	_ZdlPv
.L366:
	ldr	x22, [x22, 112]
	cbz	x22, .L350
	add	x20, x22, 48
	add	x19, x22, 16
	.p2align 3,,7
.L371:
	ldp	x1, x2, [x20]
	ldr	x21, [x19, 24]
	ldr	x5, [x20, 24]
	sub	x1, x1, x2
	sub	x0, x5, x21
	ldr	x3, [x19]
	asr	x0, x0, 3
	ldr	x2, [x19, 16]
	sub	x0, x0, #1
	asr	x1, x1, 3
	add	x6, x3, 8
	sub	x4, x2, x3
	add	x0, x1, x0, lsl 6
	sub	x2, x2, #8
	add	x0, x0, x4, asr 3
	cbz	x0, .L368
	ldr	x21, [x3]
	cmp	x3, x2
	beq	.L369
	str	x6, [x22, 16]
	cbz	x21, .L371
.L411:
	ldr	x0, [x21, 8]
	cbz	x0, .L372
	bl	_ZdaPv
.L372:
	mov	x0, x21
	bl	_ZdlPv
	b	.L371
	.p2align 2,,3
.L369:
	ldr	x0, [x22, 24]
	bl	_ZdlPv
	ldr	x0, [x22, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x19, 8]
	str	x1, [x19, 24]
	add	x1, x0, 512
	str	x1, [x19, 16]
	str	x0, [x22, 16]
	cbz	x21, .L371
	b	.L411
	.p2align 2,,3
.L368:
	ldr	x0, [x22]
	cbz	x0, .L374
	add	x19, x5, 8
	cmp	x21, x19
	bcs	.L375
	.p2align 3,,7
.L376:
	ldr	x0, [x21], 8
	bl	_ZdlPv
	cmp	x19, x21
	bhi	.L376
	ldr	x0, [x22]
.L375:
	bl	_ZdlPv
.L374:
	mov	x0, x22
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.p2align 2,,3
.L350:
	.cfi_restore_state
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12871:
	.size	_ZN7hnswlib15HierarchicalNSWIfED2Ev, .-_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.weak	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.set	_ZN7hnswlib15HierarchicalNSWIfED1Ev,_ZN7hnswlib15HierarchicalNSWIfED2Ev
	.section	.text._ZN7hnswlib15HierarchicalNSWIfED0Ev,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfED5Ev,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.type	_ZN7hnswlib15HierarchicalNSWIfED0Ev, %function
_ZN7hnswlib15HierarchicalNSWIfED0Ev:
.LFB12873:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	bl	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	b	_ZdlPv
	.cfi_endproc
.LFE12873:
	.size	_ZN7hnswlib15HierarchicalNSWIfED0Ev, .-_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.section	.rodata._ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.str1.8,"aMS",@progbits,1
	.align	3
.LC8:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11708:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L432
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L425
	cbnz	x1, .L419
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L424:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L420
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L421:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L421
	add	x26, x26, 8
	add	x25, x21, x26
.L420:
	cmp	x19, x23
	beq	.L422
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L422:
	cbz	x24, .L423
	mov	x0, x24
	bl	_ZdlPv
.L423:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L425:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L418:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L424
.L419:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L418
.L432:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11708:
	.size	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,"axG",@progbits,_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.type	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, %function
_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv:
.LFB11790:
	.cfi_startproc
	ldp	x1, x2, [x0]
	sub	x3, x2, x1
	sub	x9, x2, #8
	cmp	x3, 8
	bgt	.L455
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L455:
	sub	x4, x9, x1
	ldr	s0, [x1]
	ldr	w5, [x1, 4]
	asr	x11, x4, 3
	ldr	w10, [x2, -4]
	sub	x3, x11, #1
	str	w5, [x2, -4]
	ldr	s2, [x2, -8]
	and	x12, x11, 1
	add	x8, x3, x3, lsr 63
	str	s0, [x2, -8]
	asr	x8, x8, 1
	cmp	x4, 16
	ble	.L435
	mov	x4, 0
	.p2align 3,,7
.L439:
	add	x2, x4, 1
	lsl	x3, x2, 1
	lsl	x2, x2, 4
	sub	x6, x3, #1
	add	x7, x1, x2
	lsl	x5, x6, 3
	ldr	s0, [x1, x2]
	add	x2, x1, x5
	ldr	s1, [x1, x5]
	fcmpe	s0, s1
	bmi	.L450
.L436:
	lsl	x2, x4, 3
	ldr	w6, [x7, 4]
	add	x5, x1, x2
	mov	x4, x3
	str	s0, [x1, x2]
	str	w6, [x5, 4]
	cmp	x3, x8
	blt	.L439
	lsl	x6, x3, 3
	cbz	x12, .L456
.L442:
	sub	x3, x3, #1
	asr	x4, x3, 1
	.p2align 3,,7
.L445:
	lsl	x5, x4, 3
	sub	x2, x4, #1
	add	x8, x1, x5
	add	x7, x1, x6
	add	x2, x2, x2, lsr 63
	ldr	s0, [x1, x5]
	asr	x2, x2, 1
	fcmpe	s2, s0
	bgt	.L451
.L440:
	str	w10, [x7, 4]
	str	s2, [x7]
.L458:
	str	x9, [x0, 8]
	ret
	.p2align 2,,3
.L451:
	ldr	w3, [x8, 4]
	str	s0, [x1, x6]
	lsl	x6, x4, 3
	str	w3, [x7, 4]
	cbz	x4, .L457
	mov	x4, x2
	b	.L445
	.p2align 2,,3
.L450:
	fmov	s0, s1
	mov	x7, x2
	mov	x3, x6
	b	.L436
	.p2align 2,,3
.L456:
	sub	x11, x11, #2
	add	x11, x11, x11, lsr 63
	cmp	x3, x11, asr 1
	beq	.L441
	sub	x4, x3, #1
	lsl	x6, x3, 3
	asr	x4, x4, 1
	b	.L445
	.p2align 2,,3
.L457:
	mov	x7, x8
	str	s2, [x7]
	str	w10, [x7, 4]
	b	.L458
	.p2align 2,,3
.L435:
	mov	x7, x1
	cbnz	x12, .L440
	cmp	x3, 2
	bhi	.L440
	mov	x3, 0
	.p2align 3,,7
.L441:
	lsl	x3, x3, 1
	add	x3, x3, 1
	lsl	x6, x3, 3
	add	x2, x1, x6
	ldr	s0, [x1, x6]
	ldr	w2, [x2, 4]
	str	w2, [x7, 4]
	str	s0, [x7]
	b	.L442
	.cfi_endproc
.LFE11790:
	.size	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv, .-_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.type	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, %function
_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji:
.LFB11809:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11809
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	w3, 48
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x21, x0
	str	x0, [sp, 80]
	uxtw	x0, w1
	str	w1, [sp, 92]
	ldr	x1, [x21, 192]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	uxtw	x23, w0
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -88
	.cfi_offset 19, -96
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 96]
	strb	wzr, [sp, 104]
	cbz	x0, .L490
	adrp	x1, .LC5
	mov	x20, x8
	mov	w19, w2
	ldr	x22, [x1, #:lo12:.LC5]
	cbz	x22, .L461
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L491
.L461:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w19, .L492
	ldr	x0, [x21, 264]
	sub	w19, w19, #1
	ldr	x1, [x21, 32]
	sxtw	x19, w19
	ldr	x0, [x0, x23, lsl 3]
	madd	x19, x19, x1, x0
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbz	w21, .L464
.L494:
	ubfiz	x21, x21, 2, 16
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	mov	x0, x21
.LEHB8:
	bl	_Znwm
.LEHE8:
	add	x24, x0, x21
	str	x0, [x20]
	str	x24, [x20, 16]
	mov	x2, x21
	mov	x23, x0
	mov	w1, 0
	bl	memset
	ldrb	w25, [sp, 104]
	str	x24, [x20, 8]
	mov	x0, x23
	mov	x2, x21
	add	x1, x19, 4
	bl	memcpy
	cbnz	w25, .L493
	ldr	x25, [sp, 64]
	.cfi_restore 25
.L459:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L492:
	.cfi_restore_state
	ldr	x1, [x21, 24]
	ldr	x0, [x21, 240]
	ldr	x19, [x21, 256]
	madd	x23, x23, x1, x0
	add	x19, x19, x23
	ldrh	w21, [x19]
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
	cbnz	w21, .L494
.L464:
	stp	xzr, xzr, [x20]
	str	xzr, [x20, 16]
.L468:
	ldr	x0, [sp, 96]
	cbz	x0, .L459
	cbz	x22, .L459
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	.cfi_remember_state
	.cfi_restore 20
	.cfi_restore 19
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
.L490:
	.cfi_restore_state
	mov	w0, 1
	str	x25, [sp, 64]
	.cfi_offset 25, -48
.LEHB9:
	bl	_ZSt20__throw_system_errori
.L493:
	ldr	x25, [sp, 64]
	.cfi_restore 25
	b	.L468
.L491:
	str	x25, [sp, 64]
	.cfi_offset 25, -48
	bl	_ZSt20__throw_system_errori
.LEHE9:
.L469:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L467
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L467:
	mov	x0, x19
.LEHB10:
	bl	_Unwind_Resume
.LEHE10:
	.cfi_endproc
.LFE11809:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
.LLSDA11809:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11809-.LLSDACSB11809
.LLSDACSB11809:
	.uleb128 .LEHB8-.LFB11809
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L469-.LFB11809
	.uleb128 0
	.uleb128 .LEHB9-.LFB11809
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB11809
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE11809:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji, .-_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %function
_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB11059:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11059
	sub	sp, sp, #608
	.cfi_def_cfa_offset 608
	stp	x29, x30, [sp]
	.cfi_offset 29, -608
	.cfi_offset 30, -600
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -592
	.cfi_offset 20, -584
	mov	x19, x1
	mov	x20, x0
	add	x0, sp, 344
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -576
	.cfi_offset 22, -568
	.cfi_offset 23, -560
	.cfi_offset 24, -552
	adrp	x23, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x23, x23, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -544
	.cfi_offset 26, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x2, _ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	add	x2, x2, :lo12:_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 568]
	add	x4, sp, 576
	add	x0, sp, 88
	mov	x1, 0
	ldp	x22, x26, [x2, 8]
	add	x2, sp, 88
	ldr	x3, [x22, -24]
	stp	xzr, xzr, [x4]
	stp	xzr, xzr, [x4, 16]
	add	x0, x0, x3
	str	x22, [sp, 88]
	str	x23, [sp, 344]
	str	xzr, [sp, 560]
	str	x26, [x2, x3]
.LEHB11:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE11:
	adrp	x25, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	adrp	x24, _ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x25, x25, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	add	x24, x24, :lo12:_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 96
	str	x25, [sp, 88]
	str	x24, [sp, 344]
.LEHB12:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE12:
	add	x0, sp, 88
	add	x1, sp, 96
	add	x0, x0, 256
.LEHB13:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	ldr	x1, [x19]
	add	x0, sp, 96
	mov	w2, 20
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 88]
	ldr	x1, [x0, -24]
	add	x0, sp, 88
	add	x0, x0, x1
	cbz	x2, .L522
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE13:
.L497:
	add	x1, x20, 240
	add	x0, sp, 88
	mov	x2, 8
.LEHB14:
	bl	_ZNSo5writeEPKcl
	mov	x2, 8
	add	x0, sp, 88
	add	x1, x20, x2
	bl	_ZNSo5writeEPKcl
	add	x21, x20, 16
	add	x0, sp, 88
	mov	x1, x21
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 24
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 248
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 232
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 104
	add	x0, sp, 88
	mov	x2, 4
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 216
	add	x0, sp, 88
	mov	x2, 4
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 56
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 64
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 48
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 88
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	add	x1, x20, 72
	add	x0, sp, 88
	mov	x2, 8
	bl	_ZNSo5writeEPKcl
	ldr	x1, [x20, 256]
	ldar	x3, [x21]
	ldr	x2, [x20, 24]
	add	x0, sp, 88
	mul	x2, x3, x2
	bl	_ZNSo5writeEPKcl
	mov	x19, 0
	ldar	x0, [x21]
	cmp	x19, x0
	bcs	.L502
	.p2align 3,,7
.L524:
	ldr	x0, [x20, 272]
	mov	w3, 0
	ldr	w0, [x0, x19, lsl 2]
	cmp	w0, 0
	ble	.L503
	ldr	x3, [x20, 32]
	mul	w3, w0, w3
.L503:
	add	x1, sp, 84
	add	x0, sp, 88
	mov	x2, 4
	str	w3, [sp, 84]
	bl	_ZNSo5writeEPKcl
	ldr	w2, [sp, 84]
	cbnz	w2, .L523
	add	x19, x19, 1
.L526:
	ldar	x0, [x21]
	cmp	x19, x0
	bcc	.L524
.L502:
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE14:
	cbz	x0, .L525
.L506:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 96
	stp	x25, x1, [sp, 88]
	str	x24, [sp, 344]
.LEHB15:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE15:
.L508:
	add	x0, sp, 208
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 152
	str	x1, [sp, 96]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x22, -24]
	add	x2, sp, 88
	str	x22, [sp, 88]
	add	x0, sp, 344
	str	x26, [x2, x1]
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	add	sp, sp, 608
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L523:
	.cfi_restore_state
	ldr	x1, [x20, 264]
	uxtw	x2, w2
	add	x0, sp, 88
	ldr	x1, [x1, x19, lsl 3]
.LEHB16:
	bl	_ZNSo5writeEPKcl
.LEHE16:
	add	x19, x19, 1
	b	.L526
	.p2align 2,,3
.L522:
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB17:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE17:
	b	.L497
	.p2align 2,,3
.L525:
	ldr	x0, [sp, 88]
	add	x1, sp, 88
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB18:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE18:
	b	.L506
.L515:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L508
.L511:
	mov	x19, x0
	add	x0, sp, 88
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB19:
	bl	_Unwind_Resume
.L514:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L500:
	ldr	x0, [x22, -24]
	add	x1, sp, 88
	str	x22, [sp, 88]
	str	x26, [x1, x0]
.L501:
	add	x0, sp, 344
	str	x23, [sp, 344]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
	bl	_Unwind_Resume
.LEHE19:
.L513:
	mov	x19, x0
	b	.L500
.L512:
	mov	x19, x0
	b	.L501
	.cfi_endproc
.LFE11059:
	.section	.gcc_except_table._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
.LLSDA11059:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11059-.LLSDATTD11059
.LLSDATTD11059:
	.byte	0x1
	.uleb128 .LLSDACSE11059-.LLSDACSB11059
.LLSDACSB11059:
	.uleb128 .LEHB11-.LFB11059
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L512-.LFB11059
	.uleb128 0
	.uleb128 .LEHB12-.LFB11059
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L513-.LFB11059
	.uleb128 0
	.uleb128 .LEHB13-.LFB11059
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L514-.LFB11059
	.uleb128 0
	.uleb128 .LEHB14-.LFB11059
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L511-.LFB11059
	.uleb128 0
	.uleb128 .LEHB15-.LFB11059
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L515-.LFB11059
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB11059
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L511-.LFB11059
	.uleb128 0
	.uleb128 .LEHB17-.LFB11059
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L514-.LFB11059
	.uleb128 0
	.uleb128 .LEHB18-.LFB11059
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L511-.LFB11059
	.uleb128 0
	.uleb128 .LEHB19-.LFB11059
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE11059:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11059:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_.str1.8,"aMS",@progbits,1
	.align	3
.LC9:
	.string	"load data "
	.align	3
.LC10:
	.string	"\n"
	.align	3
.LC11:
	.string	"dimension: "
	.align	3
.LC12:
	.string	"  number:"
	.align	3
.LC13:
	.string	"  size_per_element:"
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB11060:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11060
	sub	sp, sp, #624
	.cfi_def_cfa_offset 624
	stp	x29, x30, [sp]
	.cfi_offset 29, -624
	.cfi_offset 30, -616
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -608
	.cfi_offset 20, -600
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -592
	.cfi_offset 22, -584
	mov	x21, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -576
	.cfi_offset 24, -568
	mov	x24, x0
	add	x0, sp, 360
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -560
	.cfi_offset 26, -552
	adrp	x25, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x25, x25, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -544
	.cfi_offset 28, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x0, _ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, x0, :lo12:_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 584]
	add	x3, sp, 592
	mov	x1, 0
	ldp	x23, x28, [x0, 8]
	add	x0, sp, 96
	ldr	x2, [x23, -24]
	stp	xzr, xzr, [x3]
	stp	xzr, xzr, [x3, 16]
	str	x23, [sp, 96]
	str	x25, [sp, 360]
	str	xzr, [sp, 576]
	str	x28, [x0, x2]
	add	x2, sp, 96
	str	xzr, [sp, 104]
	ldr	x0, [x23, -24]
	add	x0, x2, x0
.LEHB20:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE20:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB21:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE21:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB22:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE22:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB23:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L554
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L533:
	mov	x1, x20
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	mov	x1, x21
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	mov	x1, 2305843009213693950
	ldr	x2, [x21]
	mul	x0, x0, x2
	cmp	x0, x1
	bhi	.L534
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L538
	.p2align 3,,7
.L536:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L536
.L538:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L555
.L539:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC9
	mov	x0, x19
	add	x1, x1, :lo12:.LC9
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC10
	add	x24, x24, :lo12:.LC10
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC11
	mov	x0, x19
	add	x1, x1, :lo12:.LC11
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC12
	mov	x19, x0
	add	x1, x1, :lo12:.LC12
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC13
	mov	x19, x0
	add	x1, x1, :lo12:.LC13
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE23:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB24:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE24:
.L541:
	add	x0, sp, 224
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 168
	str	x1, [sp, 112]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x23, -24]
	add	x2, sp, 96
	str	x23, [sp, 96]
	add	x0, sp, 360
	str	x28, [x2, x1]
	str	xzr, [sp, 104]
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x22
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 624
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L554:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB25:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L533
	.p2align 2,,3
.L555:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE25:
	b	.L539
.L548:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L541
.L547:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L530:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L531:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB26:
	bl	_Unwind_Resume
.LEHE26:
.L546:
	mov	x19, x0
	b	.L530
.L534:
.LEHB27:
	bl	__cxa_throw_bad_array_new_length
.LEHE27:
.L545:
	mov	x19, x0
	b	.L531
.L544:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB28:
	bl	_Unwind_Resume
.LEHE28:
	.cfi_endproc
.LFE11060:
	.section	.gcc_except_table._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA11060:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11060-.LLSDATTD11060
.LLSDATTD11060:
	.byte	0x1
	.uleb128 .LLSDACSE11060-.LLSDACSB11060
.LLSDACSB11060:
	.uleb128 .LEHB20-.LFB11060
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L545-.LFB11060
	.uleb128 0
	.uleb128 .LEHB21-.LFB11060
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L546-.LFB11060
	.uleb128 0
	.uleb128 .LEHB22-.LFB11060
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L547-.LFB11060
	.uleb128 0
	.uleb128 .LEHB23-.LFB11060
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L544-.LFB11060
	.uleb128 0
	.uleb128 .LEHB24-.LFB11060
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L548-.LFB11060
	.uleb128 0x1
	.uleb128 .LEHB25-.LFB11060
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L544-.LFB11060
	.uleb128 0
	.uleb128 .LEHB26-.LFB11060
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB11060
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L544-.LFB11060
	.uleb128 0
	.uleb128 .LEHB28-.LFB11060
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE11060:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11060:
	.section	.text._Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
	.p2align 4,,11
	.weak	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.type	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, %function
_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_:
.LFB11061:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11061
	sub	sp, sp, #624
	.cfi_def_cfa_offset 624
	stp	x29, x30, [sp]
	.cfi_offset 29, -624
	.cfi_offset 30, -616
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -608
	.cfi_offset 20, -600
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -592
	.cfi_offset 22, -584
	mov	x21, x2
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -576
	.cfi_offset 24, -568
	mov	x24, x0
	add	x0, sp, 360
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -560
	.cfi_offset 26, -552
	adrp	x25, _ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	add	x25, x25, :lo12:_ZTVSt9basic_iosIcSt11char_traitsIcEE+16
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -544
	.cfi_offset 28, -536
	bl	_ZNSt8ios_baseC2Ev
	adrp	x0, _ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	add	x0, x0, :lo12:_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	strh	wzr, [sp, 584]
	add	x3, sp, 592
	mov	x1, 0
	ldp	x23, x28, [x0, 8]
	add	x0, sp, 96
	ldr	x2, [x23, -24]
	stp	xzr, xzr, [x3]
	stp	xzr, xzr, [x3, 16]
	str	x23, [sp, 96]
	str	x25, [sp, 360]
	str	xzr, [sp, 576]
	str	x28, [x0, x2]
	add	x2, sp, 96
	str	xzr, [sp, 104]
	ldr	x0, [x23, -24]
	add	x0, x2, x0
.LEHB29:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE29:
	adrp	x27, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	adrp	x26, _ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x27, x27, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+24
	add	x26, x26, :lo12:_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+64
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x26, [sp, 360]
.LEHB30:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE30:
	add	x0, sp, 96
	add	x1, sp, 112
	add	x0, x0, 264
.LEHB31:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE31:
	ldr	x1, [x24]
	add	x0, sp, 112
	mov	w2, 12
.LEHB32:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, x0
	ldr	x0, [sp, 96]
	ldr	x1, [x0, -24]
	add	x0, sp, 96
	add	x0, x0, x1
	cbz	x2, .L583
	mov	w1, 0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.L562:
	mov	x1, x20
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	mov	x1, x21
	add	x0, sp, 96
	mov	x2, 4
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	mov	x1, 2305843009213693950
	ldr	x2, [x21]
	mul	x0, x0, x2
	cmp	x0, x1
	bhi	.L563
	lsl	x0, x0, 2
	bl	_Znam
	ldr	x1, [x20]
	mov	x22, x0
	mov	x19, 0
	cbz	x1, .L567
	.p2align 3,,7
.L565:
	ldr	x2, [x21]
	add	x0, sp, 96
	lsl	x2, x2, 2
	madd	x1, x2, x19, x22
	bl	_ZNSi4readEPcl
	ldr	x0, [x20]
	add	x19, x19, 1
	cmp	x0, x19
	bhi	.L565
.L567:
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	cbz	x0, .L584
.L568:
	adrp	x19, _ZSt4cerr
	add	x19, x19, :lo12:_ZSt4cerr
	adrp	x1, .LC9
	mov	x0, x19
	add	x1, x1, :lo12:.LC9
	mov	x2, 10
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldp	x1, x2, [x24]
	mov	x0, x19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x24, .LC10
	add	x24, x24, :lo12:.LC10
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x1, .LC11
	mov	x0, x19
	add	x1, x1, :lo12:.LC11
	mov	x2, 11
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x21]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC12
	mov	x19, x0
	add	x1, x1, :lo12:.LC12
	mov	x2, 9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x1, [x20]
	mov	x0, x19
	bl	_ZNSo9_M_insertImEERSoT_
	adrp	x1, .LC13
	mov	x19, x0
	add	x1, x1, :lo12:.LC13
	mov	x2, 19
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	mov	x1, 4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	x1, x24
	mov	x2, 1
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE32:
	adrp	x1, _ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt13basic_filebufIcSt11char_traitsIcEE+16
	add	x0, sp, 112
	str	x27, [sp, 96]
	str	x1, [sp, 112]
	str	x26, [sp, 360]
.LEHB33:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.LEHE33:
.L570:
	add	x0, sp, 224
	bl	_ZNSt12__basic_fileIcED1Ev
	adrp	x1, _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x1, x1, :lo12:_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	add	x0, sp, 168
	str	x1, [sp, 112]
	bl	_ZNSt6localeD1Ev
	ldr	x1, [x23, -24]
	add	x2, sp, 96
	str	x23, [sp, 96]
	add	x0, sp, 360
	str	x28, [x2, x1]
	str	xzr, [sp, 104]
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x22
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 624
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L583:
	.cfi_restore_state
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
.LEHB34:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L562
	.p2align 2,,3
.L584:
	ldr	x0, [sp, 96]
	add	x1, sp, 96
	ldr	x0, [x0, -24]
	add	x0, x1, x0
	ldr	w1, [x0, 32]
	orr	w1, w1, 4
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE34:
	b	.L568
.L577:
	bl	__cxa_begin_catch
	bl	__cxa_end_catch
	b	.L570
.L576:
	mov	x19, x0
	add	x0, sp, 112
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L559:
	ldr	x0, [x23, -24]
	add	x1, sp, 96
	str	x23, [sp, 96]
	str	x28, [x1, x0]
	str	xzr, [sp, 104]
.L560:
	add	x0, sp, 360
	str	x25, [sp, 360]
	bl	_ZNSt8ios_baseD2Ev
	mov	x0, x19
.LEHB35:
	bl	_Unwind_Resume
.LEHE35:
.L575:
	mov	x19, x0
	b	.L559
.L563:
.LEHB36:
	bl	__cxa_throw_bad_array_new_length
.LEHE36:
.L574:
	mov	x19, x0
	b	.L560
.L573:
	mov	x19, x0
	add	x0, sp, 96
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB37:
	bl	_Unwind_Resume
.LEHE37:
	.cfi_endproc
.LFE11061:
	.section	.gcc_except_table._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"aG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.align	2
.LLSDA11061:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT11061-.LLSDATTD11061
.LLSDATTD11061:
	.byte	0x1
	.uleb128 .LLSDACSE11061-.LLSDACSB11061
.LLSDACSB11061:
	.uleb128 .LEHB29-.LFB11061
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L574-.LFB11061
	.uleb128 0
	.uleb128 .LEHB30-.LFB11061
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L575-.LFB11061
	.uleb128 0
	.uleb128 .LEHB31-.LFB11061
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L576-.LFB11061
	.uleb128 0
	.uleb128 .LEHB32-.LFB11061
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L573-.LFB11061
	.uleb128 0
	.uleb128 .LEHB33-.LFB11061
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L577-.LFB11061
	.uleb128 0x1
	.uleb128 .LEHB34-.LFB11061
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L573-.LFB11061
	.uleb128 0
	.uleb128 .LEHB35-.LFB11061
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB36-.LFB11061
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L573-.LFB11061
	.uleb128 0
	.uleb128 .LEHB37-.LFB11061
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE11061:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT11061:
	.section	.text._Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,"axG",@progbits,_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_,comdat
	.size	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_, .-_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
	.section	.text._ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, %function
_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb:
.LFB11966:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x21, x1
	ldr	x1, [x0, 40]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x0
	ldr	x3, [x0, 72]
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -16
	.cfi_offset 24, -8
	and	w24, w2, 255
	sub	x22, x3, x1
	ldr	x0, [x0, 8]
	asr	x19, x22, 3
	add	x19, x19, 1
	add	x19, x19, x21
	cmp	x0, x19, lsl 1
	bls	.L586
	sub	x0, x0, x19
	cmp	w24, 0
	ldr	x19, [x20]
	lsr	x0, x0, 1
	add	x3, x3, 8
	lsl	x0, x0, 3
	sub	x2, x3, x1
	add	x21, x0, x21, lsl 3
	csel	x0, x21, x0, ne
	add	x19, x19, x0
	cmp	x1, x19
	bls	.L588
	cmp	x1, x3
	beq	.L589
	mov	x0, x19
	bl	memmove
	b	.L589
	.p2align 2,,3
.L586:
	cmp	x0, x21
	add	x23, x0, 2
	csel	x0, x0, x21, cs
	mov	x1, 1152921504606846975
	add	x23, x23, x0
	cmp	x23, x1
	bhi	.L598
	sub	x19, x23, x19
	lsl	x0, x23, 3
	bl	_Znwm
	lsr	x19, x19, 1
	cmp	w24, 0
	ldr	x3, [x20, 72]
	lsl	x19, x19, 3
	ldr	x1, [x20, 40]
	add	x21, x19, x21, lsl 3
	csel	x19, x21, x19, ne
	add	x3, x3, 8
	mov	x24, x0
	add	x19, x0, x19
	cmp	x1, x3
	beq	.L592
	sub	x2, x3, x1
	mov	x0, x19
	bl	memmove
.L592:
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	x24, x23, [x20]
.L589:
	add	x2, x19, x22
	ldr	x0, [x19]
	ldp	x23, x24, [sp, 48]
	str	x0, [x20, 24]
	add	x0, x0, 512
	str	x0, [x20, 32]
	str	x19, [x20, 40]
	ldr	x0, [x19, x22]
	ldp	x21, x22, [sp, 32]
	str	x0, [x20, 56]
	add	x0, x0, 512
	str	x0, [x20, 64]
	str	x2, [x20, 72]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L588:
	.cfi_restore_state
	cmp	x1, x3
	beq	.L589
	add	x0, x22, 8
	sub	x0, x0, x2
	add	x0, x19, x0
	bl	memmove
	b	.L589
.L598:
	bl	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE11966:
	.size	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11976:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L617
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L610
	cbnz	x1, .L604
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L609:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L605
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L606:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L606
	add	x26, x26, 8
	add	x25, x21, x26
.L605:
	cmp	x19, x23
	beq	.L607
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L607:
	cbz	x24, .L608
	mov	x0, x24
	bl	_ZdlPv
.L608:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L610:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L603:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L609
.L604:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L603
.L617:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE11976:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.text
	.align	2
	.p2align 4,,11
	.global	_Z11flat_searchPfS_mmm
	.type	_Z11flat_searchPfS_mmm, %function
_Z11flat_searchPfS_mmm:
.LFB6074:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6074
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x8
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	cbz	x2, .L618
	stp	x19, x20, [sp, 16]
	.cfi_offset 20, -88
	.cfi_offset 19, -96
	mov	x21, x1
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -56
	.cfi_offset 23, -64
	lsl	x20, x3, 2
	mov	x24, x2
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	mov	x23, 0
	mov	x25, x3
	str	x27, [sp, 80]
	.cfi_offset 27, -32
	mov	x26, x4
	str	d8, [sp, 88]
	.cfi_offset 72, -24
	mov	x1, 0
	mov	x0, 0
	fmov	s8, 1.0e+0
	cbz	x25, .L639
	.p2align 3,,7
.L658:
	movi	v0.2s, #0
	mov	x5, 0
	.p2align 3,,7
.L621:
	ldr	s2, [x19, x5]
	ldr	s1, [x21, x5]
	add	x5, x5, 4
	fmadd	s0, s2, s1, s0
	cmp	x20, x5
	bne	.L621
	sub	x2, x1, x0
	fsub	s0, s8, s0
	cmp	x26, x2, asr 3
	bhi	.L657
.L622:
	ldr	s1, [x0]
	fcmpe	s1, s0
	bgt	.L645
.L625:
	add	x23, x23, 1
	add	x19, x19, x20
	cmp	x24, x23
	beq	.L656
.L659:
	ldp	x0, x1, [x22]
	cbnz	x25, .L658
.L639:
	sub	x2, x1, x0
	fmov	s0, 1.0e+0
	cmp	x26, x2, asr 3
	bls	.L622
	.p2align 3,,7
.L657:
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L623
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L624:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	add	x23, x23, 1
	add	x19, x19, x20
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	cmp	x24, x23
	bne	.L659
.L656:
	ldp	x19, x20, [sp, 16]
	.cfi_restore 20
	.cfi_restore 19
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldr	x27, [sp, 80]
	.cfi_restore 27
	ldr	d8, [sp, 88]
	.cfi_restore 72
.L618:
	mov	x0, x22
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L645:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	.cfi_offset 72, -24
	ldr	x2, [x22, 16]
	str	s0, [sp, 104]
	str	w23, [sp, 108]
	cmp	x2, x1
	beq	.L627
	ldr	x2, [sp, 104]
	str	x2, [x1], 8
	str	x1, [x22, 8]
.L628:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x1, [x22]
	sub	x2, x1, x0
	cmp	x2, 8
	bgt	.L660
.L629:
	sub	x1, x1, #8
	str	x1, [x22, 8]
	b	.L625
.L660:
	sub	x3, x1, #8
	ldr	w4, [x1, -8]
	sub	x3, x3, x0
	ldr	s0, [x0]
	ldr	w5, [x1, -4]
	asr	x9, x3, 3
	ldr	w6, [x0, 4]
	sub	x2, x9, #1
	bfi	x27, x4, 0, 32
	str	s0, [x1, -8]
	add	x2, x2, x2, lsr 63
	str	w6, [x1, -4]
	bfi	x27, x5, 32, 32
	asr	x6, x2, 1
	cmp	x3, 16
	ble	.L640
	mov	x2, 0
	b	.L634
.L642:
	mov	w3, w4
.L633:
	lsl	x2, x2, 3
	add	x4, x0, x2
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	bge	.L630
.L643:
	mov	x2, x1
.L634:
	add	x3, x2, 1
	lsl	x5, x3, 1
	lsl	x3, x3, 4
	sub	x1, x5, #1
	add	x8, x0, x3
	lsl	x4, x1, 3
	ldr	s1, [x0, x3]
	add	x7, x0, x4
	ldr	s0, [x0, x4]
	fcmpe	s1, s0
	bmi	.L646
	ldr	w3, [x8, 4]
	bgt	.L641
	ldr	w4, [x7, 4]
	cmp	w4, w3
	bhi	.L642
.L641:
	fmov	s0, s1
	lsl	x2, x2, 3
	add	x4, x0, x2
	mov	x1, x5
	str	s0, [x0, x2]
	str	w3, [x4, 4]
	cmp	x1, x6
	blt	.L643
.L630:
	tbnz	x9, 0, .L635
.L662:
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	beq	.L661
.L635:
	mov	x3, x27
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L629
	.p2align 2,,3
.L646:
	ldr	w3, [x7, 4]
	b	.L633
.L623:
	add	x2, sp, 104
	mov	x0, x22
.LEHB38:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [x22]
	b	.L624
.L627:
	add	x2, sp, 104
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE38:
	ldp	x0, x1, [x22]
	b	.L628
.L661:
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	mov	x2, 0
	str	w3, [x4, 4]
	mov	x3, x27
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [x22, 8]
	b	.L629
.L640:
	mov	x1, 0
	tbnz	x9, 0, .L635
	b	.L662
.L644:
	ldr	x1, [x22]
	mov	x19, x0
	cbz	x1, .L638
	mov	x0, x1
	bl	_ZdlPv
.L638:
	mov	x0, x19
.LEHB39:
	bl	_Unwind_Resume
.LEHE39:
	.cfi_endproc
.LFE6074:
	.section	.gcc_except_table,"a",@progbits
.LLSDA6074:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6074-.LLSDACSB6074
.LLSDACSB6074:
	.uleb128 .LEHB38-.LFB6074
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L644-.LFB6074
	.uleb128 0
	.uleb128 .LEHB39-.LFB6074
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE6074:
	.text
	.size	_Z11flat_searchPfS_mmm, .-_Z11flat_searchPfS_mmm
	.section	.rodata.str1.8
	.align	3
.LC14:
	.string	"/anndata/"
	.align	3
.LC15:
	.string	"DEEP100K.query.fbin"
	.align	3
.LC16:
	.string	"DEEP100K.gt.query.100k.top100.bin"
	.align	3
.LC17:
	.string	"DEEP100K.base.100k.fbin"
	.align	3
.LC18:
	.string	"vector::reserve"
	.align	3
.LC19:
	.string	"average recall: "
	.align	3
.LC20:
	.string	"average latency (us): "
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB10537:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10537
	sub	sp, sp, #640
	.cfi_def_cfa_offset 640
	adrp	x2, .LC14+9
	add	x3, sp, 416
	add	x2, x2, :lo12:.LC14+9
	add	x0, sp, 400
	adrp	x1, .LC14
	stp	x29, x30, [sp]
	.cfi_offset 29, -640
	.cfi_offset 30, -632
	mov	x29, sp
	add	x1, x1, :lo12:.LC14
	stp	x19, x20, [sp, 16]
	stp	x27, x28, [sp, 80]
	stp	d8, d9, [sp, 96]
	stp	xzr, xzr, [sp, 264]
	stp	xzr, xzr, [sp, 280]
	str	x3, [sp, 400]
.LEHB40:
	.cfi_offset 19, -624
	.cfi_offset 20, -616
	.cfi_offset 27, -560
	.cfi_offset 28, -552
	.cfi_offset 72, -544
	.cfi_offset 73, -536
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE40:
	adrp	x1, .LC15
	add	x0, sp, 400
	add	x8, sp, 512
	add	x1, x1, :lo12:.LC15
.LEHB41:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE41:
	add	x2, sp, 288
	add	x1, sp, 264
	add	x0, sp, 512
.LEHB42:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE42:
	mov	x2, x0
	add	x1, sp, 528
	ldr	x0, [sp, 512]
	str	x2, [sp, 208]
	cmp	x0, x1
	beq	.L664
	bl	_ZdlPv
.L664:
	adrp	x1, .LC16
	add	x8, sp, 512
	add	x1, x1, :lo12:.LC16
	add	x0, sp, 400
.LEHB43:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE43:
	add	x1, sp, 264
	add	x2, sp, 280
	add	x0, sp, 512
.LEHB44:
	bl	_Z8LoadDataIiEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE44:
	mov	x2, x0
	add	x1, sp, 528
	ldr	x0, [sp, 512]
	str	x2, [sp, 184]
	cmp	x0, x1
	beq	.L665
	bl	_ZdlPv
.L665:
	adrp	x1, .LC17
	add	x8, sp, 512
	add	x1, x1, :lo12:.LC17
	add	x0, sp, 400
.LEHB45:
	bl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE45:
	add	x2, sp, 288
	add	x1, sp, 272
	add	x0, sp, 512
.LEHB46:
	bl	_Z8LoadDataIfEPT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmS8_
.LEHE46:
	mov	x2, x0
	add	x1, sp, 528
	ldr	x0, [sp, 512]
	str	x2, [sp, 144]
	cmp	x0, x1
	beq	.L666
	bl	_ZdlPv
.L666:
	mov	x1, 2000
	mov	x0, 32000
	str	x1, [sp, 264]
.LEHB47:
	bl	_Znwm
.LEHE47:
	mov	x9, 32000
	add	x1, x0, x9
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -584
	.cfi_offset 23, -592
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -568
	.cfi_offset 25, -576
	str	x0, [sp, 152]
.L668:
	cmp	x1, x0
	beq	.L667
	add	x0, x0, 16
	str	wzr, [x0, -16]
	str	xzr, [x0, -8]
	b	.L668
.L667:
	ldr	x20, [sp, 288]
	mov	x1, -6148914691236517206
	movk	x1, 0xaaab, lsl 0
	mov	x4, 6148914691236517205
	movk	x4, 0x1555, lsl 48
	mov	x2, 12
	mul	x1, x20, x1
	add	x5, sp, 512
	ldr	x24, [sp, 272]
	add	x6, sp, 544
	add	x7, sp, 576
	ror	x1, x1, 2
	cmp	x1, x4
	add	x3, x24, 15
	csinc	x2, x2, xzr, ls
	add	x8, sp, 608
	mov	x0, 16
	stp	x2, x0, [x5]
	mov	x1, 7999
	udiv	x4, x20, x2
	lsr	x3, x3, 4
	cmp	x24, x1
	mov	x25, 8000
	csel	x25, x24, x25, ls
	stp	x4, x24, [x5, 16]
	mul	x1, x2, x4
	stp	x20, x0, [x6]
	lsl	x1, x1, 4
	stp	x3, xzr, [x6, 16]
	stp	xzr, xzr, [x7]
	stp	xzr, xzr, [x7, 16]
	stp	xzr, xzr, [x8]
	stp	xzr, xzr, [x8, 16]
	cbnz	x1, .L1137
.L671:
	mul	x1, x0, x2
	add	x0, sp, 616
	add	x2, sp, 464
	strb	wzr, [sp, 464]
	mul	x1, x1, x3
.LEHB48:
	bl	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
.LEHE48:
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -600
	.cfi_offset 21, -608
	ldr	x22, [sp, 512]
	stp	xzr, xzr, [sp, 464]
	str	xzr, [sp, 480]
	ldr	x23, [sp, 520]
	cbz	x22, .L672
	sub	x0, x24, #1
	mov	w1, 2139095039
	fmov	s8, w1
	str	xzr, [sp, 136]
	mul	x0, x0, x20
	str	x0, [sp, 192]
.L712:
	udiv	x19, x20, x22
	add	x2, sp, 352
	ldr	x1, [sp, 136]
	add	x0, sp, 464
	str	wzr, [sp, 352]
	mul	x28, x19, x23
	mul	x26, x1, x19
	mov	x1, x28
.LEHB49:
	bl	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
	cbz	x23, .L987
	cmp	x25, 1
	lsl	x21, x19, 2
	cset	w5, ls
	cmp	x24, 0
	ldr	x1, [sp, 192]
	cset	w0, eq
	ldr	x2, [sp, 464]
	orr	w5, w5, w0
	add	x1, x26, x1
	mov	x4, 0
	mov	x3, 0
	str	x1, [sp, 168]
.L677:
	mov	x1, x26
	cbnz	w5, .L674
	udiv	x0, x4, x23
	mul	x0, x0, x24
	udiv	x0, x0, x25
	madd	x1, x20, x0, x26
	cmp	x24, x0
	ldr	x0, [sp, 168]
	csel	x1, x1, x0, hi
.L674:
	ldr	x0, [sp, 144]
	add	x1, x0, x1, lsl 2
	mov	x0, 0
	cmp	x20, x22
	bcc	.L678
	.p2align 3,,7
.L679:
	ldr	s0, [x1, x0, lsl 2]
	str	s0, [x2, x0, lsl 2]
	add	x0, x0, 1
	cmp	x19, x0
	bhi	.L679
.L678:
	add	x3, x3, 1
	add	x2, x2, x21
	add	x4, x4, x25
	cmp	x3, x23
	bne	.L677
	mov	x0, 2305843009213693951
	cmp	x28, x0
	bhi	.L1138
	cbz	x28, .L927
	lsl	x28, x28, 2
	mov	x0, x28
	bl	_Znwm
.LEHE49:
	add	x3, x0, x28
	mov	x2, x28
	mov	x27, x0
	mov	w1, 0
	str	x3, [sp, 160]
	bl	memset
	mov	x0, 2305843009213693951
	cmp	x23, x0
	bhi	.L1139
.L1110:
	lsl	x28, x23, 2
	mov	x0, x28
.LEHB50:
	bl	_Znwm
.LEHE50:
	add	x3, x0, x28
	mov	x2, x28
	mov	w1, 0
	str	x3, [sp, 176]
	str	x0, [sp, 224]
	bl	memset
	ldr	x4, [sp, 224]
.L911:
	add	x5, x4, x28
	ldr	x0, [sp, 160]
	mov	x28, 0
	ldr	x3, [sp, 464]
	sub	x0, x0, x27
	mov	x7, x28
	str	x0, [sp, 224]
	mov	x0, x27
	mov	x27, x26
	ldr	x28, [sp, 144]
	mov	x26, x24
	mov	x24, x3
	mov	x3, x0
.L690:
	ldr	x0, [sp, 160]
	cmp	x3, x0
	beq	.L685
	ldr	x2, [sp, 224]
	mov	x0, x3
	mov	w1, 0
	stp	x4, x7, [sp, 232]
	str	x5, [sp, 248]
	bl	memset
	ldp	x4, x7, [sp, 232]
	mov	x3, x0
	ldr	x5, [sp, 248]
.L685:
	ldr	x0, [sp, 176]
	cmp	x0, x4
	beq	.L683
	ldr	x0, [sp, 176]
	mov	w1, 0
	stp	x7, x5, [sp, 232]
	sub	x2, x0, x4
	mov	x0, x4
	str	x3, [sp, 248]
	bl	memset
	mov	x4, x0
	ldp	x7, x5, [sp, 232]
	ldr	x3, [sp, 248]
.L683:
	cbz	x25, .L686
	cmp	x25, 1
	mov	x12, 0
	cset	w13, ls
	cmp	x26, 0
	cset	w0, eq
	mov	x11, 0
	ldr	x6, [sp, 168]
	orr	w13, w13, w0
	.p2align 3,,7
.L699:
	mov	x2, x27
	cbnz	w13, .L691
	udiv	x0, x12, x25
	madd	x2, x20, x0, x27
	cmp	x26, x0
	csel	x2, x2, x6, hi
.L691:
	add	x2, x28, x2, lsl 2
	cbz	x23, .L930
	fmov	s1, s8
	mov	x1, 0
	mov	x8, 0
	mov	x0, 0
	.p2align 3,,7
.L697:
	movi	v0.2s, #0
	cmp	x20, x22
	bcc	.L693
	add	x10, x24, x1
	mov	x9, 0
	.p2align 3,,7
.L694:
	ldr	s2, [x2, x9, lsl 2]
	ldr	s3, [x10, x9, lsl 2]
	add	x9, x9, 1
	fsub	s2, s2, s3
	fmadd	s0, s2, s2, s0
	cmp	x19, x9
	bhi	.L694
.L693:
	fcmpe	s1, s0
	bgt	.L980
.L695:
	add	x0, x0, 1
	add	x1, x1, x21
	cmp	x0, x23
	bne	.L697
	and	x1, x8, 255
	add	x8, x4, x8, uxtb 2
	mul	x1, x21, x1
.L692:
	ldr	w9, [x8]
	add	x1, x3, x1
	mov	x0, 0
	add	w9, w9, 1
	str	w9, [x8]
	cmp	x20, x22
	bcc	.L700
	.p2align 3,,7
.L698:
	ldr	s0, [x1, x0, lsl 2]
	ldr	s1, [x2, x0, lsl 2]
	fadd	s0, s0, s1
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	x19, x0
	bhi	.L698
.L700:
	add	x11, x11, 1
	add	x12, x12, x26
	cmp	x25, x11
	bne	.L699
.L686:
	cbz	x23, .L703
	ldr	x6, [sp, 168]
	mov	x2, x3
	mov	x1, x24
	mov	x10, x7
	mov	x9, x4
	fmov	s2, 1.0e+0
	.p2align 3,,7
.L704:
	ldr	w0, [x9]
	cmp	w0, 0
	ble	.L701
	scvtf	s1, w0
	mov	x0, 0
	fdiv	s1, s2, s1
	cmp	x20, x22
	bcc	.L705
	.p2align 3,,7
.L702:
	ldr	s0, [x2, x0, lsl 2]
	fmul	s0, s0, s1
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	x19, x0
	bhi	.L702
.L705:
	add	x9, x9, 4
	add	x2, x2, x21
	add	x1, x1, x21
	add	x10, x10, 131
	cmp	x5, x9
	bne	.L704
.L703:
	add	x7, x7, 17
	cmp	x7, 85
	bne	.L690
	mov	x24, x26
	mov	x27, x3
	cbz	x4, .L708
	mov	x0, x4
	bl	_ZdlPv
.L708:
	cbz	x27, .L709
	mov	x0, x27
	bl	_ZdlPv
.L709:
	ldr	x23, [sp, 520]
	ldr	x1, [sp, 528]
	ldr	x3, [sp, 568]
	mul	x1, x23, x1
	cbz	x1, .L716
	ldr	x0, [sp, 136]
	mov	x2, 0
	ldr	x4, [sp, 464]
	mul	x0, x0, x1
	add	x0, x3, x0, lsl 2
.L717:
	ldr	s0, [x4, x2, lsl 2]
	str	s0, [x0, x2, lsl 2]
	add	x2, x2, 1
	cmp	x2, x1
	bne	.L717
.L716:
	ldr	x0, [sp, 136]
	ldr	x22, [sp, 512]
	add	x0, x0, 1
	str	x0, [sp, 136]
	cmp	x22, x0
	bhi	.L712
.L711:
	mul	x1, x22, x1
	add	x2, sp, 432
	add	x0, sp, 592
	str	wzr, [sp, 432]
.LEHB51:
	bl	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
.LEHE51:
	ldr	x19, [sp, 512]
	cbz	x19, .L718
	ldr	x5, [sp, 520]
	mov	x9, 0
	ldr	x4, [sp, 528]
	mov	x8, 0
	ldr	x16, [sp, 592]
	lsl	x15, x5, 2
	mul	x14, x4, x5
	lsl	x3, x4, 2
	ldr	x7, [sp, 568]
	add	x6, x16, x15
	lsl	x13, x14, 2
.L720:
	cbz	x4, .L724
	mov	x2, x6
	mov	x12, x9
	mov	x11, x7
	mov	x10, 0
.L719:
	add	x1, x16, x12, lsl 2
	mov	x0, x11
	cbz	x5, .L725
	.p2align 3,,7
.L726:
	ldr	s0, [x0]
	add	x0, x0, x3
	str	s0, [x1], 4
	cmp	x2, x1
	bne	.L726
.L725:
	add	x10, x10, 1
	add	x11, x11, 4
	add	x12, x12, x5
	add	x2, x2, x15
	cmp	x10, x4
	bne	.L719
.L724:
	add	x8, x8, 1
	add	x7, x7, x13
	add	x9, x9, x14
	add	x6, x6, x13
	cmp	x8, x19
	bne	.L720
.L718:
	cbz	x24, .L721
	mov	w0, 2139095039
	mov	x11, 0
	fmov	s4, w0
	mov	x9, 0
.L722:
	ldr	x10, [sp, 552]
	udiv	x12, x9, x10
	msub	x13, x12, x10, x9
	cbz	x19, .L727
	ldr	x5, [sp, 520]
	mov	x8, 0
	ldr	x2, [sp, 528]
	ldr	x0, [sp, 568]
	mul	x1, x2, x5
	madd	x3, x8, x2, x11
	mul	x1, x1, x8
	lsl	x3, x3, 2
	cbz	x5, .L937
.L1140:
	add	x1, x0, x1, lsl 2
	fmov	s3, s4
	ldr	x0, [sp, 144]
	lsl	x6, x2, 2
	mov	x7, 0
	mov	x4, 0
	add	x3, x0, x3
	.p2align 3,,7
.L733:
	movi	v1.2s, #0
	cbz	x2, .L729
	mov	x0, 0
	.p2align 3,,7
.L730:
	ldr	s0, [x3, x0, lsl 2]
	ldr	s2, [x1, x0, lsl 2]
	add	x0, x0, 1
	fsub	s0, s0, s2
	fmadd	s1, s0, s0, s1
	cmp	x2, x0
	bne	.L730
.L729:
	fcmpe	s1, s3
	bmi	.L981
.L731:
	add	x4, x4, 1
	add	x1, x1, x6
	cmp	x5, x4
	bne	.L733
	madd	x0, x19, x12, x8
	and	w7, w7, 255
	ldr	x1, [sp, 616]
	add	x8, x8, 1
	madd	x0, x0, x10, x1
	strb	w7, [x0, x13]
	ldr	x19, [sp, 512]
	cmp	x19, x8
	bls	.L727
.L1141:
	ldr	x5, [sp, 520]
	ldr	x2, [sp, 528]
	ldr	x10, [sp, 552]
	mul	x1, x2, x5
	madd	x3, x8, x2, x11
	ldr	x0, [sp, 568]
	mul	x1, x1, x8
	lsl	x3, x3, 2
	cbnz	x5, .L1140
.L937:
	madd	x0, x19, x12, x8
	mov	w7, 0
	ldr	x1, [sp, 616]
	add	x8, x8, 1
	madd	x0, x0, x10, x1
	strb	w7, [x0, x13]
	ldr	x19, [sp, 512]
	cmp	x19, x8
	bhi	.L1141
.L727:
	add	x9, x9, 1
	add	x11, x11, x20
	cmp	x24, x9
	bne	.L722
.L721:
	ldr	x0, [sp, 464]
	cbz	x0, .L735
	bl	_ZdlPv
.L735:
	ldr	x0, [sp, 264]
	cbz	x0, .L741
	ldr	x27, [sp, 152]
	mvni	v9.2s, 0x80, lsl 16
	mov	w0, 48332
	mov	x24, 0
	mov	x25, x27
	movk	w0, 0x2b8c, lsl 16
	fmov	s8, w0
	str	d10, [sp, 112]
	.cfi_offset 74, -528
.L880:
	mov	x1, 0
	add	x0, sp, 296
	bl	gettimeofday
	stp	xzr, xzr, [sp, 328]
	mov	x4, 1500
	ldr	x3, [sp, 288]
	add	x2, sp, 376
	ldr	x5, [sp, 512]
	add	x0, sp, 328
	ldr	x1, [sp, 520]
	mul	x3, x24, x3
	ldr	x23, [sp, 536]
	stp	xzr, xzr, [sp, 344]
	mul	x1, x5, x1
	cmp	x23, x4
	stp	xzr, xzr, [sp, 360]
	csel	x23, x23, x4, ls
	ldr	x4, [sp, 208]
	str	wzr, [sp, 376]
	add	x21, x4, x3, lsl 2
.LEHB52:
	bl	_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf
.LEHE52:
	ldr	x19, [sp, 512]
	mov	x8, 0
	ldr	x2, [sp, 520]
	cbz	x19, .L1142
.L743:
	ldr	x4, [sp, 528]
	cbz	x2, .L745
	mul	x7, x4, x8
	mov	x3, 0
	add	x7, x21, x7, lsl 2
	.p2align 3,,7
.L748:
	movi	v0.4s, 0
	cbz	x4, .L746
	mul	x6, x4, x8
	mov	x1, 0
	ldr	x5, [sp, 592]
	.p2align 3,,7
.L747:
	add	x0, x6, x1
	ldr	s2, [x7, x1, lsl 2]
	add	x1, x1, 1
	madd	x0, x0, x2, x3
	lsl	x0, x0, 2
	ldr	q1, [x5, x0]
	fmla	v0.4s, v1.4s, v2.s[0]
	cmp	x4, x1
	bhi	.L747
.L746:
	madd	x0, x8, x2, x3
	add	x3, x3, 4
	ldr	x1, [sp, 328]
	lsl	x0, x0, 2
	str	q0, [x1, x0]
	ldr	x2, [sp, 520]
	cmp	x2, x3
	bls	.L1143
	ldr	x4, [sp, 528]
	b	.L748
	.p2align 2,,3
.L980:
	.cfi_restore 74
	fmov	s1, s0
	mov	x8, x0
	b	.L695
.L701:
	cmp	x26, 0
	mov	x8, x27
	ccmp	x25, 1, 0, ne
	bls	.L706
	udiv	x0, x10, x25
	msub	x0, x0, x25, x10
	mul	x0, x0, x26
	udiv	x0, x0, x25
	madd	x8, x20, x0, x27
	cmp	x26, x0
	csel	x8, x8, x6, hi
.L706:
	cmp	x20, x22
	bcc	.L705
	add	x8, x28, x8, lsl 2
	mov	x0, 0
	.p2align 3,,7
.L707:
	ldr	s0, [x8, x0, lsl 2]
	str	s0, [x1, x0, lsl 2]
	add	x0, x0, 1
	cmp	x19, x0
	bhi	.L707
	add	x9, x9, 4
	add	x2, x2, x21
	add	x1, x1, x21
	add	x10, x10, 131
	cmp	x5, x9
	bne	.L704
	b	.L703
.L930:
	mov	x8, x4
	mov	x1, 0
	b	.L692
.L927:
	str	xzr, [sp, 160]
	mov	x27, 0
	mov	x0, 2305843009213693951
	cmp	x23, x0
	bls	.L1110
.L1139:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB53:
	bl	_ZSt20__throw_length_errorPKc
.LEHE53:
	.p2align 2,,3
.L987:
	ldr	x0, [sp, 192]
	lsl	x21, x19, 2
	mov	x27, 0
	mov	x4, 0
	add	x0, x26, x0
	mov	x28, 0
	stp	xzr, x0, [sp, 160]
	str	xzr, [sp, 176]
	b	.L911
.L981:
	fmov	s3, s1
	mov	x7, x4
	b	.L731
.L1143:
	.cfi_offset 74, -528
	ldr	x19, [sp, 512]
.L745:
	add	x8, x8, 1
	cmp	x19, x8
	bhi	.L743
	mul	x19, x19, x2
	add	x26, sp, 312
	mov	x2, x26
	add	x0, sp, 352
	mov	x1, x19
	strb	wzr, [sp, 312]
.LEHB54:
	bl	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
.LEHE54:
	cbz	x19, .L744
	ldr	x2, [sp, 328]
	mov	w0, 2139095039
	fmov	s1, s9
	fmov	s0, w0
	mov	x0, x2
	add	x1, x2, x19, lsl 2
.L754:
	ldr	s2, [x0]
	fcmpe	s2, s0
	bmi	.L982
.L749:
	fcmpe	s2, s1
	bgt	.L983
.L751:
	add	x0, x0, 4
	cmp	x1, x0
	bne	.L754
	fsub	s1, s1, s0
	fcmpe	s1, s8
	bmi	.L744
	mov	w0, 1132396544
	fmov	s2, w0
	mov	x1, 0
	mov	w3, 255
	fdiv	s1, s2, s1
	b	.L904
.L755:
	ldr	x2, [sp, 328]
.L904:
	ldr	s2, [x2, x1, lsl 2]
	ldr	x2, [sp, 352]
	fsub	s2, s2, s0
	fmul	s2, s2, s1
	fcvtas	w0, s2
	cmp	w0, 255
	csel	w0, w0, w3, le
	cmp	w0, 0
	csel	w0, w0, wzr, ge
	strb	w0, [x2, x1]
	add	x1, x1, 1
	cmp	x1, x19
	bne	.L755
.L744:
	ldr	x19, [sp, 536]
	stp	xzr, xzr, [sp, 376]
	mov	x0, 1152921504606846975
	str	xzr, [sp, 392]
	cmp	x19, x0
	bhi	.L1144
	cbz	x19, .L757
	lsl	x19, x19, 3
	mov	x0, x19
.LEHB55:
	bl	_Znwm
	mov	x20, x0
	ldp	x0, x1, [sp, 376]
	cmp	x0, x1
	beq	.L761
	sub	x1, x1, x0
	mov	x2, x20
	add	x1, x20, x1
	mov	x3, x0
.L762:
	ldr	x4, [x3], 8
	str	x4, [x2], 8
	cmp	x2, x1
	bne	.L762
.L761:
	cbz	x0, .L760
	bl	_ZdlPv
.L760:
	add	x19, x20, x19
	stp	x20, x20, [sp, 376]
	str	x19, [sp, 392]
.L757:
	ldr	x8, [sp, 560]
	cbz	x8, .L1128
	ldr	x3, [sp, 552]
	mov	x22, 0
.L767:
	ldr	x19, [sp, 512]
	cbz	x19, .L941
	movi	v2.4s, 0
	mul	x7, x19, x22
	ldr	x6, [sp, 352]
	mov	x0, 0
	ldr	x2, [sp, 520]
	mov	v1.16b, v2.16b
	ldr	x5, [sp, 616]
	.p2align 3,,7
.L764:
	add	x1, x7, x0
	mul	x4, x0, x2
	add	x0, x0, 1
	mul	x1, x1, x3
	ldr	q0, [x6, x4]
	ldr	q3, [x5, x1]
#APP
// 11270 "/usr/lib/gcc/aarch64-linux-gnu/10.3.1/include/arm_neon.h" 1
	tbl v0.16b, {v0.16b}, v3.16b
// 0 "" 2
#NO_APP
	dup	d3, v0.d[0]
	dup	d0, v0.d[1]
	uaddw	v1.8h, v1.8h, v3.8b
	uaddw	v2.8h, v2.8h, v0.8b
	mov	v0.16b, v1.16b
	cmp	x19, x0
	bhi	.L764
.L763:
	stp	q0, q2, [sp, 464]
	add	x20, sp, 464
	mov	x19, 0
	cbnz	x3, .L771
	b	.L768
	.p2align 2,,3
.L1145:
	ldr	x0, [sp, 432]
	str	x0, [x1], 8
	add	x19, x19, 1
	add	x20, x20, 2
	str	x1, [sp, 384]
	cmp	x3, x19
	bls	.L1127
.L771:
	ldr	x1, [sp, 536]
	madd	x0, x3, x22, x19
	cmp	x0, x1
	bcs	.L1127
	str	w0, [sp, 436]
	ldr	x1, [sp, 384]
	ldr	x0, [sp, 392]
	ldrh	w2, [x20]
	strh	w2, [sp, 432]
	cmp	x1, x0
	bne	.L1145
	add	x2, sp, 432
	add	x0, sp, 376
	bl	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE55:
	ldr	x3, [sp, 552]
	add	x19, x19, 1
	add	x20, x20, 2
	cmp	x3, x19
	bhi	.L771
.L1127:
	ldr	x8, [sp, 560]
.L768:
	add	x22, x22, 1
	cmp	x8, x22
	bhi	.L767
	ldp	x20, x6, [sp, 376]
	sub	x2, x6, x20
	mov	x19, x6
	asr	x1, x2, 3
	cmp	x23, x1
	bcc	.L1146
.L772:
	stp	xzr, xzr, [sp, 432]
	str	xzr, [sp, 448]
	cmp	x20, x19
	beq	.L821
	fmov	s10, 1.0e+0
.L840:
	ldr	w11, [x20, 4]
	ldr	x4, [sp, 544]
	uxtw	x5, w11
	ldr	x0, [sp, 144]
	mul	x5, x5, x4
	add	x5, x0, x5, lsl 2
	cmp	x4, 15
	bls	.L949
	movi	v1.4s, 0
	mov	x1, x5
	add	x2, x21, 48
	mov	x0, 16
	mov	v2.16b, v1.16b
	mov	v3.16b, v1.16b
	mov	v0.16b, v1.16b
	b	.L823
	.p2align 2,,3
.L950:
	mov	x0, x3
.L823:
	ldp	q18, q16, [x2, -48]
	add	x3, x0, 16
	ldr	q6, [x2, -16]
	ldp	q19, q17, [x1]
	ldp	q7, q5, [x1, 32]
	add	x1, x1, 64
	ldr	q4, [x2], 64
	fmla	v0.4s, v19.4s, v18.4s
	fmla	v3.4s, v17.4s, v16.4s
	fmla	v2.4s, v7.4s, v6.4s
	fmla	v1.4s, v5.4s, v4.4s
	cmp	x4, x3
	bcs	.L950
	fadd	v0.4s, v0.4s, v3.4s
	fadd	v2.4s, v2.4s, v1.4s
	fadd	v0.4s, v0.4s, v2.4s
.L822:
	add	x1, sp, 320
	str	q0, [x26]
	ldp	s0, s3, [x1, -8]
	ldp	s2, s1, [x1]
	fadd	s0, s0, s3
	fadd	s0, s0, s2
	fadd	s0, s0, s1
	cmp	x4, x0
	bls	.L824
	.p2align 3,,7
.L825:
	ldr	s2, [x5, x0, lsl 2]
	ldr	s1, [x21, x0, lsl 2]
	add	x0, x0, 1
	fmadd	s0, s2, s1, s0
	cmp	x4, x0
	bne	.L825
.L824:
	ldp	x0, x1, [sp, 432]
	fsub	s2, s10, s0
	sub	x2, x1, x0
	cmp	x2, 72
	bls	.L1147
	ldr	s0, [x0]
	fcmpe	s2, s0
	bmi	.L984
.L829:
	add	x20, x20, 8
	cmp	x20, x19
	bne	.L840
	ldr	x19, [sp, 376]
.L821:
	cbz	x19, .L841
	mov	x0, x19
	bl	_ZdlPv
.L841:
	ldr	x0, [sp, 352]
	cbz	x0, .L842
	bl	_ZdlPv
.L842:
	ldr	x0, [sp, 328]
	cbz	x0, .L843
	bl	_ZdlPv
.L843:
	mov	x1, 0
	add	x0, sp, 376
	bl	gettimeofday
	add	x26, sp, 472
	ldp	x23, x3, [sp, 376]
	mov	x1, 16960
	ldp	x0, x2, [sp, 296]
	movk	x1, 0xf, lsl 16
	mov	x22, 0
	mov	x28, 0
	mov	w21, 1
	str	wzr, [sp, 472]
	mul	x23, x23, x1
	stp	xzr, x26, [sp, 480]
	msub	x0, x0, x1, x3
	sub	x23, x23, x2
	stp	x26, xzr, [sp, 496]
	add	x23, x23, x0
.L844:
	ldr	x0, [sp, 280]
	ldr	x1, [sp, 184]
	madd	x0, x24, x0, x22
	ldr	w20, [x1, x0, lsl 2]
	cbz	x28, .L956
	mov	x19, x28
	b	.L856
	.p2align 2,,3
.L1097:
	mov	x19, x0
.L856:
	ldp	x0, x2, [x19, 16]
	ldr	w1, [x19, 32]
	cmp	w20, w1
	csel	x0, x0, x2, cc
	csel	w2, w21, wzr, cc
	cbnz	x0, .L1097
	cbnz	w2, .L855
.L1129:
	bls	.L860
.L907:
	mov	w28, 1
	cmp	x19, x26
	bne	.L1148
.L861:
	mov	x0, 40
.LEHB56:
	bl	_Znwm
.LEHE56:
	mov	x1, x0
	mov	x2, x19
	mov	w0, w28
	mov	x3, x26
	str	w20, [x1, 32]
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	x0, [sp, 504]
	ldr	x28, [sp, 480]
	add	x0, x0, 1
	str	x0, [sp, 504]
.L860:
	add	x22, x22, 1
	cmp	x22, 10
	bne	.L844
	ldp	x0, x6, [sp, 432]
	movi	v0.2s, #0
	add	x12, sp, 472
	mov	x11, 0
	cmp	x6, x0
	beq	.L854
	ldr	x13, [sp, 216]
.L853:
	ldr	w7, [x0, 4]
	cbz	x28, .L863
	mov	x1, x28
	mov	x3, x12
	.p2align 3,,7
.L864:
	ldr	w2, [x1, 32]
	ldp	x5, x4, [x1, 16]
	cmp	w7, w2
	bls	.L960
	mov	x1, x4
	cbnz	x1, .L864
.L865:
	cmp	x3, x12
	beq	.L863
	ldr	w1, [x3, 32]
	cmp	w7, w1
	cinc	x11, x11, cs
.L863:
	sub	x1, x6, x0
	cmp	x1, 8
	bgt	.L1149
.L868:
	sub	x6, x6, #8
	str	x6, [sp, 440]
	cmp	x0, x6
	bne	.L853
	ucvtf	s0, x11
	fmov	s1, 1.0e+1
	str	x13, [sp, 216]
	fdiv	s0, s0, s1
.L854:
	str	x23, [x27, 8]
	str	s0, [x27]
	cbz	x28, .L878
.L875:
	ldr	x0, [x28, 24]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	mov	x0, x28
	ldr	x28, [x28, 16]
	bl	_ZdlPv
	cbnz	x28, .L875
	ldr	x0, [sp, 432]
.L878:
	cbz	x0, .L877
	bl	_ZdlPv
.L877:
	ldr	x0, [sp, 264]
	add	x24, x24, 1
	add	x27, x27, 16
	cmp	x0, x24
	bhi	.L880
	cbz	x0, .L1150
	movi	v8.2s, #0
	ldr	x1, [sp, 152]
	fmov	s9, s8
	add	x0, x1, x0, lsl 4
.L881:
	ldr	x1, [x25, 8]
	add	x25, x25, 16
	ldr	s1, [x25, -16]
	scvtf	s0, x1
	fadd	s9, s9, s1
	fadd	s8, s8, s0
	cmp	x0, x25
	bne	.L881
	ldr	d10, [sp, 112]
	.cfi_restore 74
.L737:
	adrp	x20, _ZSt4cout
	add	x20, x20, :lo12:_ZSt4cout
	adrp	x1, .LC19
	mov	x0, x20
	add	x1, x1, :lo12:.LC19
.LEHB57:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 264]
	ucvtf	s0, x1
	fdiv	s0, s9, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	adrp	x19, .LC10
	add	x19, x19, :lo12:.LC10
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	adrp	x1, .LC20
	mov	x0, x20
	add	x1, x1, :lo12:.LC20
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	x1, [sp, 264]
	ucvtf	s0, x1
	fdiv	s0, s8, s0
	fcvt	d0, s0
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	x1, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE57:
	add	x0, sp, 512
	bl	_ZN15PQFastScanIndexD1Ev
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	ldr	x0, [sp, 400]
	add	x1, sp, 416
	cmp	x0, x1
	beq	.L1012
	bl	_ZdlPv
.L1012:
	mov	w0, 0
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	ldp	d8, d9, [sp, 96]
	add	sp, sp, 640
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L956:
	.cfi_def_cfa_offset 640
	.cfi_offset 19, -624
	.cfi_offset 20, -616
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	.cfi_offset 23, -592
	.cfi_offset 24, -584
	.cfi_offset 25, -576
	.cfi_offset 26, -568
	.cfi_offset 27, -560
	.cfi_offset 28, -552
	.cfi_offset 29, -640
	.cfi_offset 30, -632
	.cfi_offset 72, -544
	.cfi_offset 73, -536
	.cfi_offset 74, -528
	mov	x19, x26
.L855:
	ldr	x0, [sp, 488]
	cmp	x19, x0
	beq	.L907
	mov	x0, x19
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	ldr	w0, [x0, 32]
	cmp	w20, w0
	b	.L1129
.L960:
	mov	x3, x1
	mov	x1, x5
	cbnz	x1, .L864
	b	.L865
.L983:
	fmov	s1, s2
	b	.L751
.L982:
	fmov	s0, s2
	b	.L749
.L1149:
	sub	x2, x6, #8
	ldr	w3, [x6, -8]
	sub	x2, x2, x0
	ldr	s0, [x0]
	ldr	w4, [x6, -4]
	asr	x8, x2, 3
	bfi	x13, x3, 0, 32
	sub	x1, x8, #1
	str	s0, [x6, -8]
	str	w7, [x6, -4]
	bfi	x13, x4, 32, 32
	add	x1, x1, x1, lsr 63
	asr	x6, x1, 1
	cmp	x2, 16
	ble	.L961
	mov	x2, 0
	b	.L873
.L963:
	mov	w4, w5
.L872:
	lsl	x2, x2, 3
	add	x3, x0, x2
	str	s0, [x0, x2]
	str	w4, [x3, 4]
	cmp	x6, x1
	ble	.L869
.L964:
	mov	x2, x1
.L873:
	add	x4, x2, 1
	lsl	x3, x4, 1
	lsl	x4, x4, 4
	sub	x1, x3, #1
	add	x9, x0, x4
	lsl	x5, x1, 3
	ldr	s1, [x0, x4]
	add	x7, x0, x5
	ldr	s0, [x0, x5]
	fcmpe	s1, s0
	bmi	.L986
	ldr	w4, [x9, 4]
	bgt	.L962
	ldr	w5, [x7, 4]
	cmp	w5, w4
	bhi	.L963
.L962:
	fmov	s0, s1
	lsl	x2, x2, 3
	mov	x1, x3
	add	x3, x0, x2
	str	s0, [x0, x2]
	str	w4, [x3, 4]
	cmp	x6, x1
	bgt	.L964
.L869:
	tbnz	x8, 0, .L874
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L874
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	str	w3, [x4, 4]
.L874:
	mov	x3, x13
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x6, [sp, 432]
	ldr	x28, [sp, 480]
	b	.L868
.L986:
	ldr	w4, [x7, 4]
	b	.L872
.L1147:
	ldr	x2, [sp, 448]
	str	s2, [sp, 312]
	str	w11, [sp, 316]
	cmp	x1, x2
	beq	.L827
	ldr	x2, [sp, 312]
	str	x2, [x1], 8
	str	x1, [sp, 440]
.L828:
	ldr	x3, [x1, -8]
	sub	x2, x1, x0
	asr	x1, x2, 3
	mov	x2, 0
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L829
.L984:
	cmp	x2, 8
	bgt	.L1151
.L831:
	ldr	x2, [sp, 448]
	sub	x0, x1, #8
	str	s2, [sp, 312]
	str	w11, [sp, 316]
	str	x0, [sp, 440]
	cmp	x0, x2
	beq	.L838
	ldr	x0, [sp, 312]
	str	x0, [x1, -8]
	str	x1, [sp, 440]
.L839:
	ldr	x0, [sp, 432]
	mov	x2, 0
	ldr	x3, [x1, -8]
	sub	x1, x1, x0
	asr	x1, x1, 3
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	b	.L829
.L941:
	movi	v0.4s, 0
	mov	v2.16b, v0.16b
	b	.L763
.L1148:
	ldr	w0, [x19, 32]
	cmp	w20, w0
	cset	w28, cc
	b	.L861
.L949:
	movi	v0.4s, 0
	mov	x0, 0
	b	.L822
.L961:
	mov	x1, 0
	b	.L869
.L1146:
	lsl	x15, x23, 3
	cmp	x6, x20
	add	x19, x20, x15
	ccmp	x6, x19, 4, ne
	beq	.L809
	clz	x0, x1
	mov	w7, 63
	sub	w7, w7, w0
	mov	x18, x6
	mov	x0, x20
	sbfiz	x7, x7, 1, 32
	cmp	x2, 24
	ble	.L774
.L808:
	cbz	x7, .L1152
	asr	x2, x2, 4
	ldrh	w9, [x0, 8]
	sub	x7, x7, #1
	add	x12, x0, 8
	lsl	x2, x2, 3
	add	x10, x0, x2
	ldrh	w8, [x0, x2]
	cmp	w9, w8
	beq	.L787
	cset	w3, hi
.L788:
	ldrh	w2, [x18, -8]
	cbz	w3, .L1153
	cmp	w8, w2
	beq	.L789
	cset	w5, hi
.L790:
	ldrh	w3, [x0]
	ldr	w4, [x0, 4]
	cbz	w5, .L1154
	strh	w8, [x0]
	strh	w3, [x10]
	ldr	w2, [x10, 4]
	ldrh	w8, [x18, -8]
	str	w2, [x0, 4]
	ldrh	w3, [x0, 8]
	ldrh	w9, [x0]
	str	w4, [x10, 4]
.L791:
	add	x11, x0, 16
	mov	x4, x18
	cmp	w3, w9
	beq	.L799
.L1156:
	cset	w2, hi
.L800:
	cbz	w2, .L1155
.L801:
	ldrh	w3, [x11], 8
	add	x12, x12, 8
	cmp	w3, w9
	bne	.L1156
.L799:
	ldr	w2, [x0, 4]
	ldr	w5, [x11, -4]
	cmp	w5, w2
	cset	w2, cc
	b	.L800
.L1155:
	sub	x2, x4, #8
	b	.L804
	.p2align 2,,3
.L1158:
	cset	w5, hi
.L803:
	sub	x2, x2, #8
	cbz	w5, .L1157
	ldrh	w8, [x2]
.L804:
	mov	x4, x2
	cmp	w9, w8
	bne	.L1158
	ldr	w5, [x2, 4]
	ldr	w10, [x0, 4]
	cmp	w10, w5
	cset	w5, cc
	b	.L803
.L1157:
	cmp	x12, x4
	bcs	.L1159
	strh	w8, [x11, -8]
	strh	w3, [x4]
	ldr	w3, [x4, 4]
	ldrh	w9, [x0]
	ldr	w2, [x11, -4]
	ldrh	w8, [x4, -8]
	str	w3, [x11, -4]
	str	w2, [x4, 4]
	b	.L801
.L1159:
	cmp	x19, x12
	csel	x18, x18, x12, cs
	csel	x0, x0, x12, cc
	sub	x2, x18, x0
	cmp	x2, 24
	bgt	.L808
	cmp	x0, x18
	beq	.L810
.L774:
	add	x2, x0, 8
	cmp	x18, x2
	beq	.L810
.L820:
	ldrh	w5, [x2]
	ldrh	w3, [x0]
	ldr	w7, [x2, 4]
	cmp	w5, w3
	bne	.L1133
	ldr	w3, [x0, 4]
	cmp	w3, w7
.L1133:
	cset	w4, hi
	add	x3, x2, 8
	cbz	w4, .L819
	sub	x2, x2, x0
	mov	x4, x3
	asr	x8, x2, 3
	cmp	x2, 0
	ble	.L815
.L813:
	ldrh	w9, [x4, -16]
	sub	x4, x4, #8
	ldr	w2, [x4, -4]
	subs	x8, x8, #1
	strh	w9, [x4]
	str	w2, [x4, 4]
	bne	.L813
.L815:
	strh	w5, [x0]
	str	w7, [x0, 4]
	cmp	x18, x3
	beq	.L810
.L947:
	mov	x2, x3
	b	.L820
.L1153:
	cmp	w9, w2
	beq	.L794
	cset	w5, hi
.L795:
	ldrh	w3, [x0]
	ldr	w4, [x0, 4]
	cbnz	w5, .L900
	cmp	w8, w2
	beq	.L796
	cset	w5, hi
.L797:
	cbnz	w5, .L918
	strh	w8, [x0]
	strh	w3, [x10]
	ldr	w2, [x10, 4]
	ldrh	w8, [x18, -8]
	str	w2, [x0, 4]
	ldrh	w3, [x0, 8]
	ldrh	w9, [x0]
	str	w4, [x10, 4]
	b	.L791
.L787:
	ldr	w3, [x0, 12]
	ldr	w2, [x10, 4]
	cmp	w3, w2
	cset	w3, cc
	b	.L788
.L827:
	mov	x2, x26
	add	x0, sp, 432
.LEHB58:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x0, x1, [sp, 432]
	b	.L828
.L838:
	mov	x1, x0
	mov	x2, x26
	add	x0, sp, 432
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE58:
	ldr	x1, [sp, 440]
	b	.L839
.L1151:
	sub	x5, x1, #8
	ldr	w4, [x1, -8]
	ldr	x8, [sp, 200]
	sub	x5, x5, x0
	ldr	w6, [x1, -4]
	asr	x2, x5, 3
	ldr	w7, [x0, 4]
	sub	x3, x2, #1
	bfi	x8, x4, 0, 32
	mov	x4, x8
	str	s0, [x1, -8]
	add	x3, x3, x3, lsr 63
	str	w7, [x1, -4]
	bfi	x4, x6, 32, 32
	str	x4, [sp, 200]
	asr	x4, x3, 1
	cmp	x5, 16
	ble	.L951
	mov	x3, 0
	b	.L836
.L953:
	mov	w5, w7
.L835:
	lsl	x3, x3, 3
	add	x6, x0, x3
	str	s0, [x0, x3]
	str	w5, [x6, 4]
	cmp	x4, x1
	ble	.L832
.L954:
	mov	x3, x1
.L836:
	add	x5, x3, 1
	lsl	x6, x5, 1
	lsl	x5, x5, 4
	sub	x1, x6, #1
	add	x9, x0, x5
	lsl	x8, x1, 3
	ldr	s1, [x0, x5]
	add	x7, x0, x8
	ldr	s0, [x0, x8]
	fcmpe	s1, s0
	bmi	.L985
	ldr	w5, [x9, 4]
	bgt	.L952
	ldr	w7, [x7, 4]
	cmp	w7, w5
	bhi	.L953
.L952:
	fmov	s0, s1
	lsl	x3, x3, 3
	mov	x1, x6
	add	x6, x0, x3
	str	s0, [x0, x3]
	str	w5, [x6, 4]
	cmp	x4, x1
	bgt	.L954
.L832:
	tbnz	x2, 0, .L837
	sub	x2, x2, #2
	add	x2, x2, x2, lsr 63
	cmp	x1, x2, asr 1
	bne	.L837
	lsl	x3, x1, 1
	lsl	x2, x1, 3
	add	x1, x3, 1
	add	x4, x0, x2
	lsl	x3, x1, 3
	add	x5, x0, x3
	ldr	s0, [x0, x3]
	ldr	w3, [x5, 4]
	str	s0, [x0, x2]
	str	w3, [x4, 4]
.L837:
	ldr	x3, [sp, 200]
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldr	x1, [sp, 440]
	b	.L831
.L985:
	ldr	w5, [x7, 4]
	b	.L835
.L900:
	strh	w9, [x0]
	strh	w3, [x0, 8]
	ldr	w2, [x0, 12]
	ldrh	w8, [x18, -8]
	str	w2, [x0, 4]
	str	w4, [x0, 12]
	b	.L791
.L794:
	ldr	w4, [x0, 12]
	ldr	w3, [x18, -4]
	cmp	w4, w3
	cset	w5, cc
	b	.L795
.L1154:
	cmp	w9, w2
	beq	.L792
	cset	w5, hi
.L793:
	cbz	w5, .L900
.L918:
	strh	w2, [x0]
	mov	w8, w3
	ldr	w2, [x18, -4]
	strh	w3, [x18, -8]
	str	w2, [x0, 4]
	ldrh	w9, [x0]
	ldrh	w3, [x0, 8]
	str	w4, [x18, -4]
	b	.L791
.L789:
	ldr	w4, [x10, 4]
	ldr	w3, [x18, -4]
	cmp	w4, w3
	cset	w5, cc
	b	.L790
.L1152:
	add	x20, x19, 8
	sub	x1, x20, x0
	asr	x28, x1, 3
	cmp	x1, 8
	bgt	.L1160
.L777:
	ldrh	w4, [x0]
	ldr	w5, [x0, 4]
	cmp	x20, x18
	bcs	.L786
.L785:
	ldrh	w3, [x20]
	cmp	w3, w4
	beq	.L783
	cset	w1, hi
.L784:
	cbnz	w1, .L1161
.L913:
	add	x20, x20, 8
	cmp	x18, x20
	bhi	.L785
.L786:
	ldp	x20, x6, [sp, 376]
	ldrh	w3, [x19]
	ldrh	w2, [x0]
	strh	w3, [x0]
	ldr	w3, [x19, 4]
	sub	x1, x6, x20
	strh	w2, [x19]
	ldr	w2, [x0, 4]
	str	w3, [x0, 4]
	asr	x1, x1, 3
	str	w2, [x19, 4]
	cmp	x23, x1
	bhi	.L909
	mov	x19, x6
	bcs	.L772
	add	x19, x20, x15
.L809:
	cmp	x19, x6
	beq	.L772
	str	x19, [sp, 384]
	b	.L772
.L1162:
	bls	.L818
	ldr	w4, [x2, -4]
.L817:
	sub	x2, x2, #8
	strh	w8, [x2, 8]
	str	w4, [x2, 12]
.L819:
	ldrh	w8, [x2, -8]
	cmp	w5, w8
	bne	.L1162
	ldr	w4, [x2, -4]
	cmp	w4, w7
	bhi	.L817
.L818:
	strh	w5, [x2]
	str	w7, [x2, 4]
	cmp	x18, x3
	bne	.L947
.L810:
	cmp	x23, x1
	bls	.L809
.L909:
	sub	x1, x23, x1
	add	x0, sp, 376
.LEHB59:
	bl	_ZNSt6vectorISt4pairItjESaIS1_EE17_M_default_appendEm
.LEHE59:
.L1128:
	ldp	x20, x19, [sp, 376]
	b	.L772
.L783:
	ldr	w1, [x20, 4]
	cmp	w1, w5
	cset	w1, cc
	b	.L784
.L1161:
	strh	w4, [x20]
	mov	x2, x28
	ldr	w4, [x20, 4]
	mov	x1, 0
	str	w5, [x20, 4]
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0
	ldrh	w4, [x0]
	ldr	w5, [x0, 4]
	b	.L913
.L792:
	ldr	w5, [x18, -4]
	ldr	w8, [x0, 12]
	cmp	w8, w5
	cset	w5, cc
	b	.L793
.L796:
	ldr	w5, [x18, -4]
	ldr	w9, [x10, 4]
	cmp	w9, w5
	cset	w5, cc
	b	.L797
.L951:
	mov	x1, 0
	b	.L832
.L1142:
	add	x26, sp, 312
	add	x0, sp, 352
	mov	x2, x26
	mov	x1, 0
	strb	wzr, [sp, 312]
.LEHB60:
	bl	_ZNSt6vectorIhSaIhEE14_M_fill_assignEmRKh
.LEHE60:
	b	.L744
.L1160:
	sub	x1, x28, #2
	mov	x2, 2
	sdiv	x1, x1, x2
	add	x22, x0, x1, lsl 3
	b	.L779
.L1163:
	sub	x1, x1, #1
.L779:
	ldrh	w3, [x22]
	mov	x2, x28
	ldr	w4, [x22, 4]
	sub	x22, x22, #8
	bl	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairItjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZL25pq_fastscan_search_rerankPfSB_RK15PQFastScanIndexmmEUlRKS3_SG_E_EEEvT_T0_SK_T1_T2_.constprop.0.isra.0
	cbnz	x1, .L1163
	b	.L777
.L1137:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 74
	add	x0, sp, 568
.LEHB61:
	bl	_ZNSt6vectorIfSaIfEE17_M_default_appendEm
.LEHE61:
	ldr	x2, [sp, 512]
	ldr	x0, [sp, 552]
	ldr	x3, [sp, 560]
	b	.L671
.L672:
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	ldr	x1, [sp, 528]
	mul	x1, x23, x1
	b	.L711
.L1150:
	.cfi_offset 74, -528
	ldr	d10, [sp, 112]
	.cfi_restore 74
.L741:
	movi	v8.2s, #0
	fmov	s9, s8
	b	.L737
.L1144:
	.cfi_offset 74, -528
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
.LEHB62:
	bl	_ZSt20__throw_length_errorPKc
.LEHE62:
.L1138:
	.cfi_restore 74
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB63:
	bl	_ZSt20__throw_length_errorPKc
.LEHE63:
.L970:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
.L1135:
	ldr	x1, [sp, 512]
	add	x2, sp, 528
	mov	x19, x0
	cmp	x1, x2
	beq	.L1125
	mov	x0, x1
	bl	_ZdlPv
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -584
	.cfi_offset 23, -592
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -568
	.cfi_offset 25, -576
.L885:
	add	x1, sp, 416
	ldr	x0, [sp, 400]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -600
	.cfi_offset 21, -608
	str	d10, [sp, 112]
	.cfi_offset 74, -528
	cmp	x0, x1
	beq	.L893
	bl	_ZdlPv
.L893:
	mov	x0, x19
.LEHB64:
	bl	_Unwind_Resume
.LEHE64:
.L979:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 74
.L1132:
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_offset 24, -584
	.cfi_offset 23, -592
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -568
	.cfi_offset 25, -576
	b	.L885
.L967:
	.cfi_restore_state
	b	.L1132
.L968:
	b	.L1135
.L972:
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	.cfi_offset 23, -592
	.cfi_offset 24, -584
	.cfi_offset 25, -576
	.cfi_offset 26, -568
	mov	x19, x0
.L852:
	add	x0, sp, 512
	bl	_ZN15PQFastScanIndexD1Ev
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L740:
	ldr	x0, [sp, 152]
	bl	_ZdlPv
	b	.L885
.L1125:
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -584
	.cfi_offset 23, -592
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -568
	.cfi_offset 25, -576
	b	.L885
.L975:
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	mov	x19, x0
	cbz	x27, .L715
	mov	x0, x27
	bl	_ZdlPv
.L715:
	ldr	x0, [sp, 464]
	cbz	x0, .L1121
	bl	_ZdlPv
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L739:
	add	x0, sp, 512
	bl	_ZN15PQFastScanIndexD1Ev
	b	.L740
.L974:
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	mov	x19, x0
	b	.L715
.L1121:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L739
.L978:
	.cfi_offset 21, -608
	.cfi_offset 22, -600
	.cfi_offset 74, -528
	ldr	x1, [sp, 432]
	mov	x19, x0
	cbz	x1, .L847
	mov	x0, x1
	bl	_ZdlPv
.L847:
	ldr	x0, [sp, 376]
	cbz	x0, .L849
	bl	_ZdlPv
.L849:
	ldr	x0, [sp, 352]
	cbz	x0, .L850
	bl	_ZdlPv
.L850:
	ldr	x0, [sp, 328]
	cbz	x0, .L1126
.L1130:
	bl	_ZdlPv
	ldr	d10, [sp, 112]
	.cfi_remember_state
	.cfi_restore 74
	b	.L852
.L976:
	.cfi_restore_state
	mov	x19, x0
	b	.L849
.L971:
	mov	x19, x0
	ldr	x0, [sp, 480]
	bl	_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE.isra.0
	ldr	x0, [sp, 432]
	cbnz	x0, .L1130
.L1126:
	ldr	d10, [sp, 112]
	.cfi_remember_state
	.cfi_restore 74
	b	.L852
.L977:
	.cfi_restore_state
	mov	x19, x0
	b	.L847
.L969:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 74
	b	.L1135
.L973:
	.cfi_offset 23, -592
	.cfi_offset 24, -584
	.cfi_offset 25, -576
	.cfi_offset 26, -568
	mov	x19, x0
	b	.L739
	.cfi_endproc
.LFE10537:
	.section	.gcc_except_table
.LLSDA10537:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10537-.LLSDACSB10537
.LLSDACSB10537:
	.uleb128 .LEHB40-.LFB10537
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB10537
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L967-.LFB10537
	.uleb128 0
	.uleb128 .LEHB42-.LFB10537
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L968-.LFB10537
	.uleb128 0
	.uleb128 .LEHB43-.LFB10537
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L967-.LFB10537
	.uleb128 0
	.uleb128 .LEHB44-.LFB10537
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L969-.LFB10537
	.uleb128 0
	.uleb128 .LEHB45-.LFB10537
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L967-.LFB10537
	.uleb128 0
	.uleb128 .LEHB46-.LFB10537
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L970-.LFB10537
	.uleb128 0
	.uleb128 .LEHB47-.LFB10537
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L979-.LFB10537
	.uleb128 0
	.uleb128 .LEHB48-.LFB10537
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L973-.LFB10537
	.uleb128 0
	.uleb128 .LEHB49-.LFB10537
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L974-.LFB10537
	.uleb128 0
	.uleb128 .LEHB50-.LFB10537
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L975-.LFB10537
	.uleb128 0
	.uleb128 .LEHB51-.LFB10537
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L974-.LFB10537
	.uleb128 0
	.uleb128 .LEHB52-.LFB10537
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L976-.LFB10537
	.uleb128 0
	.uleb128 .LEHB53-.LFB10537
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L975-.LFB10537
	.uleb128 0
	.uleb128 .LEHB54-.LFB10537
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L976-.LFB10537
	.uleb128 0
	.uleb128 .LEHB55-.LFB10537
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L977-.LFB10537
	.uleb128 0
	.uleb128 .LEHB56-.LFB10537
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L971-.LFB10537
	.uleb128 0
	.uleb128 .LEHB57-.LFB10537
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L972-.LFB10537
	.uleb128 0
	.uleb128 .LEHB58-.LFB10537
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L978-.LFB10537
	.uleb128 0
	.uleb128 .LEHB59-.LFB10537
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L977-.LFB10537
	.uleb128 0
	.uleb128 .LEHB60-.LFB10537
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L976-.LFB10537
	.uleb128 0
	.uleb128 .LEHB61-.LFB10537
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L973-.LFB10537
	.uleb128 0
	.uleb128 .LEHB62-.LFB10537
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L977-.LFB10537
	.uleb128 0
	.uleb128 .LEHB63-.LFB10537
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L974-.LFB10537
	.uleb128 0
	.uleb128 .LEHB64-.LFB10537
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE10537:
	.section	.text.startup
	.size	main, .-main
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj:
.LFB12119:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	ldr	w8, [x2]
	ldr	x1, [x0, 8]
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	uxtw	x0, w8
	udiv	x3, x0, x1
	ldr	x9, [x19]
	msub	x3, x3, x1, x0
	ldr	x6, [x9, x3, lsl 3]
	cbz	x6, .L1175
	ldr	x2, [x6]
	mov	x5, x6
	ldr	w0, [x2, 8]
.L1167:
	cmp	w8, w0
	beq	.L1166
	ldr	x0, [x2]
	mov	x5, x2
	mov	x2, x0
	cbz	x0, .L1175
	ldr	w0, [x0, 8]
	uxtw	x7, w0
	udiv	x4, x7, x1
	msub	x4, x4, x1, x7
	cmp	x3, x4
	beq	.L1167
.L1175:
	mov	x0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1166:
	.cfi_restore_state
	ldr	x0, [x5]
	ldr	x2, [x0]
	cmp	x6, x5
	beq	.L1182
	cbz	x2, .L1169
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L1169
	str	x5, [x9, x1, lsl 3]
	ldr	x2, [x0]
.L1169:
	str	x2, [x5]
	bl	_ZdlPv
	ldr	x1, [x19, 24]
	mov	x0, 1
	sub	x1, x1, #1
	str	x1, [x19, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1182:
	.cfi_restore_state
	cbz	x2, .L1176
	ldr	w6, [x2, 8]
	udiv	x4, x6, x1
	msub	x1, x4, x1, x6
	cmp	x3, x1
	beq	.L1169
	str	x5, [x9, x1, lsl 3]
	ldr	x1, [x9, x3, lsl 3]
.L1168:
	add	x4, x19, 16
	cmp	x1, x4
	beq	.L1183
.L1170:
	str	xzr, [x9, x3, lsl 3]
	ldr	x2, [x0]
	b	.L1169
	.p2align 2,,3
.L1176:
	mov	x1, x5
	b	.L1168
	.p2align 2,,3
.L1183:
	str	x2, [x19, 16]
	b	.L1170
	.cfi_endproc
.LFE12119:
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:
.LFB12120:
	.cfi_startproc
	ldr	x5, [x2]
	ldr	x2, [x0, 8]
	ldr	x8, [x0]
	udiv	x4, x5, x2
	msub	x4, x4, x2, x5
	ldr	x7, [x8, x4, lsl 3]
	cbz	x7, .L1193
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x6, x7
	mov	x29, sp
	ldr	x3, [x7]
	ldr	x1, [x3, 8]
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
.L1187:
	cmp	x5, x1
	beq	.L1186
	ldr	x0, [x3]
	mov	x6, x3
	mov	x3, x0
	cbz	x0, .L1195
	ldr	x1, [x0, 8]
	udiv	x0, x1, x2
	msub	x0, x0, x2, x1
	cmp	x4, x0
	beq	.L1187
.L1195:
	mov	x0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1186:
	.cfi_restore_state
	ldr	x0, [x6]
	ldr	x1, [x0]
	cmp	x7, x6
	beq	.L1205
	cbz	x1, .L1189
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L1189
	str	x6, [x8, x2, lsl 3]
	ldr	x1, [x0]
.L1189:
	str	x1, [x6]
	bl	_ZdlPv
	ldr	x1, [x19, 24]
	mov	x0, 1
	sub	x1, x1, #1
	str	x1, [x19, 24]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1205:
	.cfi_restore_state
	cbz	x1, .L1196
	ldr	x5, [x1, 8]
	udiv	x3, x5, x2
	msub	x2, x3, x2, x5
	cmp	x4, x2
	beq	.L1189
	str	x6, [x8, x2, lsl 3]
	ldr	x2, [x8, x4, lsl 3]
.L1188:
	add	x3, x19, 16
	cmp	x2, x3
	beq	.L1206
.L1190:
	str	xzr, [x8, x4, lsl 3]
	ldr	x1, [x0]
	b	.L1189
	.p2align 2,,3
.L1196:
	mov	x2, x6
	b	.L1188
	.p2align 2,,3
.L1193:
	.cfi_def_cfa_offset 0
	.cfi_restore 19
	.cfi_restore 29
	.cfi_restore 30
	mov	x0, 0
	ret
	.p2align 2,,3
.L1206:
	.cfi_def_cfa_offset 32
	.cfi_offset 19, -16
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	str	x1, [x19, 16]
	b	.L1190
	.cfi_endproc
.LFE12120:
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12313:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L1225
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1218
	cbnz	x1, .L1212
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1217:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1213
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1214:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1214
	add	x26, x26, 8
	add	x25, x20, x26
.L1213:
	cmp	x19, x23
	beq	.L1215
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1215:
	cbz	x24, .L1216
	mov	x0, x24
	bl	_ZdlPv
.L1216:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1218:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1211:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1217
.L1212:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1211
.L1225:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12313:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.type	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, %function
_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_:
.LFB12329:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	ldp	x25, x21, [x0]
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x1
	mov	x1, 2305843009213693951
	str	x27, [sp, 80]
	.cfi_offset 27, -16
	sub	x3, x21, x25
	asr	x3, x3, 2
	cmp	x3, x1
	beq	.L1241
	cmp	x3, 0
	mov	x20, x0
	csinc	x0, x3, xzr, ne
	mov	x27, x2
	sub	x26, x24, x25
	adds	x3, x3, x0
	bcs	.L1238
	cbnz	x3, .L1231
	mov	x19, 0
	mov	x23, 0
.L1237:
	ldr	w0, [x27]
	add	x22, x26, 4
	sub	x21, x21, x24
	add	x22, x23, x22
	str	w0, [x23, x26]
	add	x27, x22, x21
	cmp	x26, 0
	bgt	.L1242
	cmp	x21, 0
	bgt	.L1233
	cbnz	x25, .L1236
.L1234:
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	stp	x23, x27, [x20]
	str	x19, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1242:
	.cfi_restore_state
	mov	x2, x26
	mov	x1, x25
	mov	x0, x23
	bl	memmove
	cmp	x21, 0
	bgt	.L1233
.L1236:
	mov	x0, x25
	bl	_ZdlPv
	b	.L1234
	.p2align 2,,3
.L1233:
	mov	x2, x21
	mov	x1, x24
	mov	x0, x22
	bl	memcpy
	cbz	x25, .L1234
	b	.L1236
	.p2align 2,,3
.L1238:
	mov	x19, 9223372036854775804
.L1230:
	mov	x0, x19
	bl	_Znwm
	mov	x23, x0
	add	x19, x0, x19
	b	.L1237
	.p2align 2,,3
.L1231:
	cmp	x3, x1
	csel	x3, x3, x1, ls
	lsl	x19, x3, 2
	b	.L1230
.L1241:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12329:
	.size	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_, .-_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.type	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, %function
_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_:
.LFB12355:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12355
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	cmp	x1, 1
	beq	.L1265
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1266
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB65:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1245:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1247
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1248:
	ldr	x5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1267
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1248
.L1247:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1251
	bl	_ZdlPv
.L1251:
	stp	x20, x19, [x21]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1267:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1254
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1248
	b	.L1247
	.p2align 2,,3
.L1254:
	mov	x6, x2
	cbnz	x4, .L1248
	b	.L1247
	.p2align 2,,3
.L1265:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1245
.L1266:
	bl	_ZSt17__throw_bad_allocv
.LEHE65:
.L1255:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB66:
	bl	__cxa_rethrow
.LEHE66:
.L1256:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB67:
	bl	_Unwind_Resume
.LEHE67:
	.cfi_endproc
.LFE12355:
	.section	.gcc_except_table
	.align	2
.LLSDA12355:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12355-.LLSDATTD12355
.LLSDATTD12355:
	.byte	0x1
	.uleb128 .LLSDACSE12355-.LLSDACSB12355
.LLSDACSB12355:
	.uleb128 .LEHB65-.LFB12355
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L1255-.LFB12355
	.uleb128 0x1
	.uleb128 .LEHB66-.LFB12355
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L1256-.LFB12355
	.uleb128 0
	.uleb128 .LEHB67-.LFB12355
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
.LLSDACSE12355:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12355:
	.section	.text._ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,"axG",@progbits,_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_,comdat
	.size	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_, .-_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.type	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, %function
_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_:
.LFB11797:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11797
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -48
	.cfi_offset 22, -40
	ldr	x21, [x1]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	mov	x19, x0
	ldr	x5, [x0, 8]
	ldr	x0, [x0]
	udiv	x2, x21, x5
	msub	x2, x2, x5, x21
	lsl	x22, x2, 3
	ldr	x6, [x0, x2, lsl 3]
	str	x23, [sp, 48]
	.cfi_offset 23, -32
	mov	x23, x1
	cbz	x6, .L1269
	ldr	x3, [x6]
	ldr	x0, [x3, 8]
	cmp	x21, x0
	beq	.L1270
.L1293:
	ldr	x4, [x3]
	cbz	x4, .L1269
	ldr	x0, [x4, 8]
	mov	x6, x3
	udiv	x3, x0, x5
	msub	x3, x3, x5, x0
	cmp	x2, x3
	bne	.L1269
	mov	x3, x4
	cmp	x21, x0
	bne	.L1293
.L1270:
	ldr	x1, [x6]
	add	x0, x1, 16
	cbz	x1, .L1269
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1269:
	.cfi_restore_state
	mov	x0, 24
.LEHB68:
	bl	_Znwm
.LEHE68:
	ldr	x4, [x23]
	mov	x20, x0
	ldr	x1, [x19, 8]
	add	x0, x19, 32
	ldr	x2, [x19, 24]
	mov	x3, 1
	ldr	x5, [x19, 40]
	stp	xzr, x4, [x20]
	str	wzr, [x20, 16]
	str	x5, [sp, 72]
.LEHB69:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1294
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1274
.L1295:
	ldr	x1, [x1]
	str	x1, [x20]
	ldr	x0, [x0, x22]
	str	x20, [x0]
.L1275:
	ldr	x1, [x19, 24]
	add	x0, x20, 16
	ldp	x21, x22, [sp, 32]
	add	x1, x1, 1
	str	x1, [x19, 24]
	ldp	x19, x20, [sp, 16]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 80
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1294:
	.cfi_restore_state
	add	x2, sp, 72
	mov	x0, x19
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_
.LEHE69:
	ldr	x0, [x19, 8]
	udiv	x22, x21, x0
	msub	x22, x22, x0, x21
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1295
.L1274:
	ldr	x1, [x19, 16]
	str	x1, [x20]
	str	x20, [x19, 16]
	cbz	x1, .L1276
	ldr	x4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x20, [x0, x1, lsl 3]
.L1276:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1275
.L1279:
	mov	x19, x0
	mov	x0, x20
	bl	_ZdlPv
	mov	x0, x19
.LEHB70:
	bl	_Unwind_Resume
.LEHE70:
	.cfi_endproc
.LFE11797:
	.section	.gcc_except_table
.LLSDA11797:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11797-.LLSDACSB11797
.LLSDACSB11797:
	.uleb128 .LEHB68-.LFB11797
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB11797
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L1279-.LFB11797
	.uleb128 0
	.uleb128 .LEHB70-.LFB11797
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE11797:
	.section	.text._ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,"axG",@progbits,_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_,comdat
	.size	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_, .-_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12392:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L1314
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1307
	cbnz	x1, .L1301
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1306:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1302
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1303:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1303
	add	x26, x26, 8
	add	x25, x20, x26
.L1302:
	cmp	x19, x23
	beq	.L1304
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1304:
	cbz	x24, .L1305
	mov	x0, x24
	bl	_ZdlPv
.L1305:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1307:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1300:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1306
.L1301:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1300
.L1314:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12392:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12398:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L1333
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L1326
	cbnz	x1, .L1320
	mov	x25, 8
	mov	x22, 0
	mov	x21, 0
.L1325:
	ldr	x0, [x27]
	str	x0, [x21, x26]
	cmp	x19, x24
	beq	.L1321
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L1322:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1322
	add	x26, x26, 8
	add	x25, x21, x26
.L1321:
	cmp	x19, x23
	beq	.L1323
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1323:
	cbz	x24, .L1324
	mov	x0, x24
	bl	_ZdlPv
.L1324:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1326:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1319:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1325
.L1320:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1319
.L1333:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12398:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.type	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, %function
_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm:
.LFB11837:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11837
	stp	x29, x30, [sp, -176]!
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	mov	x19, x0
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	ldp	x23, x0, [x1]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	mov	x22, x1
	sub	x1, x0, x23
	cmp	x2, x1, asr 3
	bhi	.L1334
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -104
	.cfi_offset 25, -112
	mov	x24, x2
	mov	x25, 0
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -88
	.cfi_offset 27, -96
	mov	x21, 0
	mov	x20, 0
	stp	xzr, xzr, [sp, 152]
	mov	x28, 1152921504606846975
	str	xzr, [sp, 168]
	cmp	x23, x0
	beq	.L1424
	str	d8, [sp, 96]
	.cfi_offset 72, -80
	b	.L1336
	.p2align 2,,3
.L1426:
	ldr	w0, [x23, 4]
	add	x21, x21, 8
	str	w0, [x21, -4]
	str	s8, [x21, -8]
.L1341:
	sub	x1, x21, x20
	mov	x2, 0
	ldr	x3, [x21, -8]
	asr	x1, x1, 3
	sub	x1, x1, #1
	mov	x0, x20
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	mov	x0, x22
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x23, x0, [x22]
	cmp	x23, x0
	beq	.L1425
.L1336:
	ldr	s8, [x23]
	fneg	s8, s8
	cmp	x25, x21
	bne	.L1426
	sub	x27, x25, x20
	asr	x0, x27, 3
	cmp	x0, x28
	beq	.L1427
	cmp	x0, 0
	csinc	x1, x0, xzr, ne
	adds	x0, x0, x1
	bcs	.L1344
	cbnz	x0, .L1428
	mov	x2, 8
	mov	x25, 0
	mov	x4, 0
.L1346:
	add	x0, x4, x27
	ldr	w1, [x23, 4]
	str	s8, [x4, x27]
	str	w1, [x0, 4]
	cmp	x21, x20
	beq	.L1381
	mov	x2, x4
	mov	x1, x20
	.p2align 3,,7
.L1348:
	ldr	x3, [x1], 8
	str	x3, [x2], 8
	cmp	x1, x21
	bne	.L1348
	sub	x21, x21, x20
	add	x21, x21, 8
	add	x21, x4, x21
	cbz	x20, .L1349
.L1433:
	mov	x0, x20
	str	x4, [sp, 120]
	bl	_ZdlPv
	ldr	x4, [sp, 120]
.L1349:
	mov	x20, x4
	b	.L1341
	.p2align 2,,3
.L1425:
	ldr	x23, [sp, 160]
	cmp	x21, x20
	beq	.L1423
	.p2align 3,,7
.L1338:
	ldr	x25, [sp, 152]
	sub	x0, x23, x25
	cmp	x24, x0, asr 3
	bls	.L1339
	ldr	x0, [x20]
	str	x0, [sp, 144]
	sub	x0, x21, x20
	sub	x21, x21, #8
	ldr	s8, [sp, 144]
	cmp	x0, 8
	fneg	s8, s8
	bgt	.L1429
.L1352:
	cmp	x23, x25
	beq	.L1359
	.p2align 3,,7
.L1363:
	ldr	w0, [x25, 4]
	ldr	w1, [sp, 148]
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x1, x1, x5, x4
	madd	x0, x0, x5, x4
	add	x1, x3, x1
	add	x0, x3, x0
.LEHB71:
	blr	x6
	fcmpe	s8, s0
	bgt	.L1422
	add	x25, x25, 8
	cmp	x25, x23
	bne	.L1363
	ldr	x25, [sp, 160]
.L1359:
	ldr	x0, [sp, 168]
	cmp	x0, x25
	beq	.L1430
	mov	x23, x25
	ldr	x0, [sp, 144]
	str	x0, [x23], 8
	str	x23, [sp, 160]
.L1362:
	cmp	x20, x21
	bne	.L1338
.L1423:
	ldr	x25, [sp, 152]
.L1339:
	cmp	x23, x25
	beq	.L1364
	ldr	x1, [x22, 8]
	.p2align 3,,7
.L1371:
	ldr	x0, [x25]
	str	x0, [sp, 144]
	ldr	x0, [x22, 16]
	ldr	s1, [sp, 144]
	fneg	s1, s1
	str	s1, [sp, 140]
	cmp	x0, x1
	beq	.L1365
	ldr	w8, [sp, 148]
	add	x1, x1, 8
	str	s1, [x1, -8]
	str	w8, [x1, -4]
	str	x1, [x22, 8]
.L1366:
	ldr	x4, [x22]
	sub	x3, x1, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1367
	.p2align 3,,7
.L1370:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s1
	bmi	.L1390
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1371
.L1432:
	ldr	x25, [sp, 152]
.L1364:
	cbz	x25, .L1372
	mov	x0, x25
	bl	_ZdlPv
.L1372:
	cbnz	x20, .L1431
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L1334:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L1430:
	.cfi_def_cfa_offset 176
	.cfi_offset 19, -160
	.cfi_offset 20, -152
	.cfi_offset 21, -144
	.cfi_offset 22, -136
	.cfi_offset 23, -128
	.cfi_offset 24, -120
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	.cfi_offset 72, -80
	mov	x1, x25
	add	x2, sp, 144
	add	x0, sp, 152
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.p2align 3,,7
.L1422:
	ldr	x23, [sp, 160]
	b	.L1362
	.p2align 2,,3
.L1429:
	sub	x1, x21, x20
	ldr	w0, [x21]
	ldr	s0, [x20]
	asr	x8, x1, 3
	ldr	w2, [x21, 4]
	sub	x6, x8, #1
	ldr	w3, [x20, 4]
	bfi	x26, x0, 0, 32
	str	s0, [x21]
	add	x6, x6, x6, lsr 63
	str	w3, [x21, 4]
	bfi	x26, x2, 32, 32
	asr	x6, x6, 1
	cmp	x1, 16
	ble	.L1382
	mov	x0, 0
	b	.L1357
	.p2align 2,,3
.L1384:
	mov	w2, w3
.L1356:
	lsl	x0, x0, 3
	add	x3, x20, x0
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	bge	.L1353
.L1385:
	mov	x0, x1
.L1357:
	add	x2, x0, 1
	lsl	x4, x2, 1
	lsl	x2, x2, 4
	sub	x1, x4, #1
	add	x7, x20, x2
	lsl	x3, x1, 3
	ldr	s1, [x20, x2]
	add	x5, x20, x3
	ldr	s0, [x20, x3]
	fcmpe	s1, s0
	bmi	.L1388
	ldr	w2, [x7, 4]
	bgt	.L1383
	ldr	w3, [x5, 4]
	cmp	w3, w2
	bhi	.L1384
.L1383:
	fmov	s0, s1
	lsl	x0, x0, 3
	add	x3, x20, x0
	mov	x1, x4
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	cmp	x1, x6
	blt	.L1385
.L1353:
	tbnz	x8, 0, .L1358
	sub	x8, x8, #2
	add	x8, x8, x8, lsr 63
	cmp	x1, x8, asr 1
	bne	.L1358
	lsl	x2, x1, 1
	lsl	x0, x1, 3
	add	x1, x2, 1
	add	x3, x20, x0
	lsl	x2, x1, 3
	add	x4, x20, x2
	ldr	s0, [x20, x2]
	ldr	w2, [x4, 4]
	str	s0, [x20, x0]
	str	w2, [x3, 4]
	.p2align 3,,7
.L1358:
	mov	x3, x26
	mov	x0, x20
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x25, x23, [sp, 152]
	b	.L1352
	.p2align 2,,3
.L1388:
	ldr	w2, [x5, 4]
	b	.L1356
	.p2align 2,,3
.L1390:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1370
	mov	x5, x6
	add	x25, x25, 8
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1371
	b	.L1432
	.p2align 2,,3
.L1365:
	add	x3, sp, 148
	add	x2, sp, 140
	mov	x0, x22
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [x22, 8]
	ldr	w8, [x1, -4]
	ldr	s1, [x1, -8]
	b	.L1366
.L1431:
	mov	x0, x20
	ldr	d8, [sp, 96]
	.cfi_remember_state
	.cfi_restore 72
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 176
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	b	_ZdlPv
.L1367:
	.cfi_restore_state
	sub	x3, x3, #8
	add	x25, x25, 8
	add	x5, x4, x3
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x23, x25
	bne	.L1371
	b	.L1432
.L1382:
	mov	x1, 0
	b	.L1353
.L1381:
	mov	x21, x2
	cbnz	x20, .L1433
	b	.L1349
.L1424:
	.cfi_restore 72
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	b	.L1334
.L1428:
	.cfi_offset 25, -112
	.cfi_offset 26, -104
	.cfi_offset 27, -96
	.cfi_offset 28, -88
	.cfi_offset 72, -80
	cmp	x0, x28
	csel	x0, x0, x28, ls
	lsl	x25, x0, 3
.L1345:
	mov	x0, x25
	bl	_Znwm
	mov	x4, x0
	add	x25, x0, x25
	add	x2, x0, 8
	b	.L1346
.L1427:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
.LEHE71:
.L1344:
	mov	x25, 9223372036854775800
	b	.L1345
.L1387:
	ldr	x1, [sp, 152]
	mov	x19, x0
	cbz	x1, .L1374
	mov	x0, x1
	bl	_ZdlPv
.L1374:
	cbz	x20, .L1375
	mov	x0, x20
	bl	_ZdlPv
.L1375:
	mov	x0, x19
.LEHB72:
	bl	_Unwind_Resume
.LEHE72:
	.cfi_endproc
.LFE11837:
	.section	.gcc_except_table
.LLSDA11837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11837-.LLSDACSB11837
.LLSDACSB11837:
	.uleb128 .LEHB71-.LFB11837
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L1387-.LFB11837
	.uleb128 0
	.uleb128 .LEHB72-.LFB11837
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE11837:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm, .-_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB12501:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L1452
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L1445
	cbnz	x1, .L1439
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L1444:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L1440
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L1441:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L1441
	add	x26, x26, 8
	add	x25, x20, x26
.L1440:
	cmp	x19, x23
	beq	.L1442
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L1442:
	cbz	x24, .L1443
	mov	x0, x24
	bl	_ZdlPv
.L1443:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1445:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L1438:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L1444
.L1439:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L1438
.L1452:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12501:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.rodata.str1.8
	.align	3
.LC21:
	.string	"Should be not be more than M_ candidates returned by the heuristic"
	.align	3
.LC22:
	.string	"The newly inserted element should have blank link list"
	.align	3
.LC23:
	.string	"Possible memory corruption"
	.align	3
.LC24:
	.string	"Trying to make a link on a non-existent level"
	.align	3
.LC25:
	.string	"Bad value of sz_link_list_other"
	.align	3
.LC26:
	.string	"Trying to connect an element to itself"
	.text
	.align	2
	.p2align 4,,11
	.type	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, %function
_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0:
.LFB13111:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13111
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	cmp	w3, 0
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	mov	x21, x2
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	w26, w3
	ldp	x2, x3, [x0, 48]
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	and	w28, w4, 255
	ldr	x27, [x0, 64]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	csel	x27, x27, x3, eq
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	str	w1, [sp, 124]
	mov	x1, x21
.LEHB73:
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
.LEHE73:
	ldp	x2, x1, [x21]
	ldr	x0, [x19, 48]
	sub	x3, x1, x2
	cmp	x0, x3, asr 3
	bcc	.L1608
	stp	xzr, xzr, [sp, 152]
	mov	x3, 2305843009213693951
	str	xzr, [sp, 168]
	cmp	x0, x3
	bhi	.L1609
	cbnz	x0, .L1610
	mov	x20, 0
.L1457:
	cmp	x1, x2
	bne	.L1465
	b	.L1461
	.p2align 2,,3
.L1611:
	ldr	w0, [x2, 4]
	str	w0, [x20], 4
	mov	x0, x21
	str	x20, [sp, 160]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	beq	.L1461
.L1465:
	ldr	x0, [sp, 168]
	cmp	x0, x20
	bne	.L1611
	add	x2, x2, 4
	mov	x1, x20
	add	x0, sp, 152
.LEHB74:
	bl	_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [x21]
	ldr	x20, [sp, 160]
	cmp	x0, x2
	bne	.L1465
.L1461:
	ldr	w0, [sp, 124]
	mov	w3, 48
	ldr	x2, [x19, 192]
	uxtw	x1, w0
	ldr	w4, [x20, -4]
	str	w4, [sp, 120]
	umaddl	x0, w0, w3, x2
	strb	wzr, [sp, 184]
	str	x0, [sp, 176]
	cbnz	w28, .L1612
	cbnz	w26, .L1470
.L1625:
	ldr	x2, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x1, x1, x2, x0
	add	x3, x3, x1
.L1471:
	ldr	w0, [x3]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1613
	ldp	x2, x7, [sp, 152]
	mov	x1, 1
	sub	x5, x7, x2
	sub	x6, x2, #4
	asr	x5, x5, 2
	strh	w5, [x3]
	cbnz	x5, .L1473
	b	.L1478
	.p2align 2,,3
.L1530:
	mov	x1, x0
.L1473:
	ldr	w0, [x3, x1, lsl 2]
	cmp	w0, 0
	ccmp	w28, 0, 0, ne
	beq	.L1614
	ldr	w0, [x6, x1, lsl 2]
	ldr	x4, [x19, 272]
	ldr	w4, [x4, w0, uxtw 2]
	cmp	w26, w4
	bgt	.L1615
	str	w0, [x3, x1, lsl 2]
	add	x0, x1, 1
	cmp	x5, x1
	bne	.L1530
.L1478:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1616
.L1475:
	cmp	x2, x7
	beq	.L1480
	sub	w0, w26, #1
	add	x1, x19, 192
	mov	x24, 0
	sxtw	x0, w0
	stp	x1, x0, [sp, 104]
	b	.L1510
	.p2align 2,,3
.L1622:
	ldr	x1, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x1, x4, x1, x2
	add	x20, x20, x1
.L1484:
	ldrh	w2, [x20]
	and	x22, x2, 65535
	cmp	x27, x2, uxth
	bcc	.L1617
	ldr	w1, [sp, 124]
	cmp	w1, w0
	beq	.L1618
	ldr	x0, [x19, 272]
	ldr	w0, [x0, x4, lsl 2]
	cmp	w26, w0
	bgt	.L1619
	add	x21, x20, 4
	cbnz	w28, .L1620
.L1488:
	cmp	x22, x27
	bcs	.L1491
	uxtw	x0, w2
	add	w2, w2, 1
	str	w1, [x21, x0, lsl 2]
	strh	w2, [x20]
.L1489:
	ldr	x0, [sp, 136]
	cbz	x0, .L1509
	ldr	x1, [sp, 96]
	cbz	x1, .L1509
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1509:
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcs	.L1480
.L1510:
	ldr	x1, [sp, 104]
	mov	w3, 48
	ldr	w0, [x2, x24, lsl 2]
	lsl	x25, x24, 2
	strb	wzr, [sp, 144]
	ldr	x1, [x1]
	umaddl	x0, w0, w3, x1
	str	x0, [sp, 136]
	cbz	x0, .L1621
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	str	x1, [sp, 96]
	cbz	x1, .L1482
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1602
	ldr	x2, [sp, 152]
.L1482:
	mov	w0, 1
	strb	w0, [sp, 144]
	ldr	w0, [x2, x25]
	uxtw	x4, w0
	cbz	w26, .L1622
	ldr	x1, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x1, [x1, x4, lsl 3]
	ldr	x2, [sp, 112]
	madd	x20, x2, x20, x1
	b	.L1484
.L1610:
	lsl	x22, x0, 2
	mov	x0, x22
	bl	_Znwm
.LEHE74:
	ldp	x23, x2, [sp, 152]
	mov	x20, x0
	sub	x2, x2, x23
	cmp	x2, 0
	bgt	.L1623
	cbnz	x23, .L1459
.L1460:
	add	x0, x20, x22
	stp	x20, x20, [sp, 152]
	str	x0, [sp, 168]
	ldp	x2, x1, [x21]
	b	.L1457
.L1623:
	mov	x1, x23
	bl	memmove
.L1459:
	mov	x0, x23
	bl	_ZdlPv
	b	.L1460
.L1612:
	cbz	x0, .L1624
	adrp	x2, .LC5
	ldr	x2, [x2, #:lo12:.LC5]
	cbz	x2, .L1468
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1469
	ldr	w1, [sp, 124]
.L1468:
	mov	w0, 1
	strb	w0, [sp, 184]
	cbz	w26, .L1625
.L1470:
	ldr	x0, [x19, 264]
	sub	w3, w26, #1
	ldr	x2, [x19, 32]
	sxtw	x3, w3
	ldr	x0, [x0, x1, lsl 3]
	madd	x3, x3, x2, x0
	b	.L1471
	.p2align 2,,3
.L1620:
	cbz	x22, .L1488
	mov	x0, 1
	b	.L1490
	.p2align 2,,3
.L1626:
	add	x3, x0, 1
	cmp	x22, x0
	beq	.L1488
	mov	x0, x3
.L1490:
	ldr	w3, [x20, x0, lsl 2]
	cmp	w1, w3
	bne	.L1626
	b	.L1489
	.p2align 2,,3
.L1491:
	ldr	x3, [x19, 24]
	uxtw	x0, w1
	ldr	x5, [x19, 232]
	ldp	x6, x2, [x19, 304]
	madd	x0, x0, x3, x5
	madd	x3, x3, x4, x5
	ldr	x1, [x19, 256]
	add	x0, x1, x0
	add	x1, x1, x3
.LEHB75:
	blr	x6
.LEHE75:
	add	x0, sp, 176
	add	x3, sp, 124
	add	x2, sp, 128
	mov	x1, 0
	str	s0, [sp, 128]
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
.LEHB76:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x3, x1, [sp, 176]
	sub	x2, x1, x3
	ldr	w7, [x1, -4]
	ldr	s1, [x1, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1492
	.p2align 3,,7
.L1495:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1547
.L1493:
	str	w7, [x4, 4]
	mov	x23, 0
	str	s1, [x4]
	cbz	x22, .L1504
	.p2align 3,,7
.L1505:
	ldr	x1, [sp, 152]
	ldr	w0, [x21]
	ldr	x5, [x19, 24]
	ldr	w1, [x1, x25]
	ldr	x4, [x19, 232]
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x0, x0, x5, x4
	madd	x1, x1, x5, x4
	add	x0, x3, x0
	add	x1, x3, x1
	blr	x6
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 132]
	cmp	x1, x0
	beq	.L1498
	ldr	w7, [x21]
	add	x0, x1, 8
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1499:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1500
	.p2align 3,,7
.L1503:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1548
	add	x23, x23, 1
	str	s0, [x4]
	str	w7, [x4, 4]
	add	x21, x21, 4
	cmp	x22, x23
	bne	.L1505
.L1504:
	mov	x2, x27
	add	x1, sp, 176
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldp	x0, x1, [sp, 176]
	cmp	x1, x0
	beq	.L1535
	mov	x21, 1
	.p2align 3,,7
.L1507:
	ldr	w1, [x0, 4]
	add	x0, sp, 176
	str	w1, [x20, x21, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
	mov	x2, x21
	add	x21, x21, 1
	cmp	x1, x0
	bne	.L1507
	and	w2, w2, 65535
.L1506:
	strh	w2, [x20]
	cbz	x0, .L1508
	bl	_ZdlPv
.L1508:
	ldrb	w0, [sp, 144]
	cbnz	w0, .L1489
	ldp	x2, x0, [sp, 152]
	add	x24, x24, 1
	sub	x0, x0, x2
	cmp	x24, x0, asr 2
	bcc	.L1510
.L1480:
	cbz	x2, .L1453
	mov	x0, x2
	bl	_ZdlPv
.L1453:
	ldr	w0, [sp, 120]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1547:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1495
	mov	x4, x5
	b	.L1493
	.p2align 2,,3
.L1548:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1503
	mov	x4, x5
	add	x23, x23, 1
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1505
	b	.L1504
	.p2align 2,,3
.L1498:
	mov	x3, x21
	add	x2, sp, 132
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE76:
	ldr	x0, [sp, 184]
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1499
.L1500:
	sub	x0, x2, #8
	add	x23, x23, 1
	add	x4, x3, x0
	add	x21, x21, 4
	str	s0, [x4]
	str	w7, [x4, 4]
	cmp	x22, x23
	bne	.L1505
	b	.L1504
.L1616:
	ldr	x0, [sp, 176]
	cbz	x0, .L1475
	adrp	x1, .LC5
	ldr	x1, [x1, #:lo12:.LC5]
	cbz	x1, .L1475
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x2, x7, [sp, 152]
	b	.L1475
.L1535:
	mov	w2, 0
	b	.L1506
.L1492:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1493
.L1469:
.LEHB77:
	bl	_ZSt20__throw_system_errori
.LEHE77:
.L1609:
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
.LEHB78:
	bl	_ZSt20__throw_length_errorPKc
.L1602:
	bl	_ZSt20__throw_system_errori
.LEHE78:
.L1624:
	mov	w0, 1
.LEHB79:
	bl	_ZSt20__throw_system_errori
.LEHE79:
	.p2align 2,,3
.L1621:
	mov	w0, 1
.LEHB80:
	bl	_ZSt20__throw_system_errori
.LEHE80:
.L1542:
	mov	x19, x0
.L1514:
	ldrb	w0, [sp, 184]
	cbz	w0, .L1518
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1518:
	ldr	x0, [sp, 152]
	cbz	x0, .L1526
	bl	_ZdlPv
.L1526:
	mov	x0, x19
.LEHB81:
	bl	_Unwind_Resume
.LEHE81:
.L1617:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC25
	mov	x20, x0
	add	x1, x1, :lo12:.LC25
.LEHB82:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE82:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB83:
	bl	__cxa_throw
.LEHE83:
.L1618:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC26
	mov	x20, x0
	add	x1, x1, :lo12:.LC26
.LEHB84:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE84:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB85:
	bl	__cxa_throw
.LEHE85:
.L1541:
.L1606:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L1520:
	ldrb	w0, [sp, 144]
	cbz	w0, .L1518
	add	x0, sp, 136
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1518
.L1540:
	b	.L1606
.L1537:
	mov	x19, x0
	b	.L1520
.L1538:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1520
	mov	x0, x1
	bl	_ZdlPv
	b	.L1520
.L1536:
	mov	x19, x0
	b	.L1518
.L1613:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC22
	mov	x20, x0
	add	x1, x1, :lo12:.LC22
.LEHB86:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE86:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB87:
	bl	__cxa_throw
.LEHE87:
.L1545:
.L1605:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L1514
.L1608:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC21
	mov	x19, x0
	add	x1, x1, :lo12:.LC21
.LEHB88:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE88:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB89:
	bl	__cxa_throw
.LEHE89:
.L1614:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC23
	mov	x20, x0
	add	x1, x1, :lo12:.LC23
.LEHB90:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE90:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB91:
	bl	__cxa_throw
.LEHE91:
.L1619:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB92:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE92:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB93:
	bl	__cxa_throw
.LEHE93:
.L1615:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC24
	mov	x20, x0
	add	x1, x1, :lo12:.LC24
.LEHB94:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE94:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB95:
	bl	__cxa_throw
.LEHE95:
.L1546:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB96:
	bl	_Unwind_Resume
.LEHE96:
.L1539:
	b	.L1606
.L1544:
	b	.L1605
.L1543:
	b	.L1605
	.cfi_endproc
.LFE13111:
	.section	.gcc_except_table
.LLSDA13111:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13111-.LLSDACSB13111
.LLSDACSB13111:
	.uleb128 .LEHB73-.LFB13111
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB13111
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L1536-.LFB13111
	.uleb128 0
	.uleb128 .LEHB75-.LFB13111
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L1537-.LFB13111
	.uleb128 0
	.uleb128 .LEHB76-.LFB13111
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L1538-.LFB13111
	.uleb128 0
	.uleb128 .LEHB77-.LFB13111
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L1542-.LFB13111
	.uleb128 0
	.uleb128 .LEHB78-.LFB13111
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L1536-.LFB13111
	.uleb128 0
	.uleb128 .LEHB79-.LFB13111
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L1542-.LFB13111
	.uleb128 0
	.uleb128 .LEHB80-.LFB13111
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L1536-.LFB13111
	.uleb128 0
	.uleb128 .LEHB81-.LFB13111
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB82-.LFB13111
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L1541-.LFB13111
	.uleb128 0
	.uleb128 .LEHB83-.LFB13111
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L1537-.LFB13111
	.uleb128 0
	.uleb128 .LEHB84-.LFB13111
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L1540-.LFB13111
	.uleb128 0
	.uleb128 .LEHB85-.LFB13111
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L1537-.LFB13111
	.uleb128 0
	.uleb128 .LEHB86-.LFB13111
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L1545-.LFB13111
	.uleb128 0
	.uleb128 .LEHB87-.LFB13111
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L1542-.LFB13111
	.uleb128 0
	.uleb128 .LEHB88-.LFB13111
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L1546-.LFB13111
	.uleb128 0
	.uleb128 .LEHB89-.LFB13111
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB13111
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1544-.LFB13111
	.uleb128 0
	.uleb128 .LEHB91-.LFB13111
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1542-.LFB13111
	.uleb128 0
	.uleb128 .LEHB92-.LFB13111
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1539-.LFB13111
	.uleb128 0
	.uleb128 .LEHB93-.LFB13111
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1537-.LFB13111
	.uleb128 0
	.uleb128 .LEHB94-.LFB13111
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1543-.LFB13111
	.uleb128 0
	.uleb128 .LEHB95-.LFB13111
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L1542-.LFB13111
	.uleb128 0
	.uleb128 .LEHB96-.LFB13111
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
.LLSDACSE13111:
	.text
	.size	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0, .-_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi.str1.8,"aMS",@progbits,1
	.align	3
.LC27:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.type	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, %function
_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi:
.LFB11786:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11786
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	ldr	x0, [x0, 112]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	mov	x21, x8
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	x26, x2
	stp	x27, x28, [sp, 80]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	uxtw	x28, w3
	str	d8, [sp, 96]
	.cfi_offset 72, -112
	str	w3, [sp, 120]
	str	w1, [sp, 140]
.LEHB97:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE97:
	ldr	w2, [sp, 140]
	ldrh	w23, [x0]
	stp	x0, x0, [sp, 120]
	ldr	x22, [x0, 8]
	stp	xzr, xzr, [sp, 176]
	ldr	x0, [x19, 24]
	str	xzr, [sp, 192]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	stp	xzr, xzr, [x21]
	add	x0, x0, x1
	str	xzr, [x21, 16]
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L1628
	ldr	x1, [x19, 232]
	mov	x0, x26
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB98:
	blr	x4
	ldp	x1, x0, [x21, 8]
	str	s0, [sp, 120]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L1629
	ldr	w7, [sp, 140]
	fmov	s2, s0
	str	s0, [x1]
	add	x0, x1, 8
	str	w7, [x1, 4]
	str	x0, [x21, 8]
.L1630:
	ldr	x3, [x21]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1631
	.p2align 3,,7
.L1634:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L1704
.L1632:
	ldp	x1, x0, [sp, 184]
	fneg	s1, s8
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L1635
.L1756:
	ldr	w9, [sp, 140]
	add	x5, x1, 8
	str	s1, [x1]
	mov	w8, w9
	str	w9, [x1, 4]
	str	x5, [sp, 184]
.L1636:
	ldr	x0, [sp, 176]
	sub	x3, x5, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1637
	.p2align 3,,7
.L1640:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L1705
.L1638:
	str	w9, [x4, 4]
	str	s1, [x4]
.L1641:
	strh	w23, [x22, w8, uxtw 1]
	cmp	x0, x5
	beq	.L1755
	sub	w1, w28, #1
	sxtw	x1, w1
	str	x1, [sp, 120]
	.p2align 3,,7
.L1679:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L1707
	b	.L1647
	.p2align 2,,3
.L1704:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1634
	mov	x4, x5
	fneg	s1, s8
	ldp	x1, x0, [sp, 184]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 160]
	cmp	x1, x0
	bne	.L1756
.L1635:
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE98:
	ldr	x5, [sp, 184]
	ldr	w8, [sp, 140]
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	b	.L1636
	.p2align 2,,3
.L1705:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1640
	mov	x4, x6
	b	.L1638
	.p2align 2,,3
.L1707:
	ldp	x2, x0, [x21]
	ldr	x1, [x19, 72]
	sub	x0, x0, x2
	cmp	x1, x0, asr 3
	beq	.L1755
.L1647:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x0, [x19, 192]
	mov	w1, 48
	strb	wzr, [sp, 168]
	uxtw	x25, w20
	umaddl	x0, w20, w1, x0
	str	x0, [sp, 160]
	cbz	x0, .L1757
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1651
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1758
.L1651:
	mov	w0, 1
	strb	w0, [sp, 168]
	cbnz	w28, .L1652
	ldr	x1, [x19, 24]
	ldr	x0, [x19, 240]
	ldr	x24, [x19, 256]
	madd	x25, x25, x1, x0
	add	x24, x24, x25
	ldrh	w25, [x24]
	cbz	x25, .L1654
.L1762:
	mov	x20, 0
	b	.L1655
	.p2align 2,,3
.L1759:
	fcmpe	s0, s8
	bmi	.L1659
.L1658:
	cmp	x25, x20
	beq	.L1656
.L1655:
	add	x20, x20, 1
	ldr	w0, [x24, x20, lsl 2]
	str	w0, [sp, 148]
	uxtw	x1, w0
	ubfiz	x0, x0, 1, 32
	ldrh	w2, [x22, x0]
	cmp	w2, w23
	beq	.L1658
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w23, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x26
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB99:
	blr	x3
	ldp	x0, x6, [x21]
	str	s0, [sp, 152]
	ldr	x1, [x19, 72]
	sub	x0, x6, x0
	cmp	x1, x0, asr 3
	bls	.L1759
.L1659:
	ldp	x1, x0, [sp, 184]
	fneg	s0, s0
	str	s0, [sp, 156]
	cmp	x1, x0
	beq	.L1662
	ldr	w7, [sp, 148]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 184]
.L1663:
	ldr	x4, [sp, 176]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L1664
	.p2align 3,,7
.L1667:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x1, x4, x3
	add	x5, x4, x0
	ldr	s1, [x4, x3]
	fcmpe	s1, s0
	bmi	.L1708
.L1665:
	ldr	x3, [x19, 24]
	uxtw	x0, w7
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	str	w8, [x5, 4]
	madd	x0, x0, x3, x2
	str	s0, [x5]
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1668
	ldr	x2, [x21]
	sub	x9, x6, x2
	asr	x9, x9, 3
.L1669:
	ldr	x0, [x19, 72]
	cmp	x0, x9
	bcc	.L1760
.L1676:
	cmp	x2, x6
	beq	.L1658
	ldr	s8, [x2]
	cmp	x25, x20
	bne	.L1655
.L1656:
	ldrb	w0, [sp, 168]
	cbnz	w0, .L1654
.L1677:
	ldp	x0, x1, [sp, 176]
	cmp	x0, x1
	bne	.L1679
.L1649:
	ldr	x19, [x19, 112]
	strb	wzr, [sp, 168]
	add	x0, x19, 80
	str	x0, [sp, 160]
	cbz	x27, .L1680
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1761
.L1680:
	ldp	x0, x1, [x19, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x0, x1
	beq	.L1681
	ldr	x1, [sp, 128]
	str	x1, [x0, -8]!
	str	x0, [x19, 16]
.L1682:
	ldr	x0, [sp, 160]
	cbz	x0, .L1685
	cbz	x27, .L1685
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1685:
	ldr	x0, [sp, 176]
	cbz	x0, .L1627
	bl	_ZdlPv
.L1627:
	mov	x0, x21
	ldr	d8, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1708:
	.cfi_restore_state
	sub	x3, x2, #1
	ldr	w9, [x1, 4]
	str	s1, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w9, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L1667
	mov	x5, x1
	b	.L1665
	.p2align 2,,3
.L1760:
	mov	x0, x21
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x6, [x21]
	b	.L1676
	.p2align 2,,3
.L1668:
	ldr	x0, [x21, 16]
	cmp	x0, x6
	beq	.L1670
	ldr	s1, [sp, 152]
	add	x6, x6, 8
	str	w7, [x6, -4]
	str	s1, [x6, -8]
	str	x6, [x21, 8]
.L1671:
	ldr	x2, [x21]
	sub	x3, x6, x2
	asr	x9, x3, 3
	sub	x0, x9, #2
	sub	x1, x9, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1672
	.p2align 3,,7
.L1675:
	lsl	x3, x0, 3
	lsl	x1, x1, 3
	add	x5, x2, x3
	add	x4, x2, x1
	ldr	s0, [x2, x3]
	fcmpe	s0, s1
	bmi	.L1709
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1669
	.p2align 2,,3
.L1709:
	sub	x3, x0, #1
	ldr	w8, [x5, 4]
	str	s0, [x2, x1]
	mov	x1, x0
	add	x3, x3, x3, lsr 63
	str	w8, [x4, 4]
	asr	x0, x3, 1
	cmp	x1, 0
	bgt	.L1675
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1669
	.p2align 2,,3
.L1662:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 184]
	ldr	w7, [sp, 148]
	ldr	x6, [x21, 8]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1663
	.p2align 2,,3
.L1652:
	ldr	x0, [x19, 264]
	ldr	x24, [x19, 32]
	ldr	x0, [x0, x25, lsl 3]
	ldr	x1, [sp, 120]
	madd	x24, x1, x24, x0
	ldrh	w25, [x24]
	cbnz	x25, .L1762
.L1654:
	ldr	x0, [sp, 160]
	cbz	x0, .L1677
	cbz	x27, .L1677
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L1677
.L1670:
	mov	x1, x6
	add	x3, sp, 148
	add	x2, sp, 152
	mov	x0, x21
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE99:
	ldr	x6, [x21, 8]
	ldr	w7, [x6, -4]
	ldr	s1, [x6, -8]
	b	.L1671
.L1664:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L1665
.L1672:
	sub	x3, x3, #8
	add	x4, x2, x3
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1669
.L1755:
	adrp	x0, .LC5
	ldr	x27, [x0, #:lo12:.LC5]
	b	.L1649
.L1628:
	mvni	v0.2s, 0x80, lsl 16
	add	x3, sp, 140
	add	x2, sp, 160
	add	x0, sp, 176
	mov	x1, 0
	str	s0, [sp, 160]
.LEHB100:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE100:
	ldp	x0, x5, [sp, 176]
	sub	x3, x5, x0
	ldr	w9, [x5, -4]
	ldr	s1, [x5, -8]
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L1642
.L1645:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x6, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s1, s0
	bgt	.L1706
.L1643:
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1641
	.p2align 2,,3
.L1706:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L1645
	mov	x4, x6
	ldr	w8, [sp, 140]
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x4]
	str	w9, [x4, 4]
	b	.L1641
.L1681:
	add	x20, x19, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x19, 48]
	ldp	x3, x22, [x20, 16]
	ldr	x1, [x19, 72]
	sub	x4, x4, x6
	sub	x1, x1, x22
	sub	x3, x3, x0
	asr	x0, x4, 3
	asr	x1, x1, 3
	sub	x1, x1, #1
	add	x0, x0, x1, lsl 6
	add	x0, x0, x3, asr 3
	cmp	x0, x5
	beq	.L1763
	ldr	x0, [x19]
	cmp	x22, x0
	beq	.L1764
.L1684:
	mov	x0, 512
.LEHB101:
	bl	_Znwm
.LEHE101:
	ldrb	w1, [sp, 168]
	str	x0, [x22, -8]
	ldr	x0, [x19, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x2, [x20, 24]
	str	x0, [x20, 8]
	add	x2, x0, 512
	str	x2, [x20, 16]
	add	x2, x0, 504
	str	x2, [x19, 16]
	ldr	x2, [sp, 128]
	str	x2, [x0, 504]
	cbz	w1, .L1685
	b	.L1682
	.p2align 2,,3
.L1629:
	add	x3, sp, 140
	add	x2, sp, 156
	mov	x0, x21
.LEHB102:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE102:
	ldr	x0, [x21, 8]
	ldr	s8, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L1630
.L1764:
	mov	x0, x19
	mov	x1, 1
.LEHB103:
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE103:
	ldr	x22, [x19, 40]
	b	.L1684
.L1637:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1638
.L1631:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1632
.L1642:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L1643
.L1758:
.LEHB104:
	bl	_ZSt20__throw_system_errori
.L1757:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE104:
.L1763:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB105:
	bl	_ZSt20__throw_length_errorPKc
.LEHE105:
.L1761:
.LEHB106:
	bl	_ZSt20__throw_system_errori
.LEHE106:
.L1702:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1690
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1690
.L1703:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L1690
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L1690:
	ldr	x0, [sp, 176]
	cbz	x0, .L1693
	bl	_ZdlPv
.L1693:
	ldr	x0, [x21]
	cbz	x0, .L1694
	bl	_ZdlPv
.L1694:
	mov	x0, x19
.LEHB107:
	bl	_Unwind_Resume
.LEHE107:
.L1701:
	mov	x19, x0
	b	.L1690
	.cfi_endproc
.LFE11786:
	.section	.gcc_except_table
.LLSDA11786:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11786-.LLSDACSB11786
.LLSDACSB11786:
	.uleb128 .LEHB97-.LFB11786
	.uleb128 .LEHE97-.LEHB97
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB98-.LFB11786
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1701-.LFB11786
	.uleb128 0
	.uleb128 .LEHB99-.LFB11786
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1702-.LFB11786
	.uleb128 0
	.uleb128 .LEHB100-.LFB11786
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1701-.LFB11786
	.uleb128 0
	.uleb128 .LEHB101-.LFB11786
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1703-.LFB11786
	.uleb128 0
	.uleb128 .LEHB102-.LFB11786
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1701-.LFB11786
	.uleb128 0
	.uleb128 .LEHB103-.LFB11786
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1703-.LFB11786
	.uleb128 0
	.uleb128 .LEHB104-.LFB11786
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1701-.LFB11786
	.uleb128 0
	.uleb128 .LEHB105-.LFB11786
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1703-.LFB11786
	.uleb128 0
	.uleb128 .LEHB106-.LFB11786
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1701-.LFB11786
	.uleb128 0
	.uleb128 .LEHB107-.LFB11786
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
.LLSDACSE11786:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi, .-_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii.str1.8,"aMS",@progbits,1
	.align	3
.LC28:
	.string	"Level of item to be updated cannot be bigger than max level"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.type	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, %function
_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii:
.LFB11840:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11840
	stp	x29, x30, [sp, -208]!
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	mov	x23, x1
	mov	w24, w2
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	mov	w26, w3
	stp	x27, x28, [sp, 80]
	str	d8, [sp, 96]
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	.cfi_offset 72, -112
	stp	w5, w4, [sp, 116]
	str	w2, [sp, 124]
	cmp	w4, w5
	bge	.L1766
	mov	x0, x1
	uxtw	x21, w2
	ldr	x1, [x19, 24]
	add	x28, x19, 192
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x21, x1, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB108:
	blr	x3
.LEHE108:
	fmov	s8, s0
.L1779:
	ldr	w0, [sp, 116]
	sub	w0, w0, #1
	sxtw	x0, w0
	mov	x27, x0
	.p2align 3,,7
.L1777:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 184]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 176]
	cbz	x0, .L1862
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1768
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1863
.L1768:
	mov	w0, 1
	strb	w0, [sp, 184]
	ldr	w0, [sp, 116]
	cbnz	w0, .L1769
	ldr	x0, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x20, [x19, 256]
	madd	x0, x21, x0, x1
	add	x20, x20, x0
	ldrh	w22, [x20]
	cbz	w22, .L1771
.L1866:
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L1774:
	ldr	w21, [x20]
	mov	x0, x23
	ldr	x5, [x19, 24]
	uxtw	x1, w21
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB109:
	blr	x3
.LEHE109:
	fcmpe	s0, s8
	bmi	.L1818
.L1772:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1774
	ldrb	w0, [sp, 184]
	cbnz	w0, .L1864
.L1775:
	cbz	w25, .L1809
.L1865:
	uxtw	x21, w24
	b	.L1777
	.p2align 2,,3
.L1864:
	ldr	x0, [sp, 176]
	cbz	x0, .L1775
.L1810:
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L1775
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L1865
.L1809:
	ldp	w0, w1, [sp, 116]
	sub	w0, w0, #1
	str	w0, [sp, 116]
	cmp	w1, w0
	beq	.L1778
	uxtw	x21, w24
	b	.L1779
	.p2align 2,,3
.L1818:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L1772
	.p2align 2,,3
.L1769:
	ldr	x0, [x19, 264]
	ldr	x20, [x19, 32]
	ldr	x0, [x0, x21, lsl 3]
	madd	x20, x27, x20, x0
	ldrh	w22, [x20]
	cbnz	w22, .L1866
.L1771:
	ldr	x0, [sp, 176]
	cbz	x0, .L1809
	mov	w25, 0
	b	.L1810
.L1766:
	bgt	.L1780
.L1778:
	ldr	w0, [sp, 120]
	tbnz	w0, #31, .L1765
	.p2align 3,,7
.L1781:
	ldr	w3, [sp, 120]
	mov	x2, x23
	mov	x0, x19
	add	x8, sp, 144
	mov	w1, w24
.LEHB110:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE110:
	stp	xzr, xzr, [sp, 176]
	ldp	x2, x0, [sp, 144]
	str	xzr, [sp, 192]
	cmp	x2, x0
	beq	.L1782
	.p2align 3,,7
.L1790:
	ldr	w0, [x2, 4]
	cmp	w0, w26
	beq	.L1783
	ldp	x1, x0, [sp, 184]
	cmp	x1, x0
	beq	.L1784
	ldr	x0, [x2]
	str	x0, [x1], 8
	str	x1, [sp, 184]
.L1785:
	ldr	x3, [sp, 176]
	ldr	w7, [x1, -4]
	sub	x2, x1, x3
	ldr	s1, [x1, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1786
	.p2align 3,,7
.L1789:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s1, s0
	bgt	.L1819
.L1787:
	str	w7, [x4, 4]
	str	s1, [x4]
.L1783:
	add	x0, sp, 144
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x2, x0, [sp, 144]
	cmp	x0, x2
	bne	.L1790
	ldp	x1, x0, [sp, 176]
	cmp	x0, x1
	beq	.L1791
	ldr	w2, [sp, 124]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	ldr	x1, [x19, 240]
	add	x0, x3, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L1793
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB111:
	blr	x4
	ldp	x1, x0, [sp, 184]
	str	s0, [sp, 140]
	cmp	x1, x0
	beq	.L1794
	ldr	w8, [sp, 124]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 184]
.L1795:
	ldr	x3, [sp, 176]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L1796
	.p2align 3,,7
.L1799:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1820
.L1797:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L1867
.L1793:
	ldr	w3, [sp, 120]
	add	x2, sp, 176
	mov	w1, w26
	mov	x0, x19
	mov	w4, 1
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
	ldr	x1, [sp, 176]
	mov	w24, w0
.L1791:
	cbz	x1, .L1860
	mov	x0, x1
	bl	_ZdlPv
.L1860:
	ldr	x2, [sp, 144]
.L1782:
	cbz	x2, .L1801
	mov	x0, x2
	bl	_ZdlPv
.L1801:
	ldr	w0, [sp, 120]
	sub	w0, w0, #1
	str	w0, [sp, 120]
	cmn	w0, #1
	bne	.L1781
.L1765:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldr	d8, [sp, 96]
	ldp	x29, x30, [sp], 208
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1819:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1789
	mov	x4, x5
	b	.L1787
	.p2align 2,,3
.L1820:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L1799
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L1793
.L1867:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L1793
	.p2align 2,,3
.L1784:
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x1, [sp, 184]
	b	.L1785
.L1786:
	sub	x2, x2, #8
	add	x4, x3, x2
	b	.L1787
.L1794:
	add	x3, sp, 124
	add	x2, sp, 140
	add	x0, sp, 176
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE111:
	ldr	x0, [sp, 184]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L1795
.L1796:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L1797
.L1863:
.LEHB112:
	bl	_ZSt20__throw_system_errori
.L1862:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE112:
.L1780:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC28
	mov	x19, x0
	add	x1, x1, :lo12:.LC28
.LEHB113:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE113:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB114:
	bl	__cxa_throw
.LEHE114:
.L1817:
	ldr	x1, [sp, 176]
	mov	x19, x0
	cbz	x1, .L1807
	mov	x0, x1
	bl	_ZdlPv
.L1807:
	ldr	x0, [sp, 144]
	cbz	x0, .L1861
	bl	_ZdlPv
	b	.L1861
.L1815:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L1861
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L1861
.L1816:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
.L1861:
	mov	x0, x19
.LEHB115:
	bl	_Unwind_Resume
.LEHE115:
	.cfi_endproc
.LFE11840:
	.section	.gcc_except_table
.LLSDA11840:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11840-.LLSDACSB11840
.LLSDACSB11840:
	.uleb128 .LEHB108-.LFB11840
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB11840
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1815-.LFB11840
	.uleb128 0
	.uleb128 .LEHB110-.LFB11840
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB11840
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1817-.LFB11840
	.uleb128 0
	.uleb128 .LEHB112-.LFB11840
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB11840
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1816-.LFB11840
	.uleb128 0
	.uleb128 .LEHB114-.LFB11840
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB11840
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE11840:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii, .-_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm:
.LFB12687:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12687
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x19, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -16
	.cfi_offset 22, -8
	mov	x21, x0
	cmp	x1, 1
	beq	.L1890
	mov	x20, x2
	mov	x0, 1152921504606846975
	cmp	x1, x0
	bhi	.L1891
	lsl	x22, x1, 3
	mov	x0, x22
.LEHB116:
	bl	_Znwm
	mov	x20, x0
	mov	x2, x22
	mov	w1, 0
	bl	memset
	add	x8, x21, 48
.L1870:
	ldr	x4, [x21, 16]
	str	xzr, [x21, 16]
	cbz	x4, .L1872
	add	x7, x21, 16
	mov	x6, 0
	.p2align 3,,7
.L1873:
	ldr	w5, [x4, 8]
	mov	x3, x4
	ldr	x4, [x4]
	udiv	x2, x5, x19
	msub	x2, x2, x19, x5
	ldr	x1, [x20, x2, lsl 3]
	cbz	x1, .L1892
	ldr	x0, [x1]
	str	x0, [x3]
	ldr	x0, [x20, x2, lsl 3]
	str	x3, [x0]
	cbnz	x4, .L1873
.L1872:
	ldr	x0, [x21]
	cmp	x0, x8
	beq	.L1876
	bl	_ZdlPv
.L1876:
	stp	x20, x19, [x21]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 48
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1892:
	.cfi_restore_state
	ldr	x0, [x21, 16]
	str	x0, [x3]
	str	x3, [x21, 16]
	str	x7, [x20, x2, lsl 3]
	ldr	x0, [x3]
	cbz	x0, .L1879
	str	x3, [x20, x6, lsl 3]
	mov	x6, x2
	cbnz	x4, .L1873
	b	.L1872
	.p2align 2,,3
.L1879:
	mov	x6, x2
	cbnz	x4, .L1873
	b	.L1872
	.p2align 2,,3
.L1890:
	mov	x20, x0
	str	xzr, [x20, 48]!
	mov	x8, x20
	b	.L1870
.L1891:
	bl	_ZSt17__throw_bad_allocv
.LEHE116:
.L1880:
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	str	x0, [x21, 40]
.LEHB117:
	bl	__cxa_rethrow
.LEHE117:
.L1881:
	mov	x19, x0
	bl	__cxa_end_catch
	mov	x0, x19
.LEHB118:
	bl	_Unwind_Resume
.LEHE118:
	.cfi_endproc
.LFE12687:
	.section	.gcc_except_table
	.align	2
.LLSDA12687:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT12687-.LLSDATTD12687
.LLSDATTD12687:
	.byte	0x1
	.uleb128 .LLSDACSE12687-.LLSDACSB12687
.LLSDACSB12687:
	.uleb128 .LEHB116-.LFB12687
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1880-.LFB12687
	.uleb128 0x1
	.uleb128 .LEHB117-.LFB12687
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1881-.LFB12687
	.uleb128 0
	.uleb128 .LEHB118-.LFB12687
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
.LLSDACSE12687:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT12687:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,"axG",@progbits,_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.type	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, %function
_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0:
.LFB13132:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13132
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	mov	x24, x1
	ldr	w1, [x1]
	ldr	x7, [x0, 8]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	uxtw	x20, w1
	mov	x19, x0
	str	x25, [sp, 64]
	.cfi_offset 25, -32
	mov	x25, x2
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	ldr	x2, [x0]
	udiv	x0, x20, x7
	msub	x0, x0, x7, x20
	lsl	x22, x0, 3
	ldr	x8, [x2, x0, lsl 3]
	cbz	x8, .L1894
	ldr	x4, [x8]
	ldr	w5, [x4, 8]
	cmp	w1, w5
	beq	.L1895
.L1919:
	ldr	x6, [x4]
	cbz	x6, .L1894
	ldr	w5, [x6, 8]
	mov	x8, x4
	uxtw	x9, w5
	udiv	x4, x9, x7
	msub	x4, x4, x7, x9
	cmp	x0, x4
	bne	.L1894
	mov	x4, x6
	cmp	w1, w5
	bne	.L1919
.L1895:
	ldr	x0, [x8]
	mov	x21, 0
	cbz	x0, .L1894
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1894:
	.cfi_restore_state
	mov	x0, 16
.LEHB119:
	bl	_Znwm
.LEHE119:
	ldr	w4, [x24]
	mov	x23, x0
	ldr	x1, [x19, 8]
	mov	x3, x25
	ldr	x2, [x19, 24]
	add	x0, x19, 32
	ldr	x5, [x19, 40]
	str	xzr, [x23]
	str	w4, [x23, 8]
	str	x5, [sp, 88]
.LEHB120:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm
	tst	w0, 255
	bne	.L1920
	ldr	x0, [x19]
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbz	x1, .L1899
.L1921:
	ldr	x1, [x1]
	str	x1, [x23]
	ldr	x0, [x0, x22]
	str	x23, [x0]
.L1900:
	ldr	x1, [x19, 24]
	mov	x2, 1
	bfi	x21, x2, 0, 8
	mov	x0, x23
	add	x1, x1, x2
	str	x1, [x19, 24]
	mov	x1, x21
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L1920:
	.cfi_restore_state
	add	x2, sp, 88
	mov	x0, x19
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm
.LEHE120:
	ldr	x0, [x19, 8]
	udiv	x22, x20, x0
	msub	x22, x22, x0, x20
	ldr	x0, [x19]
	lsl	x22, x22, 3
	add	x2, x0, x22
	ldr	x1, [x0, x22]
	cbnz	x1, .L1921
.L1899:
	ldr	x1, [x19, 16]
	str	x1, [x23]
	str	x23, [x19, 16]
	cbz	x1, .L1901
	ldr	w4, [x1, 8]
	ldr	x3, [x19, 8]
	udiv	x1, x4, x3
	msub	x1, x1, x3, x4
	str	x23, [x0, x1, lsl 3]
.L1901:
	add	x0, x19, 16
	str	x0, [x2]
	b	.L1900
.L1904:
	mov	x19, x0
	mov	x0, x23
	bl	_ZdlPv
	mov	x0, x19
.LEHB121:
	bl	_Unwind_Resume
.LEHE121:
	.cfi_endproc
.LFE13132:
	.section	.gcc_except_table
.LLSDA13132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13132-.LLSDACSB13132
.LLSDACSB13132:
	.uleb128 .LEHB119-.LFB13132
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB120-.LFB13132
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1904-.LFB13132
	.uleb128 0
	.uleb128 .LEHB121-.LFB13132
	.uleb128 .LEHE121-.LEHB121
	.uleb128 0
	.uleb128 0
.LLSDACSE13132:
	.section	.text._ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0, .-_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.type	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, %function
_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf:
.LFB11445:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11445
	stp	x29, x30, [sp, -336]!
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	uxtw	x3, w2
	mov	x29, sp
	ldr	x5, [x0, 24]
	stp	d8, d9, [sp, 96]
	.cfi_offset 72, -240
	.cfi_offset 73, -232
	fmov	s8, s0
	ldr	x4, [x0, 232]
	str	w2, [sp, 156]
	ldr	x2, [x0, 296]
	stp	x19, x20, [sp, 16]
	madd	x3, x3, x5, x4
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	mov	x19, x0
	str	x1, [sp, 144]
	ldr	x0, [x0, 256]
	add	x0, x0, x3
	bl	memcpy
	ldr	w2, [x19, 104]
	ldr	w0, [x19, 216]
	ldr	w1, [sp, 156]
	str	w2, [sp, 140]
	str	w0, [sp, 152]
	cmp	w1, w0
	beq	.L2045
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
.L1923:
	ldr	x0, [x19, 272]
	ldr	w25, [x0, w1, uxtw 2]
	tbnz	w25, #31, .L1925
	movi	v9.2s, 0x30, lsl 24
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -296
	.cfi_offset 21, -304
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -280
	.cfi_offset 23, -288
	mov	x24, 0
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -248
	.cfi_offset 27, -256
	str	d10, [sp, 112]
	.cfi_offset 74, -224
	.p2align 3,,7
.L1929:
	add	x5, sp, 272
	add	x4, sp, 328
	fmov	s0, 1.0e+0
	mov	x3, 1
	mov	w28, w24
	add	x8, sp, 168
	mov	w2, w24
	mov	x0, x19
	stp	x5, x3, [sp, 224]
	stp	xzr, xzr, [sp, 240]
	str	s0, [sp, 256]
	stp	xzr, xzr, [sp, 264]
	stp	x4, x3, [sp, 280]
	stp	xzr, xzr, [sp, 296]
	str	s0, [sp, 312]
	stp	xzr, xzr, [sp, 320]
.LEHB122:
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE122:
	ldp	x0, x1, [sp, 168]
	cmp	x0, x1
	bne	.L1926
	cbz	x0, .L1928
.L2040:
	bl	_ZdlPv
.L1928:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	add	x24, x24, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	ldr	w1, [sp, 156]
	cmp	w25, w24
	bge	.L1929
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d10, [sp, 112]
	.cfi_restore 74
.L1925:
	mov	w3, w1
	ldr	w5, [sp, 140]
	ldr	w2, [sp, 152]
	mov	w4, w25
	ldr	x1, [sp, 144]
	mov	x0, x19
.LEHB123:
	bl	_ZN7hnswlib15HierarchicalNSWIfE26repairConnectionsForUpdateEPKvjjii
.LEHE123:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
.L1922:
	ldp	x19, x20, [sp, 16]
	ldp	d8, d9, [sp, 96]
	ldp	x29, x30, [sp], 336
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_restore 73
	.cfi_def_cfa_offset 0
	ret
.L1926:
	.cfi_def_cfa_offset 336
	.cfi_offset 19, -320
	.cfi_offset 20, -312
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 25, -272
	.cfi_offset 26, -264
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	.cfi_offset 72, -240
	.cfi_offset 73, -232
	.cfi_offset 74, -224
	add	x1, sp, 156
	add	x0, sp, 224
	mov	x2, 1
.LEHB124:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldp	x21, x23, [sp, 168]
	cmp	x23, x21
	beq	.L1941
	mov	x27, 5
	mov	w0, 1065353215
	movk	x27, 0x2, lsl 32
	fmov	s10, w0
	.p2align 3,,7
.L1940:
	mov	x1, x21
	add	x0, sp, 224
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	x1, [x19, 432]
	mov	x0, 16807
	movi	v1.2s, #0
	fmov	s2, 1.0e+0
	mul	x1, x1, x0
	umulh	x2, x1, x27
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	str	x0, [x19, 432]
	sub	x0, x0, #1
	ucvtf	s0, x0
	fadd	s0, s0, s1
	fmul	s0, s0, s9
	fcmpe	s0, s2
	bge	.L1985
	fadd	s0, s0, s1
.L1933:
	fcmpe	s8, s0
	bmi	.L1936
	mov	x1, x21
	add	x0, sp, 280
	mov	x2, 1
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
	ldr	w1, [x21]
	add	x8, sp, 192
	mov	w2, w28
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE22getConnectionsWithLockEji
.LEHE124:
	ldp	x0, x22, [sp, 192]
	cmp	x22, x0
	beq	.L1937
	mov	x20, x0
	.p2align 3,,7
.L1938:
	mov	x1, x20
	add	x0, sp, 224
	mov	x2, 1
.LEHB125:
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_insertIRKjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_RKT0_St17integral_constantIbLb1EEm.isra.0
.LEHE125:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L1938
	ldr	x0, [sp, 192]
.L1937:
	cbz	x0, .L1936
	bl	_ZdlPv
	.p2align 3,,7
.L1936:
	add	x21, x21, 4
	cmp	x23, x21
	bne	.L1940
.L1941:
	ldr	x21, [sp, 296]
	cbz	x21, .L1932
	sub	x28, x24, #1
	.p2align 3,,7
.L1931:
	ldp	x2, x4, [sp, 224]
	ldr	w0, [x21, 8]
	uxtw	x1, w0
	udiv	x5, x1, x4
	msub	x5, x5, x4, x1
	ldr	x6, [x2, x5, lsl 3]
	stp	xzr, xzr, [sp, 192]
	str	xzr, [sp, 208]
	cbz	x6, .L2041
	ldr	x1, [x6]
	ldr	w2, [x1, 8]
	cmp	w2, w0
	beq	.L1945
.L2046:
	ldr	x3, [x1]
	cbz	x3, .L2041
	ldr	w2, [x3, 8]
	mov	x6, x1
	uxtw	x7, w2
	udiv	x1, x7, x4
	msub	x1, x1, x4, x7
	cmp	x5, x1
	bne	.L2041
	mov	x1, x3
	cmp	w2, w0
	bne	.L2046
.L1945:
	ldr	x2, [x6]
	ldr	x1, [sp, 248]
	sub	x22, x1, #1
	cbz	x2, .L1944
.L1947:
	ldr	x1, [x19, 72]
	ldr	x20, [sp, 240]
	cmp	x1, x22
	csel	x22, x1, x22, ls
	cbnz	x20, .L1966
	b	.L1948
	.p2align 2,,3
.L1951:
	ldr	s1, [x3]
	fcmpe	s1, s0
	bgt	.L1993
.L1958:
	ldr	x20, [x20]
	cbz	x20, .L1948
.L1950:
	ldr	w0, [x21, 8]
.L1966:
	ldr	w1, [x20, 8]
	add	x23, x20, 8
	cmp	w1, w0
	beq	.L1958
	ldr	x5, [x19, 24]
	uxtw	x1, w1
	ldr	x4, [x19, 232]
	uxtw	x0, w0
	ldp	x6, x2, [x19, 304]
	ldr	x3, [x19, 256]
	madd	x1, x1, x5, x4
	madd	x0, x0, x5, x4
	add	x1, x3, x1
	add	x0, x3, x0
.LEHB126:
	blr	x6
	ldp	x3, x1, [sp, 192]
	str	s0, [sp, 164]
	sub	x0, x1, x3
	cmp	x22, x0, asr 3
	bls	.L1951
	ldr	x0, [sp, 208]
	cmp	x1, x0
	beq	.L1952
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	sub	x2, x0, x3
	str	s0, [x1]
	str	w7, [x1, 4]
	str	x0, [sp, 200]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1954
	.p2align 3,,7
.L1957:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L1992
	str	w7, [x4, 4]
	str	s0, [x4]
.L2049:
	ldr	x20, [x20]
	cbnz	x20, .L1950
.L1948:
	ldp	x3, x2, [x19, 56]
	cmp	x24, 0
	add	x1, sp, 192
	mov	x0, x19
	csel	x2, x3, x2, ne
	bl	_ZN7hnswlib15HierarchicalNSWIfE24getNeighborsByHeuristic2ERSt14priority_queueISt4pairIfjESt6vectorIS4_SaIS4_EENS1_14CompareByFirstEEm
	ldr	w23, [x21, 8]
	mov	w2, 48
	ldr	x1, [x19, 192]
	uxtw	x0, w23
	umaddl	x23, w23, w2, x1
	cbz	x23, .L2047
	adrp	x1, .LC5
	ldr	x27, [x1, #:lo12:.LC5]
	cbz	x27, .L1969
	mov	x0, x23
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L1970
	ldr	w0, [x21, 8]
.L1969:
	cbnz	x24, .L1971
	ldr	x2, [x19, 24]
	ldr	x1, [x19, 240]
	ldr	x22, [x19, 256]
	madd	x0, x0, x2, x1
	add	x22, x22, x0
.L1972:
	ldp	x0, x20, [sp, 192]
	sub	x20, x20, x0
	asr	x20, x20, 3
	strh	w20, [x22]
	cbz	x20, .L1973
	mov	x26, 0
	b	.L1974
	.p2align 2,,3
.L2048:
	ldr	x0, [sp, 192]
.L1974:
	add	x26, x26, 1
	ldr	w2, [x0, 4]
	add	x0, sp, 192
	str	w2, [x22, x26, lsl 2]
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	cmp	x20, x26
	bne	.L2048
.L1973:
	cbz	x27, .L1975
	mov	x0, x23
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L1975:
	ldr	x0, [sp, 192]
	cbz	x0, .L1976
	bl	_ZdlPv
.L1976:
	ldr	x21, [x21]
	cbnz	x21, .L1931
.L1932:
	ldr	x0, [sp, 168]
	cbnz	x0, .L2040
	b	.L1928
	.p2align 2,,3
.L1992:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1957
	mov	x4, x5
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L2049
	.p2align 2,,3
.L1993:
	add	x0, sp, 192
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x0, [sp, 200]
	cmp	x1, x0
	beq	.L1960
	ldr	s1, [sp, 164]
	add	x0, x1, 8
	ldr	w7, [x20, 8]
	str	w7, [x1, 4]
	str	s1, [x1]
	str	x0, [sp, 200]
.L1961:
	ldr	x3, [sp, 192]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L1962
	.p2align 3,,7
.L1965:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s1
	bmi	.L1994
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1958
	.p2align 2,,3
.L1994:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L1965
	mov	x4, x5
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1958
	.p2align 2,,3
.L1971:
	ldr	x1, [x19, 264]
	ldr	x22, [x19, 32]
	ldr	x0, [x1, x0, lsl 3]
	madd	x22, x28, x22, x0
	b	.L1972
.L2041:
	ldr	x1, [sp, 248]
.L1944:
	mov	x22, x1
	b	.L1947
	.p2align 2,,3
.L1952:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldp	x3, x0, [sp, 192]
	sub	x2, x0, x3
	ldr	w7, [x0, -4]
	ldr	s0, [x0, -8]
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	bgt	.L1957
.L1954:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s0, [x4]
	str	w7, [x4, 4]
	b	.L2049
	.p2align 2,,3
.L1960:
	mov	x3, x23
	add	x2, sp, 164
	add	x0, sp, 192
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRKjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 200]
	ldr	w7, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L1961
.L1985:
	fmov	s0, s10
	b	.L1933
.L1962:
	sub	x0, x2, #8
	add	x4, x3, x0
	str	s1, [x4]
	str	w7, [x4, 4]
	b	.L1958
.L2045:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 74
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, 1
	beq	.L1922
	ldr	w1, [sp, 156]
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -264
	.cfi_offset 25, -272
	b	.L1923
.L2047:
	.cfi_offset 21, -304
	.cfi_offset 22, -296
	.cfi_offset 23, -288
	.cfi_offset 24, -280
	.cfi_offset 27, -256
	.cfi_offset 28, -248
	.cfi_offset 74, -224
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.L1970:
	bl	_ZSt20__throw_system_errori
.LEHE126:
.L1991:
.L2044:
	ldr	x1, [sp, 192]
	mov	x19, x0
	cbz	x1, .L1979
	mov	x0, x1
	bl	_ZdlPv
.L1979:
	ldr	x0, [sp, 168]
	cbz	x0, .L1983
	bl	_ZdlPv
.L1983:
	add	x0, sp, 280
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	add	x0, sp, 224
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x19
.LEHB127:
	bl	_Unwind_Resume
.LEHE127:
.L1988:
	mov	x19, x0
	b	.L1983
.L1990:
	b	.L2044
.L1989:
	mov	x19, x0
	b	.L1979
	.cfi_endproc
.LFE11445:
	.section	.gcc_except_table
.LLSDA11445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11445-.LLSDACSB11445
.LLSDACSB11445:
	.uleb128 .LEHB122-.LFB11445
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1988-.LFB11445
	.uleb128 0
	.uleb128 .LEHB123-.LFB11445
	.uleb128 .LEHE123-.LEHB123
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB124-.LFB11445
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1989-.LFB11445
	.uleb128 0
	.uleb128 .LEHB125-.LFB11445
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1990-.LFB11445
	.uleb128 0
	.uleb128 .LEHB126-.LFB11445
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1991-.LFB11445
	.uleb128 0
	.uleb128 .LEHB127-.LFB11445
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
.LLSDACSE11445:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf, .-_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi.str1.8,"aMS",@progbits,1
	.align	3
.LC29:
	.string	"Can't use addPoint to update deleted elements if replacement of deleted elements is enabled."
	.align	3
.LC30:
	.string	"The requested to undelete element is not deleted"
	.align	3
.LC31:
	.string	"The number of elements exceeds the specified limit"
	.align	3
.LC32:
	.string	"Not enough memory: addPoint failed to allocate linklist"
	.align	3
.LC33:
	.string	"cand error"
	.align	3
.LC34:
	.string	"Level error"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi:
.LFB11429:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11429
	stp	x29, x30, [sp, -240]!
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
	adrp	x4, .LC5
	mov	x29, sp
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	ldr	x26, [x4, #:lo12:.LC5]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	mov	x19, x0
	add	x0, x0, 320
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	mov	x23, x1
	str	w3, [sp, 128]
	str	x2, [sp, 152]
	str	x0, [sp, 208]
	strb	wzr, [sp, 216]
	cbz	x26, .L2051
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2291
.L2051:
	ldr	x6, [sp, 152]
	mov	w1, 1
	ldr	x4, [x19, 376]
	strb	w1, [sp, 216]
	ldr	x1, [x19, 368]
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -152
	.cfi_offset 27, -160
	add	x0, x19, 368
	udiv	x5, x6, x4
	msub	x5, x5, x4, x6
	ldr	x7, [x1, x5, lsl 3]
	cbz	x7, .L2052
	ldr	x2, [x7]
	ldr	x1, [x2, 8]
	cmp	x6, x1
	beq	.L2053
.L2292:
	ldr	x3, [x2]
	cbz	x3, .L2052
	ldr	x1, [x3, 8]
	mov	x7, x2
	udiv	x2, x1, x4
	msub	x2, x2, x4, x1
	cmp	x5, x2
	bne	.L2052
	mov	x2, x3
	cmp	x6, x1
	bne	.L2292
.L2053:
	ldr	x1, [x7]
	cbz	x1, .L2052
	ldrb	w0, [x19, 456]
	ldr	w27, [x1, 16]
	uxtw	x20, w27
	cbz	w0, .L2293
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L2294
	ldr	x0, [sp, 208]
	cbz	x0, .L2068
	cbz	x26, .L2061
.L2308:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2061:
	strb	wzr, [sp, 216]
.L2060:
	ldr	x0, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x20, x0, x2
	add	x0, x0, x1
	ldrb	w0, [x0, 2]
	tbz	x0, 0, .L2068
	str	w27, [sp, 192]
	add	x0, x19, 16
	ldar	x0, [x0]
	cmp	x0, x20
	bls	.L2295
	ldr	w1, [sp, 192]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L2064
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2315:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2315
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2296
.L2068:
	fmov	s0, 1.0e+0
	mov	x1, x23
	mov	x0, x19
	mov	w2, w27
.LEHB128:
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
	ldrb	w0, [sp, 216]
	cbnz	w0, .L2297
.L2050:
	mov	w0, w27
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2052:
	.cfi_restore_state
	add	x1, x19, 16
	ldar	x2, [x1]
	ldr	x3, [x19, 8]
	cmp	x3, x2
	bls	.L2298
	ldar	x20, [x1]
	str	x20, [sp, 144]
	mov	w27, w20
.L2314:
	ldaxr	x2, [x1]
	add	x2, x2, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L2314
	add	x1, sp, 152
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
.LEHE128:
	ldrb	w1, [sp, 216]
	str	w20, [x0]
	cbnz	w1, .L2299
.L2073:
	ldr	x2, [sp, 144]
	strb	wzr, [sp, 184]
	ldr	x1, [x19, 192]
	and	x20, x2, 4294967295
	ubfiz	x0, x2, 1, 32
	add	x0, x0, x2, uxtw
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 176]
	cbz	x0, .L2300
	cbz	x26, .L2075
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2301
.L2075:
	ldr	x1, [x19, 424]
	mov	x4, 16807
	mov	x3, 5
	mov	x0, 281474968322048
	movk	x3, 0x2, lsl 32
	movk	x0, 0x41df, lsl 48
	mul	x1, x1, x4
	fmov	d3, x0
	mov	x0, 281474959933440
	movi	d4, #0
	movk	x0, 0x43cf, lsl 48
	fmov	d2, x0
	mov	w0, 1
	strb	w0, [sp, 184]
	umulh	x2, x1, x3
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	fmov	d5, 1.0e+0
	ldr	d8, [x19, 88]
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	sub	x2, x0, #1
	mul	x1, x0, x4
	ucvtf	d0, x2
	umulh	x2, x1, x3
	fadd	d1, d0, d4
	sub	x0, x1, x2
	add	x0, x2, x0, lsr 1
	lsr	x0, x0, 30
	lsl	x2, x0, 31
	sub	x0, x2, x0
	sub	x0, x1, x0
	str	x0, [x19, 424]
	sub	x0, x0, #1
	ucvtf	d0, x0
	fmadd	d0, d0, d3, d1
	fdiv	d0, d0, d2
	fcmpe	d0, d5
	bge	.L2139
	fadd	d0, d0, d4
.L2076:
	bl	log
	ldr	w0, [sp, 128]
	cmp	w0, 0
	bgt	.L2077
	fnmul	d0, d0, d8
	fcvtzs	w0, d0
	str	w0, [sp, 128]
.L2077:
	ldr	x1, [x19, 272]
	add	x0, x19, 144
	ldr	w2, [sp, 128]
	str	w2, [x1, x20, lsl 2]
	str	x0, [sp, 192]
	strb	wzr, [sp, 200]
	cbz	x26, .L2079
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2302
.L2079:
	ldr	w0, [x19, 104]
	mov	w1, w0
	mov	w0, 1
	str	w1, [sp, 136]
	strb	w0, [sp, 200]
	mov	w0, w1
	ldr	w1, [sp, 128]
	cmp	w0, w1
	blt	.L2080
	ldr	x0, [sp, 192]
	cbz	x0, .L2080
	cbz	x26, .L2081
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2081:
	strb	wzr, [sp, 200]
.L2080:
	ldr	x2, [x19, 24]
	mov	w1, 0
	ldr	x0, [x19, 240]
	ldr	x3, [x19, 256]
	madd	x0, x2, x20, x0
	ldr	w24, [x19, 216]
	str	w24, [sp, 168]
	add	x0, x3, x0
	bl	memset
	ldp	x2, x3, [x19, 248]
	mov	x1, x23
	ldr	x0, [x19, 24]
	madd	x0, x20, x0, x3
	ldr	x3, [sp, 152]
	str	x3, [x0, x2]
	ldr	x0, [x19, 24]
	ldr	x4, [x19, 232]
	ldr	x3, [x19, 256]
	ldr	x2, [x19, 296]
	madd	x0, x20, x0, x4
	add	x0, x3, x0
	bl	memcpy
	ldr	w0, [sp, 128]
	cbnz	w0, .L2303
.L2082:
	cmn	w24, #1
	beq	.L2084
	ldr	w0, [sp, 128]
	ldr	w20, [sp, 136]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldr	x4, [x19, 24]
	ldr	x3, [x19, 256]
	cmp	w20, w0
	ble	.L2085
	ldr	x6, [x19, 232]
	uxtw	x1, w24
	ldp	x5, x2, [x19, 304]
	mov	x0, x23
	madd	x1, x1, x4, x6
	add	x1, x3, x1
.LEHB129:
	blr	x5
.LEHE129:
	sxtw	x0, w20
	fmov	s8, s0
	sub	x0, x0, #1
	add	x28, x19, 192
	str	x0, [sp, 120]
	sub	w0, w20, #1
	str	w0, [sp, 132]
	.p2align 3,,7
.L2097:
	ldr	w0, [sp, 132]
	str	w0, [sp, 140]
	.p2align 3,,7
.L2095:
	ldr	x0, [x28]
	mov	w1, 48
	strb	wzr, [sp, 216]
	umaddl	x0, w24, w1, x0
	str	x0, [sp, 208]
	cbz	x0, .L2304
	cbz	x26, .L2087
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2305
.L2087:
	mov	w1, 1
	strb	w1, [sp, 216]
	ldr	x0, [x19, 32]
	ldr	x2, [sp, 120]
	ldr	x1, [x19, 264]
	mul	x0, x2, x0
	ldr	x1, [x1, w24, uxtw 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
	cbz	w22, .L2088
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w25, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L2092:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L2306
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB130:
	blr	x3
.LEHE130:
	fcmpe	s0, s8
	bmi	.L2154
.L2090:
	add	x20, x20, 4
	cmp	x22, x20
	bne	.L2092
	ldrb	w0, [sp, 216]
	cbnz	w0, .L2307
.L2093:
	cbnz	w25, .L2095
.L2136:
	ldr	w0, [sp, 132]
	ldr	w1, [sp, 140]
	sub	w0, w0, #1
	str	w0, [sp, 132]
	ldr	x0, [sp, 120]
	sub	x0, x0, #1
	str	x0, [sp, 120]
	ldr	w0, [sp, 128]
	cmp	w0, w1
	blt	.L2097
	ldr	w0, [sp, 168]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 256]
	ldr	x1, [x19, 240]
	madd	x0, x0, x3, x2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	ldr	w0, [sp, 128]
	and	w21, w21, 1
	tbnz	w0, #31, .L2287
	mov	w20, w0
	b	.L2102
.L2293:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	ldr	x0, [sp, 208]
	cbz	x0, .L2060
	cbnz	x26, .L2308
	b	.L2061
.L2297:
	ldr	x0, [sp, 208]
	cbz	x0, .L2050
	cbz	x26, .L2050
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	mov	w0, w27
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2296:
	.cfi_restore_state
	add	x20, x19, 464
	cbz	x26, .L2066
	mov	x0, x20
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2309
.L2066:
	add	x2, sp, 192
	add	x0, x19, 512
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x26, .L2068
	mov	x0, x20
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2068
.L2299:
	ldr	x0, [sp, 208]
	cbz	x0, .L2073
	cbz	x26, .L2073
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2073
	.p2align 2,,3
.L2307:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x0, [sp, 208]
	cbz	x0, .L2093
.L2137:
	cbz	x26, .L2093
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	cbnz	w25, .L2095
	b	.L2136
	.p2align 2,,3
.L2154:
	fmov	s8, s0
	mov	w24, w21
	mov	w25, 1
	b	.L2090
	.p2align 2,,3
.L2088:
	ldr	x0, [sp, 208]
	cbz	x0, .L2136
	mov	w25, 0
	b	.L2137
.L2085:
	ldr	w0, [sp, 168]
	ldr	x1, [x19, 240]
	ldr	w2, [sp, 136]
	madd	x0, x0, x4, x3
	mov	w20, w2
	add	x0, x0, x1
	ldrb	w21, [x0, 2]
	and	w21, w21, 1
	tbnz	w2, #31, .L2288
	.p2align 3,,7
.L2102:
	mov	w1, w24
	add	x8, sp, 208
	mov	w3, w20
	mov	x2, x23
	mov	x0, x19
.LEHB131:
	bl	_ZN7hnswlib15HierarchicalNSWIfE15searchBaseLayerEjPKvi
.LEHE131:
	cbz	w21, .L2104
	ldr	w1, [sp, 168]
	mov	x0, x23
	ldr	x5, [x19, 24]
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
.LEHB132:
	blr	x3
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 172]
	cmp	x1, x0
	beq	.L2105
	ldr	w8, [sp, 168]
	add	x0, x1, 8
	str	s0, [x1]
	str	w8, [x1, 4]
	str	x0, [sp, 216]
.L2106:
	ldr	x3, [sp, 208]
	sub	x2, x0, x3
	asr	x7, x2, 3
	sub	x0, x7, #2
	sub	x1, x7, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x1, 0
	ble	.L2107
	.p2align 3,,7
.L2110:
	lsl	x2, x0, 3
	lsl	x1, x1, 3
	add	x5, x3, x2
	add	x4, x3, x1
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L2155
.L2108:
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcc	.L2310
.L2104:
	mov	w3, w20
	add	x2, sp, 208
	mov	w1, w27
	mov	x0, x19
	mov	w4, 0
	bl	_ZN7hnswlib15HierarchicalNSWIfE25mutuallyConnectNewElementEPKvjRSt14priority_queueISt4pairIfjESt6vectorIS6_SaIS6_EENS1_14CompareByFirstEEib.isra.0
.LEHE132:
	ldr	x1, [sp, 208]
	mov	w24, w0
	cbz	x1, .L2112
	mov	x0, x1
	bl	_ZdlPv
.L2112:
	subs	w20, w20, #1
	bmi	.L2288
	ldr	w0, [sp, 136]
	cmp	w0, w20
	bge	.L2102
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC34
	mov	x20, x0
	add	x1, x1, :lo12:.LC34
.LEHB133:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE133:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB134:
	bl	__cxa_throw
.LEHE134:
	.p2align 2,,3
.L2155:
	sub	x2, x0, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x1]
	mov	x1, x0
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x0, x2, 1
	cmp	x1, 0
	bgt	.L2110
	mov	x4, x5
	ldr	x0, [x19, 72]
	str	s0, [x4]
	str	w8, [x4, 4]
	cmp	x0, x7
	bcs	.L2104
.L2310:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	b	.L2104
.L2288:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
.L2099:
	ldr	w0, [sp, 128]
	ldr	w1, [sp, 136]
	cmp	w1, w0
	bge	.L2116
	str	w0, [x19, 104]
	ldr	w0, [sp, 144]
	str	w0, [x19, 216]
.L2116:
	ldrb	w0, [sp, 200]
	cbnz	w0, .L2311
.L2117:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L2312
.L2286:
	mov	w0, w27
	ldr	d8, [sp, 96]
	.cfi_remember_state
	.cfi_restore 72
	ldp	x19, x20, [sp, 16]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldp	x29, x30, [sp], 240
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L2312:
	.cfi_restore_state
	ldr	x0, [sp, 176]
	cbz	x0, .L2286
	cbz	x26, .L2286
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldr	d8, [sp, 96]
	.cfi_restore 72
	b	.L2050
.L2105:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	add	x3, sp, 168
	add	x2, sp, 172
	add	x0, sp, 208
.LEHB135:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE135:
	ldr	x0, [sp, 216]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L2106
.L2311:
	.cfi_restore 21
	.cfi_restore 22
	ldr	x0, [sp, 192]
	cbz	x0, .L2117
	cbz	x26, .L2117
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2117
.L2084:
	ldr	w0, [sp, 128]
	str	w0, [x19, 104]
	str	wzr, [x19, 216]
	b	.L2099
.L2303:
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	ldrsw	x21, [sp, 128]
	ldr	x0, [x19, 32]
	ldr	x22, [x19, 264]
	mul	x21, x21, x0
	add	x21, x21, 1
	mov	x0, x21
	bl	malloc
	str	x0, [x22, x20, lsl 3]
	cbz	x0, .L2313
	mov	x2, x21
	mov	w1, 0
	bl	memset
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	b	.L2082
.L2287:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	ldp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 21
	b	.L2116
.L2107:
	.cfi_restore_state
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2108
.L2139:
	.cfi_restore 21
	.cfi_restore 22
	mov	x0, 4607182418800017407
	fmov	d0, x0
	b	.L2076
.L2302:
.LEHB136:
	bl	_ZSt20__throw_system_errori
.LEHE136:
.L2301:
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB137:
	bl	_ZSt20__throw_system_errori
.LEHE137:
.L2305:
.LEHB138:
	bl	_ZSt20__throw_system_errori
.L2304:
	mov	w0, 1
	bl	_ZSt20__throw_system_errori
.LEHE138:
.L2291:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -152
	.cfi_offset 27, -160
	str	d8, [sp, 96]
	.cfi_offset 72, -144
.LEHB139:
	bl	_ZSt20__throw_system_errori
.L2295:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L2300:
	.cfi_restore_state
	mov	w0, 1
	stp	x21, x22, [sp, 32]
	.cfi_remember_state
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	bl	_ZSt20__throw_system_errori
.LEHE139:
.L2309:
	.cfi_restore_state
.LEHB140:
	bl	_ZSt20__throw_system_errori
.LEHE140:
.L2152:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	ldr	x1, [sp, 208]
	mov	x19, x0
	cbz	x1, .L2122
	mov	x0, x1
	bl	_ZdlPv
	b	.L2122
.L2146:
	.cfi_restore 21
	.cfi_restore 22
	mov	x19, x0
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
.L2130:
	ldrb	w0, [sp, 184]
	cbz	w0, .L2131
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2131:
	mov	x0, x19
.LEHB141:
	bl	_Unwind_Resume
.LEHE141:
.L2151:
.L2290:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L2122:
	ldrb	w0, [sp, 200]
	cbz	w0, .L2130
	add	x0, sp, 192
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2130
.L2150:
	mov	x19, x0
.L2124:
	ldrb	w0, [sp, 216]
	cbz	w0, .L2122
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2122
.L2306:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
.LEHB142:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE142:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB143:
	bl	__cxa_throw
.LEHE143:
.L2149:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L2124
.L2147:
	mov	x19, x0
	b	.L2122
.L2313:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC32
	mov	x20, x0
	add	x1, x1, :lo12:.LC32
.LEHB144:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE144:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB145:
	bl	__cxa_throw
.LEHE145:
.L2298:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC31
	mov	x20, x0
	add	x1, x1, :lo12:.LC31
.LEHB146:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE146:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB147:
	bl	__cxa_throw
.LEHE147:
.L2143:
	mov	x19, x0
	b	.L2070
.L2064:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB148:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE148:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB149:
	bl	__cxa_throw
.LEHE149:
.L2294:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC29
	mov	x20, x0
	add	x1, x1, :lo12:.LC29
.LEHB150:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE150:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB151:
	bl	__cxa_throw
.LEHE151:
.L2148:
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 72, -144
	b	.L2290
.L2145:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
.L2289:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L2070:
	ldrb	w0, [sp, 216]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -200
	.cfi_offset 21, -208
	str	d8, [sp, 96]
	.cfi_offset 72, -144
	cbz	w0, .L2131
	add	x0, sp, 208
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2131
.L2153:
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 72
	b	.L2289
.L2144:
	b	.L2289
	.cfi_endproc
.LFE11429:
	.section	.gcc_except_table
.LLSDA11429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11429-.LLSDACSB11429
.LLSDACSB11429:
	.uleb128 .LEHB128-.LFB11429
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L2143-.LFB11429
	.uleb128 0
	.uleb128 .LEHB129-.LFB11429
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L2147-.LFB11429
	.uleb128 0
	.uleb128 .LEHB130-.LFB11429
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L2150-.LFB11429
	.uleb128 0
	.uleb128 .LEHB131-.LFB11429
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L2147-.LFB11429
	.uleb128 0
	.uleb128 .LEHB132-.LFB11429
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L2152-.LFB11429
	.uleb128 0
	.uleb128 .LEHB133-.LFB11429
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L2151-.LFB11429
	.uleb128 0
	.uleb128 .LEHB134-.LFB11429
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L2147-.LFB11429
	.uleb128 0
	.uleb128 .LEHB135-.LFB11429
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L2152-.LFB11429
	.uleb128 0
	.uleb128 .LEHB136-.LFB11429
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L2146-.LFB11429
	.uleb128 0
	.uleb128 .LEHB137-.LFB11429
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB11429
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L2147-.LFB11429
	.uleb128 0
	.uleb128 .LEHB139-.LFB11429
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB11429
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L2143-.LFB11429
	.uleb128 0
	.uleb128 .LEHB141-.LFB11429
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB11429
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L2149-.LFB11429
	.uleb128 0
	.uleb128 .LEHB143-.LFB11429
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L2150-.LFB11429
	.uleb128 0
	.uleb128 .LEHB144-.LFB11429
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L2148-.LFB11429
	.uleb128 0
	.uleb128 .LEHB145-.LFB11429
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L2147-.LFB11429
	.uleb128 0
	.uleb128 .LEHB146-.LFB11429
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L2145-.LFB11429
	.uleb128 0
	.uleb128 .LEHB147-.LFB11429
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L2143-.LFB11429
	.uleb128 0
	.uleb128 .LEHB148-.LFB11429
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L2153-.LFB11429
	.uleb128 0
	.uleb128 .LEHB149-.LFB11429
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L2143-.LFB11429
	.uleb128 0
	.uleb128 .LEHB150-.LFB11429
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L2144-.LFB11429
	.uleb128 0
	.uleb128 .LEHB151-.LFB11429
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L2143-.LFB11429
	.uleb128 0
.LLSDACSE11429:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
	.text
	.align	2
	.p2align 4,,11
	.type	_Z11build_indexPfmm._omp_fn.0, %function
_Z11build_indexPfmm._omp_fn.0:
.LFB13076:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA13076
	stp	x29, x30, [sp, -112]!
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	mov	x22, x0
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	bl	omp_get_num_threads
	mov	w20, w0
	bl	omp_get_thread_num
	mov	w19, w0
	ldr	x1, [x22, 8]
	sub	w0, w1, #1
	sdiv	w23, w0, w20
	msub	w1, w23, w20, w0
	cmp	w19, w1
	blt	.L2317
.L2327:
	madd	w19, w23, w19, w1
	add	w23, w23, w19
	cmp	w19, w23
	bge	.L2316
	ldr	x20, [x22]
	add	w19, w19, 1
	ldp	x24, x22, [x22, 16]
	sxtw	x21, w19
	add	w23, w23, 1
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -40
	.cfi_offset 25, -48
	adrp	x25, _ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	mov	w26, 48
	add	x25, x25, :lo12:_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -24
	.cfi_offset 27, -32
	mov	w27, 1
	lsl	x24, x24, 2
	madd	x20, x21, x24, x20
	b	.L2326
	.p2align 2,,3
.L2323:
	add	w19, w19, 1
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	beq	.L2349
.L2326:
	ldr	x0, [x22]
	ldr	x4, [x0]
	cmp	x4, x25
	bne	.L2319
	ldr	x1, [x22, 120]
	and	w0, w19, 65535
	strb	wzr, [sp, 104]
	smaddl	x0, w0, w26, x1
	str	x0, [sp, 96]
	cbz	x0, .L2350
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L2321
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2351
.L2321:
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, -1
	strb	w27, [sp, 104]
.LEHB152:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE152:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2323
	ldr	x0, [sp, 96]
	cbz	x0, .L2323
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	ldr	x1, [x1]
	cbz	x1, .L2323
	add	w19, w19, 1
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	add	x20, x20, x24
	add	x21, x21, 1
	cmp	w19, w23
	bne	.L2326
	.p2align 3,,7
.L2349:
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
.L2316:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 112
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2319:
	.cfi_def_cfa_offset 112
	.cfi_offset 19, -96
	.cfi_offset 20, -88
	.cfi_offset 21, -80
	.cfi_offset 22, -72
	.cfi_offset 23, -64
	.cfi_offset 24, -56
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x2, x21
	mov	x1, x20
	mov	x0, x22
	mov	w3, 0
	blr	x4
	b	.L2323
	.p2align 2,,3
.L2317:
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	add	w23, w23, 1
	mov	w1, 0
	b	.L2327
.L2350:
	.cfi_offset 25, -48
	.cfi_offset 26, -40
	.cfi_offset 27, -32
	.cfi_offset 28, -24
	mov	w0, 1
.LEHB153:
	bl	_ZSt20__throw_system_errori
.L2351:
	bl	_ZSt20__throw_system_errori
.LEHE153:
.L2328:
	ldrb	w1, [sp, 104]
	mov	x19, x0
	cbz	w1, .L2325
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2325:
	mov	x0, x19
.LEHB154:
	bl	_Unwind_Resume
.LEHE154:
	.cfi_endproc
.LFE13076:
	.section	.gcc_except_table
.LLSDA13076:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE13076-.LLSDACSB13076
.LLSDACSB13076:
	.uleb128 .LEHB152-.LFB13076
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L2328-.LFB13076
	.uleb128 0
	.uleb128 .LEHB153-.LFB13076
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB154-.LFB13076
	.uleb128 .LEHE154-.LEHB154
	.uleb128 0
	.uleb128 0
.LLSDACSE13076:
	.text
	.size	_Z11build_indexPfmm._omp_fn.0, .-_Z11build_indexPfmm._omp_fn.0
	.section	.rodata.str1.8
	.align	3
.LC35:
	.string	"Not enough memory"
	.align	3
.LC36:
	.string	"Not enough memory: HierarchicalNSW failed to allocate linklists"
	.text
	.align	2
	.p2align 4,,11
	.global	_Z11build_indexPfmm
	.type	_Z11build_indexPfmm, %function
_Z11build_indexPfmm:
.LFB10536:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA10536
	sub	sp, sp, #1200
	.cfi_def_cfa_offset 1200
	lsl	x3, x2, 2
	stp	x29, x30, [sp]
	.cfi_offset 29, -1200
	.cfi_offset 30, -1192
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -1168
	.cfi_offset 22, -1160
	mov	x21, x1
	adrp	x1, _ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	add	x1, x1, :lo12:_ZN7hnswlibL20InnerProductDistanceEPKvS1_S1_
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -1136
	.cfi_offset 26, -1128
	mov	x25, x2
	adrp	x2, _ZTVN7hnswlib17InnerProductSpaceE+16
	add	x2, x2, :lo12:_ZTVN7hnswlib17InnerProductSpaceE+16
	stp	x19, x20, [sp, 16]
	stp	x23, x24, [sp, 48]
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -1184
	.cfi_offset 20, -1176
	.cfi_offset 23, -1152
	.cfi_offset 24, -1144
	.cfi_offset 27, -1120
	.cfi_offset 28, -1112
	mov	x27, x0
	mov	x0, 568
	stp	x2, x1, [sp, 112]
	stp	x3, x25, [sp, 128]
.LEHB155:
	bl	_Znwm
.LEHE155:
	mov	x19, x0
	add	x22, x0, 120
	adrp	x1, _ZTVN7hnswlib15HierarchicalNSWIfEE+16
	add	x1, x1, :lo12:_ZTVN7hnswlib15HierarchicalNSWIfEE+16
	mov	x0, 3145728
	stp	x1, xzr, [x19]
	stp	xzr, xzr, [x19, 16]
	stp	xzr, xzr, [x19, 32]
	stp	xzr, xzr, [x19, 48]
	stp	xzr, xzr, [x19, 64]
	str	xzr, [x19, 80]
	stp	xzr, xzr, [x19, 88]
	str	wzr, [x19, 104]
	stp	xzr, xzr, [x19, 112]
	stp	xzr, xzr, [x22, 8]
.LEHB156:
	bl	_Znwm
.LEHE156:
	str	x0, [x19, 120]
	mov	x2, 3145728
	add	x20, x0, x2
	str	x20, [x22, 16]
	mov	w1, 0
	bl	memset
	str	x20, [x22, 8]
	mov	x1, -6148914691236517206
	stp	xzr, xzr, [x19, 144]
	movk	x1, 0x2aa, lsl 48
	stp	xzr, xzr, [x19, 160]
	stp	xzr, xzr, [x19, 176]
	cmp	x21, x1
	bhi	.L2482
	add	x23, x19, 192
	str	xzr, [x19, 192]
	add	x20, x21, x21, lsl 1
	stp	xzr, xzr, [x23, 8]
	lsl	x20, x20, 4
	cbz	x21, .L2354
	mov	x0, x20
.LEHB157:
	bl	_Znwm
.LEHE157:
	str	x0, [x19, 192]
	mov	x2, x20
	add	x20, x0, x20
	str	x20, [x23, 16]
	add	x22, x19, 272
	mov	w1, 0
	bl	memset
	str	x20, [x23, 8]
	str	wzr, [x19, 216]
	lsl	x23, x21, 2
	stp	xzr, xzr, [x19, 224]
	mov	x0, x23
	stp	xzr, xzr, [x19, 240]
	stp	xzr, xzr, [x19, 256]
	str	xzr, [x19, 272]
	stp	xzr, xzr, [x22, 8]
.LEHB158:
	bl	_Znwm
.LEHE158:
	str	x0, [x19, 272]
	add	x20, x0, x23
	str	x20, [x22, 16]
	mov	x2, x23
	mov	w1, 0
	bl	memset
.L2411:
	add	x28, x19, 368
	str	x20, [x22, 8]
	add	x3, x19, 416
	str	xzr, [x19, 296]
	str	xzr, [x19, 312]
	mov	x0, 1
	stp	xzr, xzr, [x19, 320]
	fmov	s0, 1.0e+0
	add	x24, x19, 512
	stp	xzr, xzr, [x19, 336]
	add	x2, x19, 560
	stp	xzr, xzr, [x19, 352]
	str	x3, [x19, 368]
	str	x0, [x28, 8]
	str	xzr, [x19, 384]
	str	xzr, [x28, 24]
	str	xzr, [x19, 408]
	str	s0, [x19, 400]
	str	xzr, [x28, 48]
	stp	x0, x0, [x19, 424]
	stp	xzr, xzr, [x19, 440]
	strb	wzr, [x19, 456]
	stp	xzr, xzr, [x19, 464]
	stp	xzr, xzr, [x19, 480]
	stp	xzr, xzr, [x19, 496]
	str	x2, [x19, 512]
	str	x0, [x24, 8]
	str	xzr, [x19, 528]
	str	xzr, [x24, 24]
	str	s0, [x24, 32]
	stp	xzr, xzr, [x24, 40]
	str	x21, [x19, 8]
	add	x0, x19, 40
	stlr	xzr, [x0]
	ldp	x7, x1, [sp, 120]
	add	x6, sp, 136
	ldr	x0, [x19, 8]
	mov	x11, 32
	mov	x10, 150
	mov	x9, 10
	mov	x5, 100
	mov	x4, 101
	add	x3, x1, 140
	add	x8, x1, 132
	mov	x2, 132
	mov	x20, 16
	str	x3, [x19, 24]
	mul	x0, x3, x0
	stp	x20, x20, [x19, 48]
	stp	x11, x10, [x19, 64]
	str	x9, [x19, 80]
	stp	x2, x2, [x19, 224]
	stp	xzr, x8, [x19, 240]
	stp	x1, x7, [x19, 296]
	str	x6, [x19, 312]
	stp	x5, x4, [x19, 424]
	bl	malloc
	str	x0, [x19, 256]
	cbz	x0, .L2483
	add	x0, x19, 16
	stlr	xzr, [x0]
	mov	x0, 136
.LEHB159:
	bl	_Znwm
.LEHE159:
	mov	x20, x0
	mov	x1, 8
	mov	x22, x20
	add	x23, x20, 48
	mov	x0, 64
	str	xzr, [x22], 16
	str	xzr, [x20, 16]
	stp	xzr, xzr, [x22, 8]
	str	xzr, [x22, 24]
	str	xzr, [x20, 48]
	stp	xzr, xzr, [x23, 8]
	str	xzr, [x23, 24]
	str	x1, [x20, 8]
.LEHB160:
	bl	_Znwm
.LEHE160:
	ldr	x1, [x20, 8]
	mov	x26, x0
	str	x26, [x20]
	mov	x0, 512
	sub	x1, x1, #1
	lsr	x1, x1, 1
	add	x3, x26, x1, lsl 3
	stp	x3, x1, [sp, 96]
.LEHB161:
	bl	_Znwm
.LEHE161:
	ldp	x4, x2, [sp, 96]
	add	x3, x0, 512
	stp	x0, x3, [x22, 8]
	mov	x1, x0
	str	x4, [x22, 24]
	stp	x1, x3, [x23, 8]
	str	x4, [x23, 24]
	str	x0, [x26, x2, lsl 3]
	mov	x0, 24
	str	x1, [x20, 16]
	str	x1, [x20, 48]
	stp	xzr, xzr, [x20, 80]
	stp	xzr, xzr, [x20, 96]
	stp	xzr, xzr, [x20, 112]
	str	w21, [x20, 128]
.LEHB162:
	bl	_Znwm
.LEHE162:
	mov	x26, x0
	ldr	w1, [x20, 128]
	mov	w2, -1
	strh	w2, [x0]
	str	w1, [x26, 16]
	ubfiz	x0, x1, 1, 32
.LEHB163:
	bl	_Znam
.LEHE163:
	ldp	x1, x2, [x20, 16]
	str	x0, [x26, 8]
	cmp	x2, x1
	beq	.L2484
	mov	x0, x1
	str	x26, [x0, -8]!
	str	x0, [x20, 16]
.L2362:
	ldr	x26, [x19, 112]
	str	x20, [x19, 112]
	cbz	x26, .L2365
	add	x22, x26, 48
	add	x20, x26, 16
	.p2align 3,,7
.L2376:
	ldp	x2, x3, [x22]
	ldr	x23, [x20, 24]
	ldr	x5, [x22, 24]
	sub	x2, x2, x3
	sub	x0, x5, x23
	ldr	x1, [x20]
	asr	x0, x0, 3
	ldr	x3, [x20, 16]
	sub	x0, x0, #1
	asr	x2, x2, 3
	sub	x4, x3, x1
	add	x0, x2, x0, lsl 6
	add	x0, x0, x4, asr 3
	cbz	x0, .L2373
	sub	x3, x3, #8
	ldr	x23, [x1]
	cmp	x1, x3
	beq	.L2374
	add	x1, x1, 8
	str	x1, [x26, 16]
	cbz	x23, .L2376
.L2485:
	ldr	x0, [x23, 8]
	cbz	x0, .L2377
	bl	_ZdaPv
.L2377:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2376
	.p2align 2,,3
.L2374:
	ldr	x0, [x26, 24]
	bl	_ZdlPv
	ldr	x0, [x26, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x20, 8]
	str	x1, [x20, 24]
	add	x1, x0, 512
	str	x1, [x20, 16]
	str	x0, [x26, 16]
	cbz	x23, .L2376
	b	.L2485
	.p2align 2,,3
.L2373:
	ldr	x0, [x26]
	cbz	x0, .L2378
	add	x20, x5, 8
	cmp	x23, x20
	bcs	.L2379
	.p2align 3,,7
.L2380:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	cmp	x20, x23
	bhi	.L2380
	ldr	x0, [x26]
.L2379:
	bl	_ZdlPv
.L2378:
	mov	x0, x26
	bl	_ZdlPv
.L2365:
	ldr	x0, [x19, 8]
	mov	w1, -1
	str	w1, [x19, 104]
	str	w1, [x19, 216]
	lsl	x0, x0, 3
	bl	malloc
	str	x0, [x19, 264]
	cbz	x0, .L2486
	ldr	d0, [x19, 48]
	ldr	x0, [x19, 56]
	ucvtf	d0, d0
	add	x0, x0, 1
	lsl	x0, x0, 2
	str	x0, [x19, 32]
	bl	log
	strb	wzr, [sp, 184]
	fmov	d1, 1.0e+0
	ldr	x0, [x19, 120]
	str	x0, [sp, 176]
	fdiv	d0, d1, d0
	fdiv	d1, d1, d0
	stp	d0, d1, [x19, 88]
	cbz	x0, .L2487
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2403
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2488
.L2403:
	mov	w4, 1
	mov	x1, x27
	mov	x0, x19
	mov	w3, -1
	mov	x2, 0
	strb	w4, [sp, 184]
.LEHB164:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE164:
	ldrb	w0, [sp, 184]
	cbnz	w0, .L2489
.L2404:
	add	x1, sp, 176
	mov	w3, 0
	mov	w2, 0
	adrp	x0, _Z11build_indexPfmm._omp_fn.0
	add	x0, x0, :lo12:_Z11build_indexPfmm._omp_fn.0
	stp	x27, x21, [sp, 176]
	stp	x25, x19, [sp, 192]
	bl	GOMP_parallel
	adrp	x3, .LANCHOR0
	add	x3, x3, :lo12:.LANCHOR0
	mov	x2, 1007
	mov	w1, 0
	add	x0, sp, 193
	ldp	x4, x5, [x3]
	stp	x4, x5, [sp, 176]
	ldrb	w3, [x3, 16]
	strb	w3, [sp, 192]
	bl	memset
	ldr	x3, [x19]
	add	x4, sp, 160
	add	x2, sp, 192
	add	x0, sp, 144
	add	x1, sp, 176
	str	x4, [sp, 144]
	ldr	x20, [x3, 24]
.LEHB165:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
.LEHE165:
	add	x1, sp, 144
	mov	x0, x19
.LEHB166:
	blr	x20
.LEHE166:
	ldr	x0, [sp, 144]
	add	x1, sp, 160
	cmp	x0, x1
	beq	.L2352
	bl	_ZdlPv
.L2352:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	add	sp, sp, 1200
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2354:
	.cfi_restore_state
	add	x22, x19, 272
	str	xzr, [x19, 192]
	stp	xzr, xzr, [x23, 8]
	mov	x20, 0
	str	wzr, [x19, 216]
	stp	xzr, xzr, [x19, 224]
	stp	xzr, xzr, [x19, 240]
	stp	xzr, xzr, [x19, 256]
	str	xzr, [x19, 272]
	str	xzr, [x22, 16]
	b	.L2411
	.p2align 2,,3
.L2489:
	ldr	x0, [sp, 176]
	cbz	x0, .L2404
	cbz	x20, .L2404
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2404
	.p2align 2,,3
.L2484:
	ldp	x1, x6, [x22, 16]
	str	x6, [sp, 96]
	ldr	x0, [x23, 24]
	mov	x4, 1152921504606846975
	ldr	x5, [x23, 8]
	ldr	x3, [x20, 48]
	sub	x0, x0, x6
	sub	x1, x1, x2
	asr	x0, x0, 3
	sub	x3, x3, x5
	sub	x0, x0, #1
	asr	x3, x3, 3
	add	x0, x3, x0, lsl 6
	add	x0, x0, x1, asr 3
	cmp	x0, x4
	beq	.L2360
	ldr	x0, [x20]
	cmp	x6, x0
	beq	.L2361
.L2363:
	mov	x0, 512
.LEHB167:
	bl	_Znwm
	ldr	x1, [sp, 96]
	str	x0, [x1, -8]
	ldr	x0, [x20, 40]
	sub	x1, x0, #8
	ldr	x0, [x0, -8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	add	x1, x0, 504
	str	x1, [x20, 16]
	str	x26, [x0, 504]
	b	.L2362
.L2361:
	mov	x0, x20
	mov	w2, 1
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x0, [x20, 40]
	str	x0, [sp, 96]
	b	.L2363
.L2360:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE167:
.L2487:
	mov	w0, 1
.LEHB168:
	bl	_ZSt20__throw_system_errori
.LEHE168:
.L2482:
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
.LEHB169:
	bl	_ZSt20__throw_length_errorPKc
.LEHE169:
.L2488:
.LEHB170:
	bl	_ZSt20__throw_system_errori
.LEHE170:
.L2425:
	ldrb	w1, [sp, 184]
	mov	x19, x0
	cbz	w1, .L2410
	add	x0, sp, 176
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2410:
	mov	x0, x19
.LEHB171:
	bl	_Unwind_Resume
.LEHE171:
.L2418:
	mov	x1, x0
.L2367:
	mov	x0, x20
	mov	x20, x1
	bl	_ZdlPv
.L2385:
	mov	x0, x24
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED1Ev
	mov	x0, x28
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev
	ldr	x0, [x19, 272]
	cbz	x0, .L2388
	bl	_ZdlPv
.L2388:
	ldr	x0, [x19, 192]
	cbz	x0, .L2390
	bl	_ZdlPv
.L2390:
	ldr	x0, [x19, 120]
	cbz	x0, .L2392
	bl	_ZdlPv
.L2392:
	ldr	x21, [x19, 112]
	cbz	x21, .L2393
	add	x24, x21, 48
	add	x22, x21, 16
.L2397:
	ldp	x2, x4, [x24]
	ldr	x23, [x22, 24]
	ldr	x3, [x24, 24]
	sub	x2, x2, x4
	sub	x0, x3, x23
	ldr	x1, [x22]
	asr	x0, x0, 3
	ldr	x4, [x22, 16]
	sub	x0, x0, #1
	asr	x2, x2, 3
	sub	x5, x4, x1
	add	x0, x2, x0, lsl 6
	add	x0, x0, x5, asr 3
	cbz	x0, .L2394
	sub	x4, x4, #8
	ldr	x23, [x1]
	cmp	x1, x4
	beq	.L2395
	add	x1, x1, 8
	str	x1, [x21, 16]
	cbz	x23, .L2397
.L2492:
	ldr	x0, [x23, 8]
	cbz	x0, .L2398
	bl	_ZdaPv
.L2398:
	mov	x0, x23
	bl	_ZdlPv
	b	.L2397
.L2416:
	mov	x20, x0
	b	.L2385
.L2483:
	mov	x0, x20
	bl	__cxa_allocate_exception
	adrp	x1, .LC35
	mov	x21, x0
	add	x1, x1, :lo12:.LC35
.LEHB172:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE172:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB173:
	bl	__cxa_throw
.LEHE173:
.L2419:
.L2481:
	mov	x20, x0
	mov	x0, x21
	bl	__cxa_free_exception
	b	.L2385
.L2490:
	ldr	x0, [x23], 8
	bl	_ZdlPv
.L2402:
	cmp	x22, x23
	bhi	.L2490
	ldr	x0, [x21]
	bl	_ZdlPv
.L2400:
	mov	x0, x21
	bl	_ZdlPv
.L2393:
	mov	x0, x19
	bl	_ZdlPv
	mov	x0, x20
.LEHB174:
	bl	_Unwind_Resume
.LEHE174:
.L2413:
	mov	x20, x0
	b	.L2392
.L2415:
	mov	x20, x0
	b	.L2388
.L2420:
	mov	x21, x0
.L2369:
	ldr	x0, [x20]
	cbz	x0, .L2370
	ldr	x22, [x20, 72]
	ldr	x23, [x20, 40]
	add	x22, x22, 8
.L2372:
	cmp	x22, x23
	bhi	.L2491
	ldr	x0, [x20]
	bl	_ZdlPv
.L2370:
	mov	x1, x21
	b	.L2367
.L2423:
	bl	__cxa_begin_catch
.LEHB175:
	bl	__cxa_rethrow
.LEHE175:
.L2412:
	ldr	x2, [sp, 144]
	add	x1, sp, 160
	mov	x19, x0
	cmp	x2, x1
	beq	.L2410
	mov	x0, x2
	bl	_ZdlPv
	b	.L2410
.L2424:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x0, x21
	bl	__cxa_begin_catch
	ldr	x0, [x20]
	bl	_ZdlPv
	stp	xzr, xzr, [x20]
.LEHB176:
	bl	__cxa_rethrow
.LEHE176:
.L2422:
	mov	x21, x0
	bl	__cxa_end_catch
	mov	x1, x21
	b	.L2367
.L2421:
	mov	x21, x0
	mov	x0, x26
	bl	_ZdlPv
	b	.L2369
.L2414:
	mov	x20, x0
	b	.L2390
.L2486:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC36
	mov	x21, x0
	add	x1, x1, :lo12:.LC36
.LEHB177:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE177:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x21
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB178:
	bl	__cxa_throw
.LEHE178:
.L2417:
	b	.L2481
.L2491:
	ldr	x0, [x23], 8
	bl	_ZdlPv
	b	.L2372
.L2394:
	ldr	x0, [x21]
	cbz	x0, .L2400
	add	x22, x3, 8
	b	.L2402
.L2395:
	ldr	x0, [x21, 24]
	bl	_ZdlPv
	ldr	x0, [x21, 40]
	add	x1, x0, 8
	ldr	x0, [x0, 8]
	str	x0, [x22, 8]
	str	x1, [x22, 24]
	add	x1, x0, 512
	str	x1, [x22, 16]
	str	x0, [x21, 16]
	cbnz	x23, .L2492
	b	.L2397
	.cfi_endproc
.LFE10536:
	.section	.gcc_except_table
	.align	2
.LLSDA10536:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT10536-.LLSDATTD10536
.LLSDATTD10536:
	.byte	0x1
	.uleb128 .LLSDACSE10536-.LLSDACSB10536
.LLSDACSB10536:
	.uleb128 .LEHB155-.LFB10536
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB10536
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L2413-.LFB10536
	.uleb128 0
	.uleb128 .LEHB157-.LFB10536
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L2414-.LFB10536
	.uleb128 0
	.uleb128 .LEHB158-.LFB10536
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L2415-.LFB10536
	.uleb128 0
	.uleb128 .LEHB159-.LFB10536
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L2416-.LFB10536
	.uleb128 0
	.uleb128 .LEHB160-.LFB10536
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L2418-.LFB10536
	.uleb128 0
	.uleb128 .LEHB161-.LFB10536
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L2423-.LFB10536
	.uleb128 0x1
	.uleb128 .LEHB162-.LFB10536
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L2420-.LFB10536
	.uleb128 0
	.uleb128 .LEHB163-.LFB10536
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L2421-.LFB10536
	.uleb128 0
	.uleb128 .LEHB164-.LFB10536
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L2425-.LFB10536
	.uleb128 0
	.uleb128 .LEHB165-.LFB10536
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB10536
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L2412-.LFB10536
	.uleb128 0
	.uleb128 .LEHB167-.LFB10536
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L2420-.LFB10536
	.uleb128 0
	.uleb128 .LEHB168-.LFB10536
	.uleb128 .LEHE168-.LEHB168
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB169-.LFB10536
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L2414-.LFB10536
	.uleb128 0
	.uleb128 .LEHB170-.LFB10536
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB10536
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB10536
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L2419-.LFB10536
	.uleb128 0
	.uleb128 .LEHB173-.LFB10536
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L2416-.LFB10536
	.uleb128 0
	.uleb128 .LEHB174-.LFB10536
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB10536
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L2424-.LFB10536
	.uleb128 0x1
	.uleb128 .LEHB176-.LFB10536
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L2422-.LFB10536
	.uleb128 0
	.uleb128 .LEHB177-.LFB10536
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L2417-.LFB10536
	.uleb128 0
	.uleb128 .LEHB178-.LFB10536
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L2416-.LFB10536
	.uleb128 0
.LLSDACSE10536:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	0

.LLSDATT10536:
	.text
	.size	_Z11build_indexPfmm, .-_Z11build_indexPfmm
	.section	.rodata._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb.str1.8,"aMS",@progbits,1
	.align	3
.LC38:
	.string	"Replacement of deleted elements is disabled in constructor"
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.type	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, %function
_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb:
.LFB11058:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11058
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -128
	.cfi_offset 20, -120
	mov	x19, x0
	ldrb	w0, [x0, 456]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -112
	.cfi_offset 22, -104
	and	w22, w3, 255
	eor	w0, w0, 1
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -96
	.cfi_offset 24, -88
	str	x2, [sp, 72]
	tst	w22, w0
	bne	.L2631
	mov	x21, x1
	ubfiz	x0, x2, 1, 16
	ldr	x1, [x19, 120]
	add	x0, x0, x2, uxth
	strb	wzr, [sp, 104]
	add	x0, x1, x0, lsl 4
	str	x0, [sp, 96]
	cbz	x0, .L2632
	adrp	x1, .LC5
	ldr	x20, [x1, #:lo12:.LC5]
	cbz	x20, .L2496
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2633
.L2496:
	mov	w0, 1
	strb	w0, [sp, 104]
	cbz	w22, .L2634
	add	x22, x19, 464
	str	x22, [sp, 112]
	strb	wzr, [sp, 120]
	cbz	x20, .L2500
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2635
.L2500:
	ldr	x24, [x19, 536]
	mov	w0, 1
	strb	w0, [sp, 120]
	add	x23, x19, 512
	cbnz	x24, .L2636
	ldr	x0, [sp, 112]
	cbz	x0, .L2623
	cbz	x20, .L2637
.L2533:
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	strb	wzr, [sp, 120]
	ldr	x2, [sp, 72]
	cbz	x24, .L2528
.L2503:
	ldp	x4, x3, [x19, 248]
	add	x0, x19, 320
	ldr	w1, [sp, 80]
	ldr	x5, [x19, 24]
	madd	x1, x1, x5, x4
	ldr	x4, [x3, x1]
	str	x4, [sp, 88]
	str	x2, [x3, x1]
	str	x0, [sp, 128]
	strb	wzr, [sp, 136]
	cbz	x20, .L2505
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2638
.L2505:
	mov	w3, 1
	add	x2, sp, 88
	add	x24, x19, 368
	mov	w1, 0
	mov	x0, x24
	strb	w3, [sp, 136]
	bl	_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_
	mov	x0, x24
	add	x1, sp, 72
.LEHB179:
	bl	_ZNSt8__detail9_Map_baseImSt4pairIKmjESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_
	ldrb	w1, [sp, 136]
	ldr	w2, [sp, 80]
	str	w2, [x0]
	cbz	w1, .L2639
	ldr	x0, [sp, 128]
	cbz	x0, .L2507
	cbz	x20, .L2508
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2508:
	strb	wzr, [sp, 136]
.L2507:
	ldr	w0, [sp, 80]
	str	w0, [sp, 84]
	add	x1, x19, 16
	ldar	x1, [x1]
	cmp	x1, x0, uxtw
	bls	.L2640
	ldr	w1, [sp, 84]
	ldr	x3, [x19, 24]
	ldr	x2, [x19, 240]
	ldr	x0, [x19, 256]
	madd	x1, x1, x3, x2
	add	x0, x0, x1
	ldrb	w1, [x0, 2]
	tbz	x1, 0, .L2510
	and	w1, w1, -2
	strb	w1, [x0, 2]
	add	x0, x19, 40
.L2647:
	ldaxr	x1, [x0]
	sub	x1, x1, #1
	stlxr	w2, x1, [x0]
	cbnz	w2, .L2647
	ldrb	w0, [x19, 456]
	cbnz	w0, .L2641
.L2511:
	ldr	w2, [sp, 80]
	fmov	s0, 1.0e+0
	mov	x1, x21
	mov	x0, x19
	bl	_ZN7hnswlib15HierarchicalNSWIfE11updatePointEPKvjf
.LEHE179:
	ldrb	w0, [sp, 136]
	cbnz	w0, .L2642
.L2504:
	ldrb	w0, [sp, 120]
	cbnz	w0, .L2643
.L2518:
	ldrb	w0, [sp, 104]
	cbnz	w0, .L2644
.L2493:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 144
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2636:
	.cfi_restore_state
	ldr	x3, [x23, 16]
	add	x2, sp, 80
	mov	x0, x23
	mov	w1, 0
	ldr	w3, [x3, 8]
	str	w3, [sp, 80]
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	ldrb	w0, [sp, 120]
	cbz	w0, .L2645
	ldr	x0, [sp, 112]
	cbz	x0, .L2624
	cbnz	x20, .L2533
	strb	wzr, [sp, 120]
.L2624:
	ldr	x2, [sp, 72]
	b	.L2503
	.p2align 2,,3
.L2634:
	ldr	x2, [sp, 72]
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB180:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE180:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2493
.L2644:
	ldr	x0, [sp, 96]
	cbz	x0, .L2493
	cbz	x20, .L2493
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x29, x30, [sp], 144
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2637:
	.cfi_restore_state
	strb	wzr, [sp, 120]
.L2623:
	ldr	x2, [sp, 72]
.L2528:
	mov	x1, x21
	mov	x0, x19
	mov	w3, -1
.LEHB181:
	bl	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmi
.LEHE181:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2518
.L2643:
	ldr	x0, [sp, 112]
	cbz	x0, .L2518
	cbz	x20, .L2518
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2518
	.p2align 2,,3
.L2641:
	cbz	x20, .L2512
	mov	x0, x22
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2646
.L2512:
	mov	x0, x23
	add	x2, sp, 84
	mov	w1, 0
	bl	_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKj
	cbz	x20, .L2511
	mov	x0, x22
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2511
	.p2align 2,,3
.L2642:
	ldr	x0, [sp, 128]
	cbz	x0, .L2504
	cbz	x20, .L2504
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	b	.L2504
.L2635:
.LEHB182:
	bl	_ZSt20__throw_system_errori
.LEHE182:
.L2632:
	mov	w0, 1
.LEHB183:
	bl	_ZSt20__throw_system_errori
.LEHE183:
.L2645:
	mov	w0, 1
.LEHB184:
	bl	_ZSt20__throw_system_errori
.LEHE184:
.L2633:
.LEHB185:
	bl	_ZSt20__throw_system_errori
.LEHE185:
.L2640:
	bl	_ZN7hnswlib15HierarchicalNSWIfE21unmarkDeletedInternalEj.part.0
.L2639:
	mov	w0, 1
.LEHB186:
	bl	_ZSt20__throw_system_errori
.LEHE186:
.L2638:
.LEHB187:
	bl	_ZSt20__throw_system_errori
.LEHE187:
.L2646:
.LEHB188:
	bl	_ZSt20__throw_system_errori
.LEHE188:
.L2537:
	mov	x19, x0
.L2523:
	ldrb	w0, [sp, 104]
	cbz	w0, .L2524
	add	x0, sp, 96
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2524:
	mov	x0, x19
.LEHB189:
	bl	_Unwind_Resume
.LEHE189:
.L2510:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC30
	mov	x20, x0
	add	x1, x1, :lo12:.LC30
.LEHB190:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE190:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB191:
	bl	__cxa_throw
.LEHE191:
.L2631:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC38
	mov	x19, x0
	add	x1, x1, :lo12:.LC38
.LEHB192:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE192:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x19
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB193:
	bl	__cxa_throw
.LEHE193:
.L2539:
	mov	x19, x0
	b	.L2516
.L2538:
	mov	x19, x0
.L2521:
	ldrb	w0, [sp, 120]
	cbz	w0, .L2523
	add	x0, sp, 112
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2523
.L2540:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
.L2516:
	ldrb	w0, [sp, 136]
	cbz	w0, .L2521
	add	x0, sp, 128
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2521
.L2536:
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	bl	__cxa_free_exception
	mov	x0, x19
.LEHB194:
	bl	_Unwind_Resume
.LEHE194:
	.cfi_endproc
.LFE11058:
	.section	.gcc_except_table
.LLSDA11058:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11058-.LLSDACSB11058
.LLSDACSB11058:
	.uleb128 .LEHB179-.LFB11058
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L2539-.LFB11058
	.uleb128 0
	.uleb128 .LEHB180-.LFB11058
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L2537-.LFB11058
	.uleb128 0
	.uleb128 .LEHB181-.LFB11058
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L2538-.LFB11058
	.uleb128 0
	.uleb128 .LEHB182-.LFB11058
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L2537-.LFB11058
	.uleb128 0
	.uleb128 .LEHB183-.LFB11058
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB11058
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L2538-.LFB11058
	.uleb128 0
	.uleb128 .LEHB185-.LFB11058
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB11058
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L2539-.LFB11058
	.uleb128 0
	.uleb128 .LEHB187-.LFB11058
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L2538-.LFB11058
	.uleb128 0
	.uleb128 .LEHB188-.LFB11058
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L2539-.LFB11058
	.uleb128 0
	.uleb128 .LEHB189-.LFB11058
	.uleb128 .LEHE189-.LEHB189
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB190-.LFB11058
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L2540-.LFB11058
	.uleb128 0
	.uleb128 .LEHB191-.LFB11058
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L2539-.LFB11058
	.uleb128 0
	.uleb128 .LEHB192-.LFB11058
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L2536-.LFB11058
	.uleb128 0
	.uleb128 .LEHB193-.LFB11058
	.uleb128 .LEHE193-.LEHB193
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB194-.LFB11058
	.uleb128 .LEHE194-.LEHB194
	.uleb128 0
	.uleb128 0
.LLSDACSE11058:
	.section	.text._ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,"axG",@progbits,_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb,comdat
	.size	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb, .-_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm:
.LFB12944:
	.cfi_startproc
	cbz	x1, .L2672
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x3, 576460752303423487
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x20, x1
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	mov	x22, x0
	ldp	x0, x1, [x0]
	ldr	x2, [x22, 16]
	sub	x19, x1, x0
	sub	x2, x2, x1
	asr	x21, x19, 4
	sub	x4, x3, x21
	cmp	x20, x2, asr 4
	bhi	.L2650
	mov	x2, x1
	mov	x3, x20
	.p2align 3,,7
.L2651:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2651
	add	x1, x1, x20, lsl 4
	str	x1, [x22, 8]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2672:
	ret
	.p2align 2,,3
.L2650:
	.cfi_def_cfa_offset 64
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
	.cfi_offset 22, -24
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -8
	.cfi_offset 23, -16
	cmp	x4, x20
	bcc	.L2675
	cmp	x20, x21
	csel	x2, x20, x21, cs
	adds	x2, x21, x2
	bcs	.L2654
	cbnz	x2, .L2676
	mov	x23, 0
	mov	x24, 0
.L2656:
	add	x2, x24, x19
	mov	x3, x20
	.p2align 3,,7
.L2657:
	str	wzr, [x2]
	subs	x3, x3, #1
	str	xzr, [x2, 8]
	add	x2, x2, 16
	bne	.L2657
	cmp	x1, x0
	beq	.L2661
	sub	x1, x1, x0
	mov	x2, x24
	add	x1, x24, x1
	mov	x3, x0
	.p2align 3,,7
.L2662:
	ldp	x4, x5, [x3], 16
	stp	x4, x5, [x2], 16
	cmp	x2, x1
	bne	.L2662
.L2661:
	cbz	x0, .L2660
	bl	_ZdlPv
.L2660:
	add	x21, x20, x21
	str	x23, [x22, 16]
	ldp	x19, x20, [sp, 16]
	add	x21, x24, x21, lsl 4
	stp	x24, x21, [x22]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 23
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
.L2676:
	.cfi_restore_state
	cmp	x2, x3
	csel	x2, x2, x3, ls
	lsl	x23, x2, 4
.L2655:
	mov	x0, x23
	bl	_Znwm
	mov	x24, x0
	add	x23, x0, x23
	ldp	x0, x1, [x22]
	b	.L2656
.L2654:
	mov	x23, 9223372036854775792
	b	.L2655
.L2675:
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE12944:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE:
.LFB12862:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12862
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	ldr	x4, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	mov	x19, x8
	add	x8, sp, 32
	ldr	x4, [x4, 8]
	stp	xzr, xzr, [x19]
	str	xzr, [x19, 16]
.LEHB195:
	blr	x4
.LEHE195:
	ldp	x0, x2, [sp, 32]
	ldp	x3, x4, [x19]
	sub	x20, x2, x0
	sub	x1, x4, x3
	asr	x5, x20, 4
	cmp	x20, x1
	bhi	.L2715
	bcc	.L2716
.L2679:
	cmp	x2, x0
	beq	.L2680
.L2717:
	sub	x20, x20, #16
	b	.L2688
	.p2align 2,,3
.L2681:
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	beq	.L2689
.L2688:
	ldr	x3, [x19]
	sub	x1, x2, x0
	ldr	s1, [x0]
	add	x4, x3, x20
	ldr	x5, [x0, 8]
	str	s1, [x3, x20]
	str	x5, [x4, 8]
	cmp	x1, 16
	ble	.L2681
	sub	x1, x2, #16
	ldr	s0, [x2, -16]
	sub	x1, x1, x0
	ldr	x4, [x0, 8]
	asr	x9, x1, 4
	sub	x7, x9, #1
	str	s1, [x2, -16]
	ldr	x3, [x2, -8]
	add	x7, x7, x7, lsr 63
	str	x4, [x2, -8]
	asr	x7, x7, 1
	cmp	x1, 32
	ble	.L2695
	mov	x4, 0
	b	.L2686
	.p2align 2,,3
.L2697:
	mov	x5, x2
.L2685:
	lsl	x2, x4, 4
	add	x4, x0, x2
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	bge	.L2682
.L2698:
	mov	x4, x1
.L2686:
	add	x2, x4, 1
	lsl	x6, x2, 1
	lsl	x2, x2, 5
	sub	x1, x6, #1
	add	x8, x0, x2
	lsl	x5, x1, 4
	ldr	s2, [x0, x2]
	add	x2, x0, x5
	ldr	s1, [x0, x5]
	fcmpe	s2, s1
	bmi	.L2701
	ldr	x5, [x8, 8]
	bgt	.L2696
	ldr	x2, [x2, 8]
	cmp	x2, x5
	bhi	.L2697
.L2696:
	fmov	s1, s2
	lsl	x2, x4, 4
	add	x4, x0, x2
	mov	x1, x6
	str	s1, [x0, x2]
	str	x5, [x4, 8]
	cmp	x1, x7
	blt	.L2698
.L2682:
	tbnz	x9, 0, .L2687
	sub	x9, x9, #2
	add	x9, x9, x9, lsr 63
	cmp	x1, x9, asr 1
	bne	.L2687
	lsl	x4, x1, 1
	lsl	x2, x1, 4
	add	x1, x4, 1
	add	x5, x0, x2
	lsl	x4, x1, 4
	add	x6, x0, x4
	ldr	s1, [x0, x4]
	ldr	x4, [x6, 8]
	str	s1, [x0, x2]
	str	x4, [x5, 8]
	.p2align 3,,7
.L2687:
	mov	x2, 0
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	ldp	x0, x2, [sp, 32]
	sub	x20, x20, #16
	sub	x2, x2, #16
	str	x2, [sp, 40]
	cmp	x0, x2
	bne	.L2688
.L2689:
	mov	x0, x2
	bl	_ZdlPv
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2701:
	.cfi_restore_state
	ldr	x5, [x2, 8]
	b	.L2685
	.p2align 2,,3
.L2716:
	add	x3, x3, x20
	cmp	x4, x3
	beq	.L2679
	str	x3, [x19, 8]
	cmp	x2, x0
	bne	.L2717
.L2680:
	cbnz	x2, .L2689
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2715:
	.cfi_restore_state
	sub	x1, x5, x1, asr 4
	mov	x0, x19
.LEHB196:
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_default_appendEm
.LEHE196:
	ldp	x0, x2, [sp, 32]
	b	.L2679
	.p2align 2,,3
.L2695:
	mov	x1, 0
	b	.L2682
.L2700:
	ldr	x1, [sp, 32]
	mov	x20, x0
	cbz	x1, .L2693
	mov	x0, x1
	bl	_ZdlPv
.L2693:
	ldr	x0, [x19]
	cbz	x0, .L2694
	bl	_ZdlPv
.L2694:
	mov	x0, x20
.LEHB197:
	bl	_Unwind_Resume
.LEHE197:
.L2699:
	mov	x20, x0
	b	.L2693
	.cfi_endproc
.LFE12862:
	.section	.gcc_except_table
.LLSDA12862:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12862-.LLSDACSB12862
.LLSDACSB12862:
	.uleb128 .LEHB195-.LFB12862
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L2699-.LFB12862
	.uleb128 0
	.uleb128 .LEHB196-.LFB12862
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L2700-.LFB12862
	.uleb128 0
	.uleb128 .LEHB197-.LFB12862
	.uleb128 .LEHE197-.LEHB197
	.uleb128 0
	.uleb128 0
.LLSDACSE12862:
	.section	.text._ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB13004:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L2736
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2729
	cbnz	x1, .L2723
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2728:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2724
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2725:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2725
	add	x26, x26, 8
	add	x25, x20, x26
.L2724:
	cmp	x19, x23
	beq	.L2726
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2726:
	cbz	x24, .L2727
	mov	x0, x24
	bl	_ZdlPv
.L2727:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2729:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2722:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2728
.L2723:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2722
.L2736:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE13004:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB13006:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	mov	x21, x0
	stp	x19, x20, [sp, 16]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	.cfi_offset 28, -8
	mov	x27, x2
	asr	x0, x0, 3
	mov	x2, 1152921504606846975
	cmp	x0, x2
	beq	.L2755
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	mov	x28, x3
	adds	x1, x1, x0
	bcs	.L2748
	cbnz	x1, .L2742
	mov	x25, 8
	mov	x22, 0
	mov	x20, 0
.L2747:
	ldr	s0, [x27]
	add	x0, x20, x26
	ldr	w1, [x28]
	str	s0, [x20, x26]
	str	w1, [x0, 4]
	cmp	x19, x24
	beq	.L2743
	mov	x4, x20
	mov	x3, x24
	.p2align 3,,7
.L2744:
	ldr	x5, [x3], 8
	str	x5, [x4], 8
	cmp	x3, x19
	bne	.L2744
	add	x26, x26, 8
	add	x25, x20, x26
.L2743:
	cmp	x19, x23
	beq	.L2745
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2745:
	cbz	x24, .L2746
	mov	x0, x24
	bl	_ZdlPv
.L2746:
	ldp	x23, x24, [sp, 48]
	ldp	x27, x28, [sp, 80]
	stp	x20, x25, [x21]
	str	x22, [x21, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2748:
	.cfi_restore_state
	mov	x22, 9223372036854775800
.L2741:
	mov	x0, x22
	bl	_Znwm
	mov	x20, x0
	add	x22, x0, x22
	add	x25, x0, 8
	b	.L2747
.L2742:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 3
	b	.L2741
.L2755:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE13006:
	.size	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, %function
_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE:
.LFB12892:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12892
	stp	x29, x30, [sp, -192]!
	.cfi_def_cfa_offset 192
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	mov	x29, sp
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -160
	.cfi_offset 22, -152
	mov	x21, x0
	mov	x22, x3
	ldr	x0, [x0, 112]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -176
	.cfi_offset 20, -168
	mov	x19, x8
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	.cfi_offset 23, -144
	.cfi_offset 24, -136
	.cfi_offset 25, -128
	.cfi_offset 26, -120
	.cfi_offset 27, -112
	.cfi_offset 28, -104
	mov	x27, x2
	str	d8, [sp, 96]
	.cfi_offset 72, -96
	str	w1, [sp, 124]
.LEHB198:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE198:
	ldr	w1, [sp, 124]
	mov	x28, x0
	ldr	x5, [x21, 24]
	mov	x0, x27
	ldr	x4, [x21, 232]
	ldrh	w24, [x28]
	ldr	x23, [x28, 8]
	madd	x1, x1, x5, x4
	ldr	x4, [x21, 256]
	stp	xzr, xzr, [sp, 160]
	ldr	x3, [x21, 304]
	stp	xzr, xzr, [x19]
	add	x1, x4, x1
	str	xzr, [x19, 16]
	str	xzr, [sp, 176]
	ldr	x2, [x21, 312]
.LEHB199:
	blr	x3
	ldp	x1, x0, [x19, 8]
	str	s0, [sp, 140]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L2757
	ldr	w7, [sp, 124]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [x19, 8]
.L2758:
	ldr	x3, [x19]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2759
	.p2align 3,,7
.L2762:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s0, [x3, x2]
	fcmpe	s0, s2
	bmi	.L2812
.L2760:
	ldp	x1, x0, [sp, 168]
	fneg	s1, s1
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	beq	.L2763
.L2843:
	ldr	w8, [sp, 124]
	add	x7, x1, 8
	str	s1, [x1]
	mov	w9, w8
	str	w8, [x1, 4]
	str	x7, [sp, 168]
.L2764:
	ldr	x0, [sp, 160]
	sub	x3, x7, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2765
	.p2align 3,,7
.L2768:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x5, x0, x3
	add	x4, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2813
.L2766:
	str	s1, [x4]
	str	w9, [x4, 4]
	strh	w24, [x23, w8, uxtw 1]
	cmp	x0, x7
	beq	.L2769
	.p2align 3,,7
.L2771:
	ldr	s0, [x0]
	ldr	w20, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2769
	add	x0, sp, 160
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x3, [x21, 24]
	uxtw	x0, w20
	ldr	x2, [x21, 240]
	mov	x20, 1
	ldr	x1, [x21, 256]
	madd	x0, x0, x3, x2
	add	x26, x1, x0
	ldrh	w25, [x1, x0]
	cbnz	x25, .L2770
	b	.L2790
	.p2align 2,,3
.L2841:
	mov	x20, x0
.L2770:
	ldr	w1, [x26, x20, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x23, x0]
	str	w1, [sp, 136]
	cmp	w2, w24
	beq	.L2772
	ldr	x5, [x21, 24]
	uxtw	x1, w1
	ldr	x4, [x21, 232]
	ldp	x3, x2, [x21, 304]
	strh	w24, [x23, x0]
	madd	x1, x1, x5, x4
	mov	x0, x27
	ldr	x4, [x21, 256]
	add	x1, x4, x1
	blr	x3
	ldp	x0, x1, [x19]
	str	s0, [sp, 140]
	sub	x0, x1, x0
	cmp	x22, x0, asr 3
	bhi	.L2773
	fcmpe	s0, s8
	bmi	.L2773
.L2772:
	add	x0, x20, 1
	cmp	x25, x20
	bne	.L2841
.L2790:
	ldp	x0, x1, [sp, 160]
	cmp	x1, x0
	bne	.L2771
.L2769:
	adrp	x0, .LC5
	strb	wzr, [sp, 152]
	ldr	x20, [x21, 112]
	ldr	x21, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 144]
	cbz	x21, .L2791
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L2842
.L2791:
	ldp	x0, x1, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 152]
	cmp	x0, x1
	beq	.L2792
	str	x28, [x0, -8]!
	str	x0, [x20, 16]
.L2793:
	ldr	x0, [sp, 144]
	cbz	x0, .L2796
	cbz	x21, .L2796
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2796:
	ldr	x0, [sp, 160]
	cbz	x0, .L2756
	bl	_ZdlPv
.L2756:
	mov	x0, x19
	ldr	d8, [sp, 96]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 192
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2812:
	.cfi_restore_state
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2762
	mov	x4, x5
	fneg	s1, s1
	ldp	x1, x0, [sp, 168]
	str	w7, [x4, 4]
	str	s2, [x4]
	str	s1, [sp, 144]
	cmp	x1, x0
	bne	.L2843
.L2763:
	add	x3, sp, 124
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x7, [sp, 168]
	ldr	w8, [sp, 124]
	ldr	w9, [x7, -4]
	ldr	s1, [x7, -8]
	b	.L2764
	.p2align 2,,3
.L2813:
	sub	x3, x2, #1
	ldr	w6, [x5, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w6, [x4, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2768
	mov	x4, x5
	b	.L2766
	.p2align 2,,3
.L2773:
	ldp	x2, x0, [sp, 168]
	fneg	s1, s0
	str	s1, [sp, 144]
	cmp	x2, x0
	beq	.L2776
	ldr	w8, [sp, 136]
	add	x0, x2, 8
	str	s1, [x2]
	str	w8, [x2, 4]
	str	x0, [sp, 168]
.L2777:
	ldr	x4, [sp, 160]
	sub	x3, x0, x4
	asr	x0, x3, 3
	sub	x2, x0, #2
	sub	x0, x0, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x0, 0
	ble	.L2778
	.p2align 3,,7
.L2781:
	lsl	x3, x2, 3
	lsl	x0, x0, 3
	add	x6, x4, x3
	add	x5, x4, x0
	ldr	s2, [x4, x3]
	fcmpe	s2, s1
	bmi	.L2814
.L2779:
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	beq	.L2782
.L2844:
	ldr	s2, [sp, 140]
	add	x5, x1, 8
	ldr	w9, [sp, 136]
	str	w9, [x1, 4]
	str	s2, [x1]
	str	x5, [x19, 8]
.L2783:
	ldr	x1, [x19]
	sub	x3, x5, x1
	asr	x8, x3, 3
	sub	x0, x8, #2
	sub	x2, x8, #1
	add	x0, x0, x0, lsr 63
	asr	x0, x0, 1
	cmp	x2, 0
	ble	.L2784
	.p2align 3,,7
.L2787:
	lsl	x3, x0, 3
	lsl	x2, x2, 3
	add	x6, x1, x3
	add	x4, x1, x2
	ldr	s1, [x1, x3]
	fcmpe	s1, s2
	bmi	.L2815
.L2785:
	str	s2, [x4]
	str	w9, [x4, 4]
	cmp	x22, x8
	bcs	.L2788
	.p2align 3,,7
.L2789:
	mov	x0, x19
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x1, x5, [x19]
	sub	x0, x5, x1
	cmp	x22, x0, asr 3
	bcc	.L2789
.L2788:
	cmp	x1, x5
	beq	.L2772
	ldr	s8, [x1]
	b	.L2772
	.p2align 2,,3
.L2814:
	sub	x3, x2, #1
	ldr	w7, [x6, 4]
	str	s2, [x4, x0]
	mov	x0, x2
	add	x3, x3, x3, lsr 63
	str	w7, [x5, 4]
	asr	x2, x3, 1
	cmp	x0, 0
	bgt	.L2781
	mov	x5, x6
	ldr	x0, [x19, 16]
	str	s1, [x5]
	str	w8, [x5, 4]
	cmp	x0, x1
	bne	.L2844
.L2782:
	add	x3, sp, 136
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x5, [x19, 8]
	ldr	w9, [x5, -4]
	ldr	s2, [x5, -8]
	b	.L2783
	.p2align 2,,3
.L2815:
	sub	x3, x0, #1
	ldr	w7, [x6, 4]
	str	s1, [x1, x2]
	mov	x2, x0
	add	x3, x3, x3, lsr 63
	str	w7, [x4, 4]
	asr	x0, x3, 1
	cmp	x2, 0
	bgt	.L2787
	mov	x4, x6
	b	.L2785
	.p2align 2,,3
.L2776:
	mov	x1, x2
	add	x3, sp, 136
	add	x2, sp, 144
	add	x0, sp, 160
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 168]
	ldr	x1, [x19, 8]
	ldr	w8, [x0, -4]
	ldr	s1, [x0, -8]
	b	.L2777
.L2778:
	sub	x0, x3, #8
	add	x5, x4, x0
	b	.L2779
.L2784:
	sub	x3, x3, #8
	add	x4, x1, x3
	b	.L2785
.L2757:
	add	x3, sp, 124
	add	x2, sp, 140
	mov	x0, x19
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE199:
	ldr	x0, [x19, 8]
	ldr	s1, [sp, 140]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2758
.L2792:
	add	x22, x20, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x20, 48]
	ldp	x3, x23, [x22, 16]
	ldr	x1, [x20, 72]
	sub	x4, x4, x6
	sub	x1, x1, x23
	sub	x3, x3, x0
	asr	x0, x4, 3
	asr	x1, x1, 3
	sub	x1, x1, #1
	add	x0, x0, x1, lsl 6
	add	x0, x0, x3, asr 3
	cmp	x0, x5
	beq	.L2845
	ldr	x0, [x20]
	cmp	x23, x0
	beq	.L2846
.L2795:
	mov	x0, 512
.LEHB200:
	bl	_Znwm
	ldrb	w1, [sp, 152]
	str	x0, [x23, -8]
	ldr	x0, [x20, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x0, [x22, 8]
	str	x2, [x22, 24]
	add	x2, x0, 512
	str	x2, [x22, 16]
	add	x2, x0, 504
	str	x2, [x20, 16]
	str	x28, [x0, 504]
	cbz	w1, .L2796
	b	.L2793
	.p2align 2,,3
.L2846:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
	ldr	x23, [x20, 40]
	b	.L2795
.L2759:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2760
.L2765:
	sub	x3, x3, #8
	add	x4, x0, x3
	b	.L2766
.L2845:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	_ZSt20__throw_length_errorPKc
.LEHE200:
.L2842:
.LEHB201:
	bl	_ZSt20__throw_system_errori
.LEHE201:
.L2810:
	mov	x20, x0
.L2801:
	ldr	x0, [sp, 160]
	cbz	x0, .L2802
	bl	_ZdlPv
.L2802:
	ldr	x0, [x19]
	cbz	x0, .L2803
	bl	_ZdlPv
.L2803:
	mov	x0, x20
.LEHB202:
	bl	_Unwind_Resume
.LEHE202:
.L2811:
	ldrb	w1, [sp, 152]
	mov	x20, x0
	cbz	w1, .L2801
	add	x0, sp, 144
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
	b	.L2801
	.cfi_endproc
.LFE12892:
	.section	.gcc_except_table
.LLSDA12892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12892-.LLSDACSB12892
.LLSDACSB12892:
	.uleb128 .LEHB198-.LFB12892
	.uleb128 .LEHE198-.LEHB198
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB199-.LFB12892
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L2810-.LFB12892
	.uleb128 0
	.uleb128 .LEHB200-.LFB12892
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L2811-.LFB12892
	.uleb128 0
	.uleb128 .LEHB201-.LFB12892
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L2810-.LFB12892
	.uleb128 0
	.uleb128 .LEHB202-.LFB12892
	.uleb128 .LEHE202-.LEHB202
	.uleb128 0
	.uleb128 0
.LLSDACSE12892:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE, .-_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	.section	.text._ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, %function
_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB13014:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x23, x24, [sp, 48]
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	ldp	x24, x23, [x0]
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	mov	x20, x0
	stp	x21, x22, [sp, 32]
	stp	x25, x26, [sp, 64]
	sub	x0, x23, x24
	str	x27, [sp, 80]
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	mov	x27, x2
	asr	x0, x0, 4
	mov	x2, 576460752303423487
	cmp	x0, x2
	beq	.L2865
	cmp	x0, 0
	mov	x19, x1
	sub	x26, x1, x24
	csinc	x1, x0, xzr, ne
	adds	x1, x1, x0
	bcs	.L2858
	cbnz	x1, .L2852
	mov	x25, 16
	mov	x22, 0
	mov	x21, 0
.L2857:
	add	x2, x21, x26
	ldp	x0, x1, [x27]
	stp	x0, x1, [x2]
	cmp	x19, x24
	beq	.L2853
	mov	x4, x21
	mov	x3, x24
	.p2align 3,,7
.L2854:
	ldp	x6, x7, [x3], 16
	stp	x6, x7, [x4], 16
	cmp	x3, x19
	bne	.L2854
	add	x26, x26, 16
	add	x25, x21, x26
.L2853:
	cmp	x19, x23
	beq	.L2855
	sub	x2, x23, x19
	mov	x0, x25
	mov	x1, x19
	add	x25, x25, x2
	bl	memcpy
.L2855:
	cbz	x24, .L2856
	mov	x0, x24
	bl	_ZdlPv
.L2856:
	ldp	x23, x24, [sp, 48]
	ldr	x27, [sp, 80]
	stp	x21, x25, [x20]
	str	x22, [x20, 16]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x25, x26, [sp, 64]
	ldp	x29, x30, [sp], 96
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2858:
	.cfi_restore_state
	mov	x22, 9223372036854775792
.L2851:
	mov	x0, x22
	bl	_Znwm
	mov	x21, x0
	add	x22, x0, x22
	add	x25, x0, 16
	b	.L2857
.L2852:
	cmp	x1, x2
	csel	x1, x1, x2, ls
	lsl	x22, x1, 4
	b	.L2851
.L2865:
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE13014:
	.size	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.align	2
	.p2align 4,,11
	.weak	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.type	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, %function
_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE:
.LFB12831:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA12831
	stp	x29, x30, [sp, -272]!
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	mov	x19, x0
	stp	xzr, xzr, [x8]
	str	xzr, [x8, 16]
	stp	x8, x2, [sp, 120]
	add	x0, x0, 16
	ldar	x0, [x0]
	cbz	x0, .L2866
	stp	x25, x26, [sp, 64]
	.cfi_offset 26, -200
	.cfi_offset 25, -208
	mov	x0, x1
	ldr	w25, [x19, 216]
	stp	x23, x24, [sp, 48]
	.cfi_offset 24, -216
	.cfi_offset 23, -224
	mov	x23, x1
	uxtw	x20, w25
	ldr	x1, [x19, 24]
	stp	x27, x28, [sp, 80]
	.cfi_offset 28, -184
	.cfi_offset 27, -192
	mov	x28, x3
	ldr	x4, [x19, 232]
	stp	x21, x22, [sp, 32]
	.cfi_offset 22, -232
	.cfi_offset 21, -240
	ldp	x3, x2, [x19, 304]
	madd	x1, x20, x1, x4
	ldr	x4, [x19, 256]
	str	d8, [sp, 96]
	.cfi_offset 72, -176
	add	x1, x4, x1
.LEHB203:
	blr	x3
	ldr	w0, [x19, 104]
	fmov	s8, s0
	cmp	w0, 0
	ble	.L2869
	sxtw	x27, w0
	sub	w0, w0, #1
	sub	x1, x27, #2
	add	x26, x19, 448
	sub	x0, x1, x0
	sub	x27, x27, #1
	str	x0, [sp, 136]
	add	x0, x19, 440
	str	x0, [sp, 112]
	.p2align 3,,7
.L2872:
	ldr	x0, [x19, 32]
	ldr	x1, [x19, 264]
	mul	x0, x27, x0
	ldr	x1, [x1, x20, lsl 3]
	add	x20, x1, x0
	ldrh	w22, [x1, x0]
.L3065:
	ldaxr	x0, [x26]
	add	x0, x0, 1
	stlxr	w1, x0, [x26]
	cbnz	w1, .L3065
	ldr	x1, [sp, 112]
	and	x0, x22, 65535
.L3066:
	ldaxr	x2, [x1]
	add	x2, x2, x0
	stlxr	w3, x2, [x1]
	cbnz	w3, .L3066
	cbz	w22, .L2870
	sub	w22, w22, #1
	add	x0, x20, 8
	add	x20, x20, 4
	mov	w24, 0
	add	x22, x0, x22, uxtw 2
	.p2align 3,,7
.L2877:
	ldr	w21, [x20]
	ldr	x0, [x19, 8]
	uxtw	x1, w21
	cmp	x1, x0
	bhi	.L3050
	ldr	x5, [x19, 24]
	mov	x0, x23
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	madd	x1, x1, x5, x4
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE203:
	fcmpe	s0, s8
	bmi	.L2976
.L2874:
	add	x20, x20, 4
	cmp	x20, x22
	bne	.L2877
	uxtw	x20, w25
	cbnz	w24, .L2872
	.p2align 3,,7
.L2870:
	ldr	x0, [sp, 136]
	sub	x27, x27, #1
	cmp	x0, x27
	beq	.L2869
	uxtw	x20, w25
	b	.L2872
.L2869:
	stp	xzr, xzr, [sp, 176]
	str	xzr, [sp, 192]
	add	x0, x19, 40
	ldar	x0, [x0]
	orr	x0, x28, x0
	cbz	x0, .L3051
	ldr	x20, [x19, 80]
	str	w25, [sp, 148]
	ldr	x1, [sp, 128]
	ldr	x0, [x19, 112]
	cmp	x20, x1
	csel	x20, x20, x1, cs
.LEHB204:
	bl	_ZN7hnswlib15VisitedListPool18getFreeVisitedListEv
.LEHE204:
	ldr	w2, [sp, 148]
	mov	x4, x0
	ldr	x1, [x19, 24]
	str	x4, [sp, 112]
	ldr	x3, [x19, 256]
	ldrh	w24, [x0]
	mul	x2, x2, x1
	ldr	x22, [x0, 8]
	add	x1, x3, x2
	ldr	x0, [x19, 240]
	stp	xzr, xzr, [sp, 208]
	add	x0, x1, x0
	str	xzr, [sp, 224]
	stp	xzr, xzr, [sp, 240]
	str	xzr, [sp, 256]
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L3052
	cbz	x28, .L2886
	ldr	x4, [x28]
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x0, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	ldr	x4, [x4]
	cmp	x4, x0
	bne	.L3053
.L2886:
	ldr	x1, [x19, 232]
	mov	x0, x23
	ldr	x4, [x19, 304]
	add	x1, x2, x1
	ldr	x2, [x19, 312]
	add	x1, x3, x1
.LEHB205:
	blr	x4
	ldp	x1, x0, [sp, 216]
	str	s0, [sp, 156]
	fmov	s8, s0
	cmp	x1, x0
	beq	.L3054
	ldr	w7, [sp, 148]
	fmov	s2, s0
	fmov	s1, s0
	str	s0, [x1]
	str	w7, [x1, 4]
	add	x0, x1, 8
	str	x0, [sp, 216]
.L2898:
	ldr	x4, [sp, 208]
	sub	x2, x0, x4
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2899
.L2902:
	lsl	x3, x1, 3
	lsl	x0, x0, 3
	add	x5, x4, x3
	add	x2, x4, x0
	ldr	s0, [x4, x3]
	fcmpe	s0, s2
	bmi	.L2978
.L2900:
	ldp	x1, x0, [sp, 248]
	fneg	s1, s1
	str	w7, [x2, 4]
	str	s2, [x2]
	str	s1, [sp, 160]
	cmp	x1, x0
	beq	.L2903
	ldr	w5, [sp, 148]
	add	x4, x1, 8
	str	s1, [x1]
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2904:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2905
.L2908:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2979
.L2906:
	str	w9, [x6, 4]
	str	s1, [x6]
.L2896:
	strh	w24, [x22, w5, uxtw 1]
	cmp	x4, x0
	beq	.L2909
	.p2align 3,,7
.L2913:
	ldr	s0, [x0]
	ldr	w21, [x0, 4]
	fneg	s0, s0
	fcmpe	s0, s8
	bgt	.L2980
.L2910:
	add	x0, sp, 240
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldr	x3, [x19, 24]
	uxtw	x0, w21
	ldr	x2, [x19, 240]
	mov	x21, 1
	ldr	x1, [x19, 256]
	madd	x0, x0, x3, x2
	add	x26, x1, x0
	ldrh	w25, [x1, x0]
	cbz	x25, .L2935
	adrp	x0, _ZN7hnswlib17BaseFilterFunctorclEm
	add	x27, x0, :lo12:_ZN7hnswlib17BaseFilterFunctorclEm
	b	.L2912
	.p2align 2,,3
.L3055:
	fcmpe	s0, s8
	bmi	.L2915
.L2914:
	add	x0, x21, 1
	cmp	x25, x21
	beq	.L2935
.L3057:
	mov	x21, x0
.L2912:
	ldr	w1, [x26, x21, lsl 2]
	sbfiz	x0, x1, 1, 32
	ldrh	w2, [x22, x0]
	str	w1, [sp, 152]
	cmp	w2, w24
	beq	.L2914
	ldr	x5, [x19, 24]
	uxtw	x1, w1
	ldr	x4, [x19, 232]
	ldp	x3, x2, [x19, 304]
	strh	w24, [x22, x0]
	madd	x1, x1, x5, x4
	mov	x0, x23
	ldr	x4, [x19, 256]
	add	x1, x4, x1
	blr	x3
.LEHE205:
	ldp	x1, x0, [sp, 208]
	str	s0, [sp, 156]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bls	.L3055
.L2915:
	ldp	x1, x0, [sp, 248]
	fneg	s0, s0
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2918
	ldr	w7, [sp, 152]
	add	x0, x1, 8
	str	s0, [x1]
	mov	w8, w7
	str	w7, [x1, 4]
	str	x0, [sp, 248]
.L2919:
	ldr	x3, [sp, 240]
	sub	x2, x0, x3
	asr	x0, x2, 3
	sub	x1, x0, #2
	sub	x0, x0, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x0, 0
	ble	.L2920
	.p2align 3,,7
.L2923:
	lsl	x2, x1, 3
	lsl	x0, x0, 3
	add	x5, x3, x2
	add	x4, x3, x0
	ldr	s1, [x3, x2]
	fcmpe	s1, s0
	bmi	.L2981
.L2921:
	ldr	x2, [x19, 24]
	uxtw	x7, w7
	ldr	x1, [x19, 256]
	ldr	x0, [x19, 240]
	str	w8, [x4, 4]
	madd	x7, x7, x2, x1
	str	s0, [x4]
	add	x0, x7, x0
	ldrb	w0, [x0, 2]
	tbnz	x0, 0, .L3044
	cbz	x28, .L2926
	ldr	x0, [x28]
	ldr	x2, [x0]
	cmp	x2, x27
	bne	.L3056
.L2926:
	ldp	x1, x0, [sp, 216]
	cmp	x1, x0
	beq	.L2927
	ldr	s1, [sp, 156]
	add	x2, x1, 8
	ldr	w9, [sp, 152]
	str	w9, [x1, 4]
	str	s1, [x1]
	str	x2, [sp, 216]
.L2928:
	ldr	x0, [sp, 208]
	sub	x4, x2, x0
	asr	x8, x4, 3
	sub	x1, x8, #2
	sub	x3, x8, #1
	add	x1, x1, x1, lsr 63
	asr	x1, x1, 1
	cmp	x3, 0
	ble	.L2929
	.p2align 3,,7
.L2932:
	lsl	x4, x1, 3
	lsl	x3, x3, 3
	add	x6, x0, x4
	add	x5, x0, x3
	ldr	s0, [x0, x4]
	fcmpe	s0, s1
	bmi	.L2982
.L2930:
	str	w9, [x5, 4]
	str	s1, [x5]
.L2925:
	cmp	x8, x20
	bls	.L2933
	.p2align 3,,7
.L2934:
	add	x0, sp, 208
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x2, [sp, 208]
	sub	x1, x2, x0
	cmp	x20, x1, asr 3
	bcc	.L2934
.L2933:
	cmp	x0, x2
	beq	.L2914
	ldr	s8, [x0]
	add	x0, x21, 1
	cmp	x25, x21
	bne	.L3057
.L2935:
	ldp	x0, x1, [sp, 240]
	cmp	x0, x1
	bne	.L2913
.L2909:
	adrp	x0, .LC5
	strb	wzr, [sp, 168]
	ldr	x20, [x19, 112]
	ldr	x23, [x0, #:lo12:.LC5]
	add	x0, x20, 80
	str	x0, [sp, 160]
	cbz	x23, .L2936
	bl	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	cbnz	w0, .L3058
.L2936:
	ldp	x1, x0, [x20, 16]
	mov	w2, 1
	strb	w2, [sp, 168]
	cmp	x1, x0
	beq	.L2937
	ldr	x0, [sp, 112]
	str	x0, [x1, -8]!
	str	x1, [x20, 16]
.L2938:
	ldr	x0, [sp, 160]
	cbz	x0, .L2941
	cbz	x23, .L2941
	bl	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
.L2941:
	ldr	x0, [sp, 240]
	cbz	x0, .L2943
	bl	_ZdlPv
.L2943:
	ldr	x1, [sp, 208]
	str	xzr, [sp, 208]
	ldr	x0, [sp, 176]
	str	x1, [sp, 176]
	ldr	x1, [sp, 216]
	str	x1, [sp, 184]
	ldr	x1, [sp, 224]
	str	x1, [sp, 192]
	str	xzr, [sp, 216]
	str	xzr, [sp, 224]
	cbz	x0, .L2884
	bl	_ZdlPv
	ldr	x0, [sp, 208]
	cbz	x0, .L2884
	bl	_ZdlPv
.L3060:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcs	.L3048
	.p2align 3,,7
.L3059:
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
.L2884:
	ldp	x0, x1, [sp, 176]
	ldr	x3, [sp, 128]
	sub	x2, x1, x0
	cmp	x3, x2, asr 3
	bcc	.L3059
	cmp	x1, x0
	bne	.L2958
.L3061:
	cbz	x0, .L3043
	bl	_ZdlPv
.L3043:
	ldp	x21, x22, [sp, 32]
	.cfi_restore 22
	.cfi_restore 21
	ldp	x23, x24, [sp, 48]
	.cfi_restore 24
	.cfi_restore 23
	ldp	x25, x26, [sp, 64]
	.cfi_restore 26
	.cfi_restore 25
	ldp	x27, x28, [sp, 80]
	.cfi_restore 28
	.cfi_restore 27
	ldr	d8, [sp, 96]
	.cfi_restore 72
.L2866:
	ldp	x19, x20, [sp, 16]
	ldr	x0, [sp, 120]
	ldp	x29, x30, [sp], 272
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.p2align 2,,3
.L2976:
	.cfi_def_cfa_offset 272
	.cfi_offset 19, -256
	.cfi_offset 20, -248
	.cfi_offset 21, -240
	.cfi_offset 22, -232
	.cfi_offset 23, -224
	.cfi_offset 24, -216
	.cfi_offset 25, -208
	.cfi_offset 26, -200
	.cfi_offset 27, -192
	.cfi_offset 28, -184
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	.cfi_offset 72, -176
	fmov	s8, s0
	mov	w25, w21
	mov	w24, 1
	b	.L2874
.L2978:
	sub	x3, x1, #1
	ldr	w6, [x5, 4]
	str	s0, [x4, x0]
	mov	x0, x1
	add	x3, x3, x3, lsr 63
	str	w6, [x2, 4]
	asr	x1, x3, 1
	cmp	x0, 0
	bgt	.L2902
	mov	x2, x5
	b	.L2900
	.p2align 2,,3
.L2979:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2908
	mov	x6, x7
	b	.L2906
	.p2align 2,,3
.L2981:
	sub	x2, x1, #1
	ldr	w6, [x5, 4]
	str	s1, [x3, x0]
	mov	x0, x1
	add	x2, x2, x2, lsr 63
	str	w6, [x4, 4]
	asr	x1, x2, 1
	cmp	x0, 0
	bgt	.L2923
	mov	x4, x5
	b	.L2921
	.p2align 2,,3
.L2982:
	sub	x4, x1, #1
	ldr	w7, [x6, 4]
	str	s0, [x0, x3]
	mov	x3, x1
	add	x4, x4, x4, lsr 63
	str	w7, [x5, 4]
	asr	x1, x4, 1
	cmp	x3, 0
	bgt	.L2932
	mov	x5, x6
	b	.L2930
.L3051:
	ldr	x3, [x19, 80]
	mov	x2, x23
	ldr	x0, [sp, 128]
	mov	w1, w25
	add	x8, sp, 240
	mov	x5, 0
	cmp	x3, x0
	mov	x4, 0
	csel	x3, x3, x0, cs
	mov	x0, x19
.LEHB206:
	bl	_ZNK7hnswlib15HierarchicalNSWIfE17searchBaseLayerSTILb1ELb0EEESt14priority_queueISt4pairIfjESt6vectorIS5_SaIS5_EENS1_14CompareByFirstEEjPKvmPNS_17BaseFilterFunctorEPNS_23BaseSearchStopConditionIfEE
	ldr	x1, [sp, 240]
	str	xzr, [sp, 240]
	ldr	x0, [sp, 176]
	str	x1, [sp, 176]
	ldr	x1, [sp, 248]
	str	x1, [sp, 184]
	ldr	x1, [sp, 256]
	str	x1, [sp, 192]
	str	xzr, [sp, 248]
	str	xzr, [sp, 256]
	cbz	x0, .L2884
	bl	_ZdlPv
	ldr	x0, [sp, 240]
	cbz	x0, .L2884
	bl	_ZdlPv
	b	.L3060
	.p2align 2,,3
.L3062:
	ldp	x2, x3, [sp, 240]
	stp	x2, x3, [x1], 16
	str	x1, [x4, 8]
.L2957:
	ldr	x0, [sp, 120]
	mov	x2, 0
	ldr	s0, [x1, -16]
	ldr	x3, [x1, -8]
	ldr	x0, [x0]
	sub	x4, x1, x0
	asr	x1, x4, 4
	sub	x1, x1, #1
	bl	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valISt4lessIS3_EEEEvT_T0_SF_T1_RT2_.isra.0
	add	x0, sp, 176
	bl	_ZNSt14priority_queueISt4pairIfjESt6vectorIS1_SaIS1_EEN7hnswlib15HierarchicalNSWIfE14CompareByFirstEE3popEv
	ldp	x0, x1, [sp, 176]
.L3048:
	cmp	x1, x0
	beq	.L3061
.L2958:
	ldp	x3, x1, [x19, 248]
	ldr	w2, [x0, 4]
	ldr	x4, [x19, 24]
	ldr	s0, [x0]
	madd	x2, x2, x4, x1
	ldr	x4, [sp, 120]
	ldr	x2, [x2, x3]
	str	s0, [sp, 240]
	ldp	x1, x0, [x4, 8]
	str	x2, [sp, 248]
	cmp	x1, x0
	bne	.L3062
	ldr	x20, [sp, 120]
	add	x2, sp, 240
	mov	x0, x20
	bl	_ZNSt6vectorISt4pairIfmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE206:
	ldr	x1, [x20, 8]
	b	.L2957
.L3056:
	ldr	x1, [x19, 248]
	mov	x0, x28
	ldr	x1, [x7, x1]
.LEHB207:
	blr	x2
	tst	w0, 255
	bne	.L2926
	.p2align 3,,7
.L3044:
	ldp	x0, x2, [sp, 208]
	sub	x8, x2, x0
	asr	x8, x8, 3
	b	.L2925
	.p2align 2,,3
.L2918:
	add	x3, sp, 152
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 248]
	ldr	w7, [sp, 152]
	ldr	w8, [x0, -4]
	ldr	s0, [x0, -8]
	b	.L2919
	.p2align 2,,3
.L2980:
	ldp	x1, x0, [sp, 208]
	sub	x0, x0, x1
	cmp	x20, x0, asr 3
	bne	.L2910
	b	.L2909
	.p2align 2,,3
.L2920:
	sub	x0, x2, #8
	add	x4, x3, x0
	b	.L2921
.L2927:
	add	x3, sp, 152
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE207:
	ldr	x2, [sp, 216]
	ldr	w9, [x2, -4]
	ldr	s1, [x2, -8]
	b	.L2928
.L2929:
	sub	x4, x4, #8
	add	x5, x0, x4
	b	.L2930
.L2937:
	add	x21, x20, 16
	mov	x5, 1152921504606846975
	ldp	x4, x6, [x20, 48]
	ldp	x3, x22, [x21, 16]
	ldr	x0, [x20, 72]
	sub	x4, x4, x6
	sub	x0, x0, x22
	sub	x1, x3, x1
	asr	x3, x4, 3
	asr	x0, x0, 3
	sub	x0, x0, #1
	add	x0, x3, x0, lsl 6
	add	x0, x0, x1, asr 3
	cmp	x0, x5
	beq	.L3063
	ldr	x0, [x20]
	cmp	x22, x0
	beq	.L3064
.L2940:
	mov	x0, 512
.LEHB208:
	bl	_Znwm
	ldrb	w1, [sp, 168]
	str	x0, [x22, -8]
	ldr	x0, [x20, 40]
	sub	x2, x0, #8
	ldr	x0, [x0, -8]
	str	x2, [x21, 24]
	str	x0, [x21, 8]
	add	x2, x0, 512
	str	x2, [x21, 16]
	add	x2, x0, 504
	str	x2, [x20, 16]
	ldr	x2, [sp, 112]
	str	x2, [x0, 504]
	cbz	w1, .L2941
	b	.L2938
	.p2align 2,,3
.L3064:
	mov	x0, x20
	mov	x1, 1
	bl	_ZNSt5dequeIPN7hnswlib11VisitedListESaIS2_EE17_M_reallocate_mapEmb
.LEHE208:
	ldr	x22, [x20, 40]
	b	.L2940
.L2903:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
.LEHB209:
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2904
.L3054:
	add	x3, sp, 148
	add	x2, sp, 156
	add	x0, sp, 208
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJRfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	ldr	x0, [sp, 216]
	ldr	s1, [sp, 156]
	ldr	w7, [x0, -4]
	ldr	s2, [x0, -8]
	b	.L2898
.L3053:
	ldr	x2, [x19, 248]
	mov	x0, x28
	ldr	x1, [x1, x2]
	blr	x4
	tst	w0, 255
	bne	.L2887
	ldp	x1, x0, [sp, 248]
	mvni	v0.2s, 0x80, lsl 16
	str	s0, [sp, 160]
	cmp	x1, x0
	beq	.L2889
	ldr	w5, [sp, 148]
	fmov	s1, s0
	str	s0, [x1]
	add	x4, x1, 8
	mov	w9, w5
	str	w5, [x1, 4]
	str	x4, [sp, 248]
.L2891:
	ldr	x0, [sp, 240]
	sub	x3, x4, x0
	asr	x1, x3, 3
	sub	x2, x1, #2
	sub	x1, x1, #1
	add	x2, x2, x2, lsr 63
	asr	x2, x2, 1
	cmp	x1, 0
	ble	.L2892
.L2895:
	lsl	x3, x2, 3
	lsl	x1, x1, 3
	add	x7, x0, x3
	add	x6, x0, x1
	ldr	s0, [x0, x3]
	fcmpe	s0, s1
	bmi	.L2977
.L2893:
	mov	w1, 2139095039
	fmov	s8, w1
	str	s1, [x6]
	str	w9, [x6, 4]
	b	.L2896
.L2977:
	sub	x3, x2, #1
	ldr	w8, [x7, 4]
	str	s0, [x0, x1]
	mov	x1, x2
	add	x3, x3, x3, lsr 63
	str	w8, [x6, 4]
	asr	x2, x3, 1
	cmp	x1, 0
	bgt	.L2895
	mov	x6, x7
	b	.L2893
.L3052:
	mvni	v0.2s, 0x80, lsl 16
	mov	x1, 0
	str	s0, [sp, 160]
.L2889:
	add	x3, sp, 148
	add	x2, sp, 160
	add	x0, sp, 240
	bl	_ZNSt6vectorISt4pairIfjESaIS1_EE17_M_realloc_insertIJfRjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.LEHE209:
	ldr	x4, [sp, 248]
	ldr	w5, [sp, 148]
	ldr	w9, [x4, -4]
	ldr	s1, [x4, -8]
	b	.L2891
.L2892:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2893
.L2887:
	ldr	w2, [sp, 148]
	ldr	x0, [x19, 24]
	ldr	x3, [x19, 256]
	mul	x2, x2, x0
	b	.L2886
.L2905:
	sub	x3, x3, #8
	add	x6, x0, x3
	b	.L2906
.L2899:
	sub	x2, x2, #8
	add	x2, x4, x2
	b	.L2900
.L3063:
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
.LEHB210:
	bl	_ZSt20__throw_length_errorPKc
.LEHE210:
.L3058:
.LEHB211:
	bl	_ZSt20__throw_system_errori
.LEHE211:
.L2975:
	ldrb	w1, [sp, 168]
	mov	x19, x0
	cbz	w1, .L2946
	add	x0, sp, 160
	bl	_ZNSt11unique_lockISt5mutexE6unlockEv
.L2946:
	ldr	x0, [sp, 240]
	cbz	x0, .L2949
	bl	_ZdlPv
.L2949:
	ldr	x0, [sp, 208]
	cbz	x0, .L2951
	bl	_ZdlPv
.L2951:
	ldr	x0, [sp, 176]
	cbz	x0, .L2961
	bl	_ZdlPv
.L2961:
	ldr	x0, [sp, 120]
	ldr	x0, [x0]
	cbz	x0, .L2963
	bl	_ZdlPv
.L2963:
	mov	x0, x19
.LEHB212:
	bl	_Unwind_Resume
.LEHE212:
.L2973:
	mov	x19, x0
	b	.L2951
.L2971:
	mov	x19, x0
	b	.L2961
.L2974:
	mov	x19, x0
	b	.L2946
.L3050:
	mov	x0, 16
	bl	__cxa_allocate_exception
	adrp	x1, .LC33
	mov	x20, x0
	add	x1, x1, :lo12:.LC33
.LEHB213:
	bl	_ZNSt13runtime_errorC1EPKc
.LEHE213:
	adrp	x2, _ZNSt13runtime_errorD1Ev
	adrp	x1, _ZTISt13runtime_error
	mov	x0, x20
	add	x2, x2, :lo12:_ZNSt13runtime_errorD1Ev
	add	x1, x1, :lo12:_ZTISt13runtime_error
.LEHB214:
	bl	__cxa_throw
.LEHE214:
.L2972:
	mov	x19, x0
	mov	x0, x20
	bl	__cxa_free_exception
	b	.L2961
	.cfi_endproc
.LFE12831:
	.section	.gcc_except_table
.LLSDA12831:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12831-.LLSDACSB12831
.LLSDACSB12831:
	.uleb128 .LEHB203-.LFB12831
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L2971-.LFB12831
	.uleb128 0
	.uleb128 .LEHB204-.LFB12831
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L2973-.LFB12831
	.uleb128 0
	.uleb128 .LEHB205-.LFB12831
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L2974-.LFB12831
	.uleb128 0
	.uleb128 .LEHB206-.LFB12831
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L2973-.LFB12831
	.uleb128 0
	.uleb128 .LEHB207-.LFB12831
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L2974-.LFB12831
	.uleb128 0
	.uleb128 .LEHB208-.LFB12831
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L2975-.LFB12831
	.uleb128 0
	.uleb128 .LEHB209-.LFB12831
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L2974-.LFB12831
	.uleb128 0
	.uleb128 .LEHB210-.LFB12831
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L2975-.LFB12831
	.uleb128 0
	.uleb128 .LEHB211-.LFB12831
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L2974-.LFB12831
	.uleb128 0
	.uleb128 .LEHB212-.LFB12831
	.uleb128 .LEHE212-.LEHB212
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB213-.LFB12831
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L2972-.LFB12831
	.uleb128 0
	.uleb128 .LEHB214-.LFB12831
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L2971-.LFB12831
	.uleb128 0
.LLSDACSE12831:
	.section	.text._ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,"axG",@progbits,_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE,comdat
	.size	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE, .-_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.section	.text.startup
	.align	2
	.p2align 4,,11
	.type	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, %function
_GLOBAL__sub_I__Z11flat_searchPfS_mmm:
.LFB13075:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR1
	add	x19, x19, :lo12:.LANCHOR1
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	mov	x1, x19
	adrp	x2, __dso_handle
	ldr	x19, [sp, 16]
	add	x2, x2, :lo12:__dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	adrp	x0, _ZNSt8ios_base4InitD1Ev
	add	x0, x0, :lo12:_ZNSt8ios_base4InitD1Ev
	b	__cxa_atexit
	.cfi_endproc
.LFE13075:
	.size	_GLOBAL__sub_I__Z11flat_searchPfS_mmm, .-_GLOBAL__sub_I__Z11flat_searchPfS_mmm
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z11flat_searchPfS_mmm
	.weak	_ZTSN7hnswlib14SpaceInterfaceIfEE
	.section	.rodata._ZTSN7hnswlib14SpaceInterfaceIfEE,"aG",@progbits,_ZTSN7hnswlib14SpaceInterfaceIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib14SpaceInterfaceIfEE, %object
	.size	_ZTSN7hnswlib14SpaceInterfaceIfEE, 30
_ZTSN7hnswlib14SpaceInterfaceIfEE:
	.string	"N7hnswlib14SpaceInterfaceIfEE"
	.weak	_ZTIN7hnswlib14SpaceInterfaceIfEE
	.section	.rodata._ZTIN7hnswlib14SpaceInterfaceIfEE,"aG",@progbits,_ZTIN7hnswlib14SpaceInterfaceIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib14SpaceInterfaceIfEE, %object
	.size	_ZTIN7hnswlib14SpaceInterfaceIfEE, 16
_ZTIN7hnswlib14SpaceInterfaceIfEE:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSN7hnswlib14SpaceInterfaceIfEE
	.weak	_ZTSN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTSN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTSN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTSN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTSN7hnswlib17InnerProductSpaceE, 30
_ZTSN7hnswlib17InnerProductSpaceE:
	.string	"N7hnswlib17InnerProductSpaceE"
	.weak	_ZTIN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTIN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTIN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTIN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTIN7hnswlib17InnerProductSpaceE, 24
_ZTIN7hnswlib17InnerProductSpaceE:
	.xword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.xword	_ZTSN7hnswlib17InnerProductSpaceE
	.xword	_ZTIN7hnswlib14SpaceInterfaceIfEE
	.weak	_ZTSN7hnswlib18AlgorithmInterfaceIfEE
	.section	.rodata._ZTSN7hnswlib18AlgorithmInterfaceIfEE,"aG",@progbits,_ZTSN7hnswlib18AlgorithmInterfaceIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib18AlgorithmInterfaceIfEE, %object
	.size	_ZTSN7hnswlib18AlgorithmInterfaceIfEE, 34
_ZTSN7hnswlib18AlgorithmInterfaceIfEE:
	.string	"N7hnswlib18AlgorithmInterfaceIfEE"
	.weak	_ZTIN7hnswlib18AlgorithmInterfaceIfEE
	.section	.rodata._ZTIN7hnswlib18AlgorithmInterfaceIfEE,"aG",@progbits,_ZTIN7hnswlib18AlgorithmInterfaceIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib18AlgorithmInterfaceIfEE, %object
	.size	_ZTIN7hnswlib18AlgorithmInterfaceIfEE, 16
_ZTIN7hnswlib18AlgorithmInterfaceIfEE:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTSN7hnswlib18AlgorithmInterfaceIfEE
	.weak	_ZTSN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTSN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTSN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTSN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTSN7hnswlib15HierarchicalNSWIfEE, 31
_ZTSN7hnswlib15HierarchicalNSWIfEE:
	.string	"N7hnswlib15HierarchicalNSWIfEE"
	.weak	_ZTIN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTIN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTIN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTIN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTIN7hnswlib15HierarchicalNSWIfEE, 24
_ZTIN7hnswlib15HierarchicalNSWIfEE:
	.xword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.xword	_ZTSN7hnswlib15HierarchicalNSWIfEE
	.xword	_ZTIN7hnswlib18AlgorithmInterfaceIfEE
	.weak	_ZTVN7hnswlib17InnerProductSpaceE
	.section	.rodata._ZTVN7hnswlib17InnerProductSpaceE,"aG",@progbits,_ZTVN7hnswlib17InnerProductSpaceE,comdat
	.align	3
	.type	_ZTVN7hnswlib17InnerProductSpaceE, %object
	.size	_ZTVN7hnswlib17InnerProductSpaceE, 56
_ZTVN7hnswlib17InnerProductSpaceE:
	.xword	0
	.xword	_ZTIN7hnswlib17InnerProductSpaceE
	.xword	_ZN7hnswlib17InnerProductSpace13get_data_sizeEv
	.xword	_ZN7hnswlib17InnerProductSpace13get_dist_funcEv
	.xword	_ZN7hnswlib17InnerProductSpace19get_dist_func_paramEv
	.xword	_ZN7hnswlib17InnerProductSpaceD1Ev
	.xword	_ZN7hnswlib17InnerProductSpaceD0Ev
	.weak	_ZTVN7hnswlib15HierarchicalNSWIfEE
	.section	.rodata._ZTVN7hnswlib15HierarchicalNSWIfEE,"aG",@progbits,_ZTVN7hnswlib15HierarchicalNSWIfEE,comdat
	.align	3
	.type	_ZTVN7hnswlib15HierarchicalNSWIfEE, %object
	.size	_ZTVN7hnswlib15HierarchicalNSWIfEE, 64
_ZTVN7hnswlib15HierarchicalNSWIfEE:
	.xword	0
	.xword	_ZTIN7hnswlib15HierarchicalNSWIfEE
	.xword	_ZN7hnswlib15HierarchicalNSWIfE8addPointEPKvmb
	.xword	_ZNK7hnswlib15HierarchicalNSWIfE9searchKnnEPKvmPNS_17BaseFilterFunctorE
	.xword	_ZNK7hnswlib18AlgorithmInterfaceIfE20searchKnnCloserFirstEPKvmPNS_17BaseFilterFunctorE
	.xword	_ZN7hnswlib15HierarchicalNSWIfE9saveIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.xword	_ZN7hnswlib15HierarchicalNSWIfED1Ev
	.xword	_ZN7hnswlib15HierarchicalNSWIfED0Ev
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC5:
	.xword	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC37:
	.string	"files/hnsw.index"
	.zero	1007
	.bss
	.align	3
	.set	.LANCHOR1,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 10.3.1"
	.section	.note.GNU-stack,"",@progbits
