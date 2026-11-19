	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.intel_syntax noprefix
	.file	"main.cpp"
	.def	_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb # -- Begin function _Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb
	.p2align	4
_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb: # @_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb
.Lfunc_begin0:
.seh_proc _Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 168
	.seh_stackalloc 168
	lea	rbp, [rsp + 128]
	.seh_setframe rbp, 128
	movaps	xmmword ptr [rbp + 16], xmm6    # 16-byte Spill
	.seh_savexmm xmm6, 144
	.seh_endprologue
	mov	r14d, r8d
	mov	rbx, rdx
	mov	rsi, rcx
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 16], 0
.Ltmp0:
	lea	rdx, [rip + .L.str]
	lea	rcx, [rbp - 8]
	xor	r8d, r8d
	xor	r9d, r9d
	call	BCryptOpenAlgorithmProvider
.Ltmp1:
# %bb.1:
	test	eax, eax
	js	.LBB0_28
# %bb.2:
	mov	rcx, qword ptr [rbp - 8]
.Ltmp2:
	mov	dword ptr [rsp + 32], 0
	lea	rdx, [rip + .L.str.1]
	lea	r8, [rip + .L.str.2]
	mov	r9d, 32
	call	BCryptSetProperty
.Ltmp3:
# %bb.3:
	test	eax, eax
	js	.LBB0_29
# %bb.4:
	mov	dword ptr [rbp], 0
	mov	dword ptr [rbp + 4], 0
	mov	rcx, qword ptr [rbp - 8]
.Ltmp4:
	lea	rax, [rbp + 4]
	mov	qword ptr [rsp + 32], rax
	mov	dword ptr [rsp + 40], 0
	lea	rdx, [rip + .L.str.3]
	mov	r8, rbp
	mov	r9d, 4
	call	BCryptGetProperty
.Ltmp5:
# %bb.5:
	test	eax, eax
	js	.LBB0_32
# %bb.6:
	mov	r15d, dword ptr [rbp]
	test	r15, r15
	je	.LBB0_9
# %bb.7:
.Ltmp6:
	mov	rcx, r15
	call	_Znwy
.Ltmp7:
# %bb.8:
	mov	rdi, rax
	mov	rcx, rax
	xor	edx, edx
	mov	r8, r15
	call	memset
	mov	r9d, dword ptr [rbp]
	jmp	.LBB0_10
.LBB0_9:
	xor	r9d, r9d
	xor	edi, edi
.LBB0_10:
	mov	rcx, qword ptr [rbp - 8]
.Ltmp9:
	lea	rax, [rip + _ZL3KEY]
	mov	qword ptr [rsp + 32], rax
	mov	dword ptr [rsp + 48], 0
	mov	dword ptr [rsp + 40], 16
	lea	rdx, [rbp - 16]
	mov	r8, rdi
                                        # kill: def $r9d killed $r9d killed $r9
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	BCryptGenerateSymmetricKey
.Ltmp10:
# %bb.11:
	test	eax, eax
	js	.LBB0_35
# %bb.12:
	movaps	xmm6, xmmword ptr [rip + _ZL2IV]
	movaps	xmmword ptr [rbp - 48], xmm6
	mov	dword ptr [rbp + 8], 0
	mov	byte ptr [rbp + 15], 0
	mov	rax, qword ptr [rbx]
	mov	r8, qword ptr [rbx + 8]
	cmp	rax, r8
	lea	r15, [rbp + 15]
	cmovne	r15, rax
	lea	rcx, [rip + BCryptEncrypt]
	lea	r13, [rip + BCryptDecrypt]
	test	r14b, r14b
	cmovne	r13, rcx
	mov	rcx, qword ptr [rbp - 16]
	sub	r8d, eax
.Ltmp11:
	lea	rax, [rbp + 8]
	mov	qword ptr [rsp + 64], rax
	lea	r14, [rbp - 48]
	mov	qword ptr [rsp + 32], r14
	mov	dword ptr [rsp + 72], 1
	mov	dword ptr [rsp + 56], 0
	mov	qword ptr [rsp + 48], 0
	mov	dword ptr [rsp + 40], 16
	mov	rdx, r15
                                        # kill: def $r8d killed $r8d killed $r8
	xor	r9d, r9d
	call	r13
.Ltmp12:
# %bb.13:
	test	eax, eax
	js	.LBB0_38
# %bb.14:
	mov	r12d, dword ptr [rbp + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 16], 0
	test	r12, r12
	je	.LBB0_17
# %bb.15:
.Ltmp13:
	mov	rcx, r12
	call	_Znwy
.Ltmp14:
# %bb.16:
	mov	rdi, rax
	mov	qword ptr [rsi], rax
	mov	r14, rax
	add	r14, r12
	mov	qword ptr [rsi + 16], r14
	mov	rcx, rax
	xor	edx, edx
	mov	r8, r12
	call	memset
	mov	qword ptr [rsi + 8], r14
	mov	eax, dword ptr [rbp + 8]
	lea	r14, [rbp - 48]
	jmp	.LBB0_18
.LBB0_17:
	xor	eax, eax
	xor	edi, edi
.LBB0_18:
	movaps	xmmword ptr [rbp - 48], xmm6
	mov	rcx, qword ptr [rbp - 16]
	mov	r8d, dword ptr [rbx + 8]
	sub	r8d, dword ptr [rbx]
.Ltmp16:
	lea	rdx, [rbp + 4]
	mov	qword ptr [rsp + 64], rdx
	mov	dword ptr [rsp + 56], eax
	mov	qword ptr [rsp + 48], rdi
	mov	qword ptr [rsp + 32], r14
	mov	dword ptr [rsp + 72], 1
	mov	dword ptr [rsp + 40], 16
	mov	rdx, r15
	xor	r9d, r9d
	call	r13
.Ltmp17:
# %bb.19:
	test	eax, eax
	js	.LBB0_41
# %bb.20:
	mov	edx, dword ptr [rbp + 4]
.Ltmp18:
	mov	rcx, rsi
	call	_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
.Ltmp19:
# %bb.21:
	mov	rcx, qword ptr [rbp - 24]       # 8-byte Reload
	test	rcx, rcx
	je	.LBB0_23
# %bb.22:
	call	_ZdlPv
.LBB0_23:
	mov	rcx, qword ptr [rbp - 16]
	test	rcx, rcx
	je	.LBB0_25
# %bb.24:
.Ltmp20:
	call	BCryptDestroyKey
.Ltmp21:
.LBB0_25:
	mov	rcx, qword ptr [rbp - 8]
	test	rcx, rcx
	je	.LBB0_27
# %bb.26:
.Ltmp23:
	xor	edx, edx
	call	BCryptCloseAlgorithmProvider
.Ltmp24:
.LBB0_27:
	mov	rax, rsi
	movaps	xmm6, xmmword ptr [rbp + 16]    # 16-byte Reload
	add	rsp, 168
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB0_28:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp53:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp54:
	jmp	.LBB0_30
.LBB0_29:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp50:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp51:
.LBB0_30:
.Ltmp56:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.Ltmp57:
# %bb.31:
.LBB0_32:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp44:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp45:
# %bb.33:
.Ltmp47:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.Ltmp48:
# %bb.34:
.LBB0_35:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp38:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp39:
# %bb.36:
.Ltmp41:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.Ltmp42:
# %bb.37:
.LBB0_38:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp32:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp33:
# %bb.39:
.Ltmp35:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.Ltmp36:
# %bb.40:
.LBB0_41:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	r15, rax
.Ltmp26:
	lea	rdx, [rip + .L.str.18]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp27:
# %bb.42:
.Ltmp29:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, r15
	call	__cxa_throw
.Ltmp30:
# %bb.43:
.LBB0_44:
.Ltmp28:
	mov	rbx, rax
	mov	rcx, r15
	call	__cxa_free_exception
	jmp	.LBB0_60
.LBB0_45:
.Ltmp34:
	jmp	.LBB0_47
.LBB0_46:
.Ltmp40:
.LBB0_47:
	mov	rbx, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	jmp	.LBB0_62
.LBB0_48:
.Ltmp46:
	jmp	.LBB0_51
.LBB0_49:
.Ltmp52:
	jmp	.LBB0_51
.LBB0_50:
.Ltmp55:
.LBB0_51:
	mov	rbx, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	jmp	.LBB0_66
.LBB0_52:
.Ltmp25:
	mov	rcx, rax
	call	__clang_call_terminate
.LBB0_53:
.Ltmp22:
	mov	rcx, rax
	call	__clang_call_terminate
.LBB0_54:
.Ltmp15:
	mov	rbx, rax
	jmp	.LBB0_62
.LBB0_55:
.Ltmp8:
	jmp	.LBB0_65
.LBB0_56:
.Ltmp37:
	mov	rbx, rax
	jmp	.LBB0_62
.LBB0_57:
.Ltmp43:
	mov	rbx, rax
	jmp	.LBB0_62
.LBB0_58:
.Ltmp49:
	jmp	.LBB0_65
.LBB0_59:
.Ltmp31:
	mov	rbx, rax
	mov	rdi, qword ptr [rsi]
.LBB0_60:
	test	rdi, rdi
	je	.LBB0_62
# %bb.61:
	mov	qword ptr [rsi + 8], rdi
	mov	rcx, rdi
	call	_ZdlPv
.LBB0_62:
	cmp	qword ptr [rbp - 24], 0         # 8-byte Folded Reload
	je	.LBB0_66
# %bb.63:
	mov	rcx, qword ptr [rbp - 24]       # 8-byte Reload
	call	_ZdlPv
	jmp	.LBB0_66
.LBB0_64:
.Ltmp58:
.LBB0_65:
	mov	rbx, rax
.LBB0_66:
	lea	rcx, [rbp - 16]
	call	_ZN3KeyD2Ev
	lea	rcx, [rbp - 8]
	call	_ZN9AlgorithmD2Ev
	mov	rcx, rbx
	call	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp53-.Ltmp24                #   Call between .Ltmp24 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp50-.Ltmp54                #   Call between .Ltmp54 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp44-.Ltmp57                #   Call between .Ltmp57 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp38-.Ltmp48                #   Call between .Ltmp48 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp32-.Ltmp42                #   Call between .Ltmp42 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp26-.Ltmp36                #   Call between .Ltmp36 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Lfunc_end0-.Ltmp30            #   Call between .Ltmp30 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy,"xr",discard,_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
	.globl	_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy # -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
	.p2align	4
_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy: # @_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
.seh_proc _ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 56
	.seh_stackalloc 56
	lea	rbp, [rsp + 48]
	.seh_setframe rbp, 48
	.seh_endprologue
	mov	rsi, rcx
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdi, rcx
	sub	rdi, rax
	mov	rbx, rdx
	sub	rbx, rdi
	jbe	.LBB1_6
# %bb.1:
	mov	r8, qword ptr [rsi + 16]
	mov	r9, r8
	sub	r9, rcx
	cmp	r9, rbx
	jae	.LBB1_2
# %bb.3:
	test	rdx, rdx
	js	.LBB1_9
# %bb.4:
	sub	r8, rax
	lea	rax, [r8 + r8]
	cmp	rax, rdx
	cmovbe	rax, rdx
	movabs	rcx, 4611686018427387903
	cmp	r8, rcx
	movabs	r14, 9223372036854775807
	cmovb	r14, rax
	mov	rcx, r14
	mov	qword ptr [rbp], rdx            # 8-byte Spill
	call	_Znwy
	mov	r12, rax
	mov	r15, qword ptr [rsi]
	mov	r13, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 8], r13        # 8-byte Spill
	sub	r13, r15
	add	rdi, rax
	add	r14, rax
	add	r12, qword ptr [rbp]            # 8-byte Folded Reload
	mov	rcx, rdi
	xor	edx, edx
	mov	r8, rbx
	call	memset
	mov	rbx, r15
	sub	rbx, qword ptr [rbp - 8]        # 8-byte Folded Reload
	add	rbx, rdi
	mov	rcx, rbx
	mov	rdx, r15
	mov	r8, r13
	call	memcpy
	mov	qword ptr [rsi], rbx
	mov	qword ptr [rsi + 8], r12
	mov	qword ptr [rsi + 16], r14
	test	r15, r15
	je	.LBB1_8
# %bb.5:
	mov	rcx, r15
	add	rsp, 56
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	_ZdlPv                          # TAILCALL
.LBB1_6:
	jae	.LBB1_8
# %bb.7:
	add	rax, rdx
	mov	qword ptr [rsi + 8], rax
	jmp	.LBB1_8
.LBB1_2:
	lea	rdi, [rcx + rbx]
	xor	edx, edx
	mov	r8, rbx
	call	memset
	mov	qword ptr [rsi + 8], rdi
.LBB1_8:
	add	rsp, 56
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB1_9:
	call	_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3KeyD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3KeyD2Ev,"xr",discard,_ZN3KeyD2Ev
	.globl	_ZN3KeyD2Ev                     # -- Begin function _ZN3KeyD2Ev
	.p2align	4
_ZN3KeyD2Ev:                            # @_ZN3KeyD2Ev
.Lfunc_begin1:
.seh_proc _ZN3KeyD2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rcx, qword ptr [rcx]
	test	rcx, rcx
	je	.LBB2_2
# %bb.1:
.Ltmp59:
	call	BCryptDestroyKey
.Ltmp60:
.LBB2_2:
	nop
	add	rsp, 32
	pop	rbp
	ret
.LBB2_3:
.Ltmp61:
	mov	rcx, rax
	call	__clang_call_terminate
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZN3KeyD2Ev,"xr",discard,_ZN3KeyD2Ev
	.seh_endproc
	.section	.xdata$_ZN3KeyD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin1          #     jumps to .Ltmp61
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
	.section	.text$_ZN3KeyD2Ev,"xr",discard,_ZN3KeyD2Ev
                                        # -- End function
	.def	_ZN9AlgorithmD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN9AlgorithmD2Ev,"xr",discard,_ZN9AlgorithmD2Ev
	.globl	_ZN9AlgorithmD2Ev               # -- Begin function _ZN9AlgorithmD2Ev
	.p2align	4
_ZN9AlgorithmD2Ev:                      # @_ZN9AlgorithmD2Ev
.Lfunc_begin2:
.seh_proc _ZN9AlgorithmD2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rcx, qword ptr [rcx]
	test	rcx, rcx
	je	.LBB3_2
# %bb.1:
.Ltmp62:
	xor	edx, edx
	call	BCryptCloseAlgorithmProvider
.Ltmp63:
.LBB3_2:
	nop
	add	rsp, 32
	pop	rbp
	ret
.LBB3_3:
.Ltmp64:
	mov	rcx, rax
	call	__clang_call_terminate
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZN9AlgorithmD2Ev,"xr",discard,_ZN9AlgorithmD2Ev
	.seh_endproc
	.section	.xdata$_ZN9AlgorithmD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin2          #     jumps to .Ltmp64
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
	.section	.text$_ZN9AlgorithmD2Ev,"xr",discard,_ZN9AlgorithmD2Ev
                                        # -- End function
	.def	_Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE # -- Begin function _Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE
	.p2align	4
_Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE: # @_Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE
.Lfunc_begin3:
.seh_proc _Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 48
	.seh_stackalloc 48
	lea	rbp, [rsp + 48]
	.seh_setframe rbp, 48
	.seh_endprologue
	mov	rdi, rdx
	mov	rsi, rcx
	mov	dword ptr [rbp - 4], 0
	mov	rcx, qword ptr [rdx]
	mov	edx, dword ptr [rdx + 8]
	sub	edx, ecx
	lea	r14, [rbp - 4]
	mov	qword ptr [rsp + 32], r14
	mov	r8d, 1073741825
	xor	r9d, r9d
	call	qword ptr [rip + __imp_CryptBinaryToStringW]
	test	eax, eax
	je	.LBB4_1
# %bb.4:
	mov	r15d, dword ptr [rbp - 4]
	cmp	r15, 11
	jae	.LBB4_5
# %bb.6:
	lea	eax, [r15 + r15]
	mov	byte ptr [rsi], al
	lea	rbx, [rsi + 2]
	test	r15, r15
	jne	.LBB4_7
	jmp	.LBB4_8
.LBB4_5:
	mov	rax, r15
	or	rax, 3
	lea	rcx, [rax + 1]
	cmp	rax, 11
	mov	r12d, 14
	cmovne	r12, rcx
	lea	rcx, [r12 + r12]
	call	_Znwy
	mov	rbx, rax
	mov	qword ptr [rsi + 16], rax
	or	r12, 1
	mov	qword ptr [rsi], r12
	mov	qword ptr [rsi + 8], r15
.LBB4_7:
	lea	r8, [r15 + r15]
	mov	rcx, rbx
	xor	edx, edx
	call	memset
.LBB4_8:
	mov	word ptr [rbx + 2*r15], 0
	mov	rcx, qword ptr [rdi]
	mov	edx, dword ptr [rdi + 8]
	sub	edx, ecx
	test	byte ptr [rsi], 1
	je	.LBB4_9
# %bb.10:
	mov	r9, qword ptr [rsi + 16]
	jmp	.LBB4_11
.LBB4_9:
	lea	r9, [rsi + 2]
.LBB4_11:
.Ltmp65:
	mov	qword ptr [rsp + 32], r14
	mov	r8d, 1073741825
	call	qword ptr [rip + __imp_CryptBinaryToStringW]
.Ltmp66:
# %bb.12:
	test	eax, eax
	je	.LBB4_13
# %bb.16:
	mov	edx, dword ptr [rbp - 4]
.Ltmp67:
	mov	rcx, rsi
	xor	r8d, r8d
	call	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6resizeEyw
.Ltmp68:
# %bb.17:
	mov	rax, rsi
	add	rsp, 48
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB4_1:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp75:
	lea	rdx, [rip + .L.str.4]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp76:
# %bb.2:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.LBB4_13:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rbx, rax
.Ltmp69:
	lea	rdx, [rip + .L.str.4]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp70:
# %bb.14:
.Ltmp72:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rbx
	call	__cxa_throw
.Ltmp73:
# %bb.22:
.LBB4_15:
.Ltmp71:
	mov	rdi, rax
	mov	rcx, rbx
	call	__cxa_free_exception
	jmp	.LBB4_19
.LBB4_3:
.Ltmp77:
	mov	rdi, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	mov	rcx, rdi
	call	_Unwind_Resume
.LBB4_18:
.Ltmp74:
	mov	rdi, rax
.LBB4_19:
	test	byte ptr [rsi], 1
	je	.LBB4_21
# %bb.20:
	mov	rcx, qword ptr [rsi + 16]
	call	_ZdlPv
.LBB4_21:
	mov	rcx, rdi
	call	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp65-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp75-.Ltmp68                #   Call between .Ltmp68 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp69-.Ltmp76                #   Call between .Ltmp76 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp73            #   Call between .Ltmp73 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE # -- Begin function _Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE
	.p2align	4
_Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE: # @_Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE
.Lfunc_begin4:
.seh_proc _Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 88
	.seh_stackalloc 88
	lea	rbp, [rsp + 80]
	.seh_setframe rbp, 80
	movaps	xmmword ptr [rbp - 16], xmm6    # 16-byte Spill
	.seh_savexmm xmm6, 64
	.seh_endprologue
	mov	rdi, rdx
	mov	rsi, rcx
	movzx	eax, byte ptr [rdx]
	test	al, 1
	je	.LBB5_1
# %bb.2:
	mov	rdx, qword ptr [rdi + 8]
	jmp	.LBB5_3
.LBB5_1:
	mov	edx, eax
	shr	edx
.LBB5_3:
	test	rdx, rdx
	je	.LBB5_5
# %bb.4:
	mov	ecx, edx
	and	ecx, 3
	jne	.LBB5_5
# %bb.9:
	lea	rbx, [rdi + 2]
	mov	rcx, rbx
	test	al, 1
	je	.LBB5_11
# %bb.10:
	mov	rcx, qword ptr [rdi + 16]
.LBB5_11:
	movzx	eax, word ptr [rcx + 2*rdx - 2]
	xor	r8d, r8d
	cmp	ax, 61
	sete	r8b
	cmp	rdx, 2
	jb	.LBB5_13
# %bb.12:
	xor	r9d, r9d
	cmp	ax, 61
	sete	r9b
	add	r9, 1
	cmp	word ptr [rcx + 2*rdx - 4], 61
	cmove	r8, r9
.LBB5_13:
	mov	rax, rdx
	sub	rax, r8
	xor	r8d, r8d
	jmp	.LBB5_14
	.p2align	4
.LBB5_21:                               #   in Loop: Header=BB5_14 Depth=1
	add	r8, 1
	cmp	rdx, r8
	je	.LBB5_22
.LBB5_14:                               # =>This Inner Loop Header: Depth=1
	movzx	r9d, word ptr [rcx + 2*r8]
	lea	r10d, [r9 - 48]
	cmp	r10w, 10
	jb	.LBB5_21
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=1
	mov	r10d, r9d
	and	r10d, -33
	add	r10d, -65
	cmp	r10w, 26
	jb	.LBB5_21
# %bb.16:                               #   in Loop: Header=BB5_14 Depth=1
	cmp	r9w, 43
	je	.LBB5_21
# %bb.17:                               #   in Loop: Header=BB5_14 Depth=1
	movzx	r9d, r9w
	cmp	r9d, 47
	je	.LBB5_21
# %bb.18:                               #   in Loop: Header=BB5_14 Depth=1
	cmp	r9d, 61
	jne	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_14 Depth=1
	cmp	r8, rax
	jae	.LBB5_21
.LBB5_20:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp81:
	lea	rdx, [rip + .L.str.5]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp82:
.LBB5_6:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.LBB5_22:
	mov	dword ptr [rbp - 20], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 40], xmm0
	lea	r12, [rbp - 20]
	mov	qword ptr [rsp + 32], r12
                                        # kill: def $edx killed $edx killed $rdx
	mov	r8d, 1
	xor	r9d, r9d
	call	qword ptr [rip + __imp_CryptStringToBinaryW]
	test	eax, eax
	je	.LBB5_25
# %bb.23:
	mov	r15d, dword ptr [rbp - 20]
	test	r15d, r15d
	je	.LBB5_25
# %bb.24:
	mov	eax, r15d
	and	eax, 15
	jne	.LBB5_25
# %bb.28:
	xorps	xmm6, xmm6
	movups	xmmword ptr [rsi], xmm6
	mov	qword ptr [rsi + 16], 0
	mov	rcx, r15
	call	_Znwy
	mov	r14, rax
	mov	qword ptr [rsi], rax
	lea	r13, [rax + r15]
	mov	qword ptr [rsi + 16], r13
	mov	rcx, rax
	xor	edx, edx
	mov	r8, r15
	call	memset
	mov	qword ptr [rsi + 8], r13
	movzx	edx, byte ptr [rdi]
	test	dl, 1
	je	.LBB5_29
# %bb.30:
	mov	rbx, qword ptr [rdi + 16]
	mov	edx, dword ptr [rdi + 8]
	jmp	.LBB5_31
.LBB5_29:
	shr	edx
.LBB5_31:
.Ltmp87:
	movups	xmmword ptr [rsp + 40], xmm6
	mov	qword ptr [rsp + 32], r12
	mov	rcx, rbx
	mov	r8d, 1
	mov	r9, r14
	call	qword ptr [rip + __imp_CryptStringToBinaryW]
.Ltmp88:
# %bb.32:
	test	eax, eax
	je	.LBB5_33
# %bb.36:
	mov	edx, dword ptr [rbp - 20]
.Ltmp89:
	mov	rcx, rsi
	call	_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEy
.Ltmp90:
# %bb.37:
	mov	rax, rsi
	movaps	xmm6, xmmword ptr [rbp - 16]    # 16-byte Reload
	add	rsp, 88
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB5_5:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp78:
	lea	rdx, [rip + .L.str.5]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp79:
	jmp	.LBB5_6
.LBB5_25:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp84:
	lea	rdx, [rip + .L.str.6]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp85:
	jmp	.LBB5_6
.LBB5_33:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rbx, rax
.Ltmp91:
	lea	rdx, [rip + .L.str.5]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp92:
# %bb.34:
.Ltmp94:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rbx
	call	__cxa_throw
.Ltmp95:
# %bb.41:
.LBB5_35:
.Ltmp93:
	mov	rdi, rax
	mov	rcx, rbx
	call	__cxa_free_exception
	jmp	.LBB5_39
.LBB5_27:
.Ltmp86:
	jmp	.LBB5_8
.LBB5_7:
.Ltmp80:
	jmp	.LBB5_8
.LBB5_38:
.Ltmp96:
	mov	rdi, rax
	mov	r14, qword ptr [rsi]
	test	r14, r14
	je	.LBB5_40
.LBB5_39:
	mov	qword ptr [rsi + 8], r14
	mov	rcx, r14
	call	_ZdlPv
.LBB5_40:
	mov	rcx, rdi
	call	_Unwind_Resume
.LBB5_26:
.Ltmp83:
.LBB5_8:
	mov	rdi, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	mov	rcx, rdi
	call	_Unwind_Resume
	int3
.Lfunc_end4:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp81-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin4          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp87-.Ltmp82                #   Call between .Ltmp82 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp90-.Ltmp87                #   Call between .Ltmp87 and .Ltmp90
	.uleb128 .Ltmp96-.Lfunc_begin4          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp78-.Ltmp90                #   Call between .Ltmp90 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin4          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp84-.Ltmp79                #   Call between .Ltmp79 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin4          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp91-.Ltmp85                #   Call between .Ltmp85 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin4          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin4          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp95            #   Call between .Ltmp95 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj # -- Begin function _Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj
	.p2align	4
_Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj: # @_Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj
.Lfunc_begin5:
.seh_proc _Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 104
	.seh_stackalloc 104
	lea	rbp, [rsp + 96]
	.seh_setframe rbp, 96
	movaps	xmmword ptr [rbp - 16], xmm6    # 16-byte Spill
	.seh_savexmm xmm6, 80
	.seh_endprologue
	mov	edi, r8d
	mov	rbx, rdx
	mov	rsi, rcx
	movzx	eax, byte ptr [rdx]
	test	al, 1
	je	.LBB6_1
# %bb.2:
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	je	.LBB6_4
.LBB6_6:
	lea	r14, [rbx + 2]
	mov	r8, r14
	test	al, 1
	je	.LBB6_8
# %bb.7:
	mov	r8, qword ptr [rbx + 16]
.LBB6_8:
	xorps	xmm6, xmm6
	movups	xmmword ptr [rsp + 48], xmm6
	mov	dword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 32], 0
	mov	ecx, edi
	xor	edx, edx
                                        # kill: def $r9d killed $r9d killed $r9
	call	qword ptr [rip + __imp_WideCharToMultiByte]
	test	eax, eax
	je	.LBB6_9
# %bb.11:
	mov	dword ptr [rbp - 20], edi       # 4-byte Spill
	movups	xmmword ptr [rsi], xmm6
	mov	qword ptr [rsi + 16], 0
	js	.LBB6_19
# %bb.12:
	mov	r15d, eax
	mov	r13d, eax
	mov	rcx, r13
	call	_Znwy
	mov	r12, rax
	mov	qword ptr [rsi], rax
	lea	rdi, [rax + r13]
	mov	qword ptr [rsi + 16], rdi
	mov	rcx, rax
	xor	edx, edx
	mov	r8, r13
	call	memset
	mov	qword ptr [rsi + 8], rdi
	movzx	r9d, byte ptr [rbx]
	test	r9b, 1
	je	.LBB6_13
# %bb.14:
	mov	r14, qword ptr [rbx + 16]
	mov	r9d, dword ptr [rbx + 8]
	jmp	.LBB6_15
.LBB6_1:
	mov	r9d, eax
	shr	r9d
	test	r9, r9
	jne	.LBB6_6
.LBB6_4:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 16], 0
	jmp	.LBB6_5
.LBB6_13:
	shr	r9d
.LBB6_15:
	mov	ecx, dword ptr [rbp - 20]       # 4-byte Reload
.Ltmp97:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 48], xmm0
	mov	dword ptr [rsp + 40], r15d
	mov	qword ptr [rsp + 32], r12
	xor	edx, edx
	mov	r8, r14
	call	qword ptr [rip + __imp_WideCharToMultiByte]
.Ltmp98:
.LBB6_5:
	mov	rax, rsi
	movaps	xmm6, xmmword ptr [rbp - 16]    # 16-byte Reload
	add	rsp, 104
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB6_9:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp100:
	lea	rdx, [rip + .L.str.7]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp101:
# %bb.10:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.LBB6_19:
	call	_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
.LBB6_16:
.Ltmp102:
	mov	rdi, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	mov	rcx, rdi
	call	_Unwind_Resume
.LBB6_18:
.Ltmp99:
	mov	rdi, rax
	mov	qword ptr [rsi + 8], r12
	mov	rcx, r12
	call	_ZdlPv
	mov	rcx, rdi
	call	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp97-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin5          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp100-.Ltmp98               #   Call between .Ltmp98 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin5         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp101           #   Call between .Ltmp101 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj;
	.scl	2;
	.type	32;
	.endef
	.globl	_Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj # -- Begin function _Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj
	.p2align	4
_Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj: # @_Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj
.Lfunc_begin6:
.seh_proc _Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 56
	.seh_stackalloc 56
	lea	rbp, [rsp + 48]
	.seh_setframe rbp, 48
	.seh_endprologue
	mov	edi, r8d
	mov	rsi, rcx
	mov	r8, qword ptr [rdx]
	mov	r9, qword ptr [rdx + 8]
	cmp	r8, r9
	je	.LBB7_1
# %bb.2:
	mov	rbx, rdx
	sub	r9d, r8d
	mov	dword ptr [rsp + 40], 0
	mov	qword ptr [rsp + 32], 0
	mov	ecx, edi
	xor	edx, edx
                                        # kill: def $r9d killed $r9d killed $r9
	call	qword ptr [rip + __imp_MultiByteToWideChar]
	test	eax, eax
	je	.LBB7_3
# %bb.6:
	js	.LBB7_18
# %bb.7:
	mov	r14d, eax
	movsxd	r12, eax
	cmp	eax, 11
	jae	.LBB7_8
# %bb.9:
	lea	eax, [r14 + r14]
	mov	byte ptr [rsi], al
	lea	r15, [rsi + 2]
	jmp	.LBB7_10
.LBB7_1:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 16], 0
	jmp	.LBB7_14
.LBB7_8:
	mov	rax, r12
	or	rax, 3
	lea	rcx, [rax + 1]
	cmp	rax, 11
	mov	r13d, 14
	cmovne	r13, rcx
	lea	rcx, [2*r13]
	call	_Znwy
	mov	r15, rax
	mov	qword ptr [rsi + 16], rax
	or	r13, 1
	mov	qword ptr [rsi], r13
	mov	qword ptr [rsi + 8], r12
.LBB7_10:
	lea	r8, [r12 + r12]
	mov	rcx, r15
	xor	edx, edx
	call	memset
	mov	word ptr [r15 + 2*r12], 0
	mov	r8, qword ptr [rbx]
	mov	r9d, dword ptr [rbx + 8]
	sub	r9d, r8d
	test	byte ptr [rsi], 1
	je	.LBB7_11
# %bb.12:
	mov	rax, qword ptr [rsi + 16]
	jmp	.LBB7_13
.LBB7_11:
	lea	rax, [rsi + 2]
.LBB7_13:
.Ltmp103:
	mov	dword ptr [rsp + 40], r14d
	mov	qword ptr [rsp + 32], rax
	mov	ecx, edi
	xor	edx, edx
	call	qword ptr [rip + __imp_MultiByteToWideChar]
.Ltmp104:
.LBB7_14:
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB7_3:
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp106:
	lea	rdx, [rip + .L.str.7]
	mov	rcx, rax
	call	_ZNSt13runtime_errorC1EPKc
.Ltmp107:
# %bb.4:
	lea	rdx, [rip + _ZTISt13runtime_error]
	lea	r8, [rip + _ZNSt13runtime_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.LBB7_18:
	call	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
.LBB7_5:
.Ltmp108:
	mov	rdi, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	mov	rcx, rdi
	call	_Unwind_Resume
.LBB7_15:
.Ltmp105:
	mov	rdi, rax
	test	byte ptr [rsi], 1
	je	.LBB7_17
# %bb.16:
	mov	rcx, qword ptr [rsi + 16]
	call	_ZdlPv
.LBB7_17:
	mov	rcx, rdi
	call	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp103-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin6         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp106-.Ltmp104              #   Call between .Ltmp104 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin6         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp107           #   Call between .Ltmp107 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	wmain;
	.scl	2;
	.type	32;
	.endef
	.globl	wmain                           # -- Begin function wmain
	.p2align	4
wmain:                                  # @wmain
.Lfunc_begin7:
.seh_proc wmain
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 200
	.seh_stackalloc 200
	lea	rbp, [rsp + 128]
	.seh_setframe rbp, 128
	movaps	xmmword ptr [rbp + 48], xmm6    # 16-byte Spill
	.seh_savexmm xmm6, 176
	.seh_endprologue
	mov	rsi, rdx
	mov	edi, ecx
	mov	ecx, 65001
	call	qword ptr [rip + __imp_SetConsoleCP]
	mov	ecx, 65001
	call	qword ptr [rip + __imp_SetConsoleOutputCP]
	mov	rbx, qword ptr [rip + __imp___acrt_iob_func]
	xor	ecx, ecx
	call	rbx
	mov	r14, qword ptr [rip + __imp__fileno]
	mov	rcx, rax
	call	r14
	mov	r15, qword ptr [rip + __imp__setmode]
	mov	ecx, eax
	mov	edx, 131072
	call	r15
	mov	ecx, 1
	call	rbx
	mov	rcx, rax
	call	r14
	mov	ecx, eax
	mov	edx, 131072
	call	r15
	call	qword ptr [rip + __imp_GetACP]
	mov	dword ptr [rbp + 12], eax       # 4-byte Spill
	cmp	edi, 2
	jne	.LBB8_18
# %bb.1:
	mov	rdi, qword ptr [rsi + 8]
	mov	rcx, rdi
	call	wcslen
	mov	rsi, rax
	movabs	rax, 9223372036854775800
	cmp	rsi, rax
	jae	.LBB8_105
# %bb.2:
	cmp	rsi, 11
	jae	.LBB8_3
# %bb.4:
	lea	eax, [rsi + rsi]
	mov	byte ptr [rbp + 16], al
	lea	rbx, [rbp + 18]
	test	rsi, rsi
	jne	.LBB8_5
	jmp	.LBB8_6
.LBB8_3:
	mov	rax, rsi
	or	rax, 3
	lea	rcx, [rax + 1]
	cmp	rax, 11
	mov	r14d, 14
	cmovne	r14, rcx
	lea	rcx, [r14 + r14]
	call	_Znwy
	mov	rbx, rax
	mov	qword ptr [rbp + 32], rax
	or	r14, 1
	mov	qword ptr [rbp + 16], r14
	mov	qword ptr [rbp + 24], rsi
.LBB8_5:
	mov	r8, rsi
	add	r8, rsi
	mov	rcx, rbx
	mov	rdx, rdi
	call	memmove
.LBB8_6:
	mov	word ptr [rbx + 2*rsi], 0
	movzx	eax, byte ptr [rbp + 16]
	test	al, 1
	je	.LBB8_7
# %bb.8:
	mov	rcx, qword ptr [rbp + 24]
	cmp	rcx, 6
	je	.LBB8_10
	jmp	.LBB8_16
.LBB8_7:
	mov	ecx, eax
	shr	cl
	movzx	ecx, cl
	cmp	rcx, 6
	jne	.LBB8_16
.LBB8_10:
	test	al, 1
	lea	rdx, [rbp + 18]
	mov	rcx, qword ptr [rbp + 32]
	cmovne	rdx, rcx
	cmp	word ptr [rdx], 45
	jne	.LBB8_16
# %bb.11:
	lea	rdx, [rcx + 2]
	test	al, 1
	lea	r8, [rbp + 20]
	cmovne	r8, rdx
	cmp	word ptr [r8], 45
	jne	.LBB8_16
# %bb.12:
	lea	rdx, [rcx + 4]
	test	al, 1
	lea	r8, [rbp + 22]
	cmovne	r8, rdx
	cmp	word ptr [r8], 117
	jne	.LBB8_16
# %bb.13:
	lea	rdx, [rcx + 6]
	test	al, 1
	lea	r8, [rbp + 24]
	cmovne	r8, rdx
	cmp	word ptr [r8], 116
	jne	.LBB8_16
# %bb.14:
	lea	rdx, [rcx + 8]
	test	al, 1
	lea	r8, [rbp + 26]
	cmovne	r8, rdx
	cmp	word ptr [r8], 102
	jne	.LBB8_16
# %bb.15:
	add	rcx, 10
	test	al, 1
	lea	rdx, [rbp + 28]
	cmovne	rdx, rcx
	cmp	word ptr [rdx], 56
	mov	ecx, 65001
	mov	edx, dword ptr [rbp + 12]       # 4-byte Reload
	cmove	edx, ecx
	mov	dword ptr [rbp + 12], edx       # 4-byte Spill
.LBB8_16:
	test	al, 1
	je	.LBB8_18
# %bb.17:
	mov	rcx, qword ptr [rbp + 32]
	call	_ZdlPv
.LBB8_18:
	mov	rdi, qword ptr [rip + .refptr._ZNSt3__15wcoutE]
	xorps	xmm6, xmm6
	mov	r14, qword ptr [rip + .refptr._ZNSt3__14wcinE]
	lea	r15, [rbp - 64]
	mov	r12, qword ptr [rip + .refptr._ZNSt3__15ctypeIwE2idE]
	jmp	.LBB8_19
	.p2align	4
.LBB8_94:                               #   in Loop: Header=BB8_19 Depth=1
	test	sil, sil
	jne	.LBB8_95
.LBB8_19:                               # =>This Inner Loop Header: Depth=1
	mov	r8d, 76
	mov	rcx, rdi
	lea	rdx, [rip + .L.str.9]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	mov	rcx, rax
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5flushEv
	movaps	xmmword ptr [rbp + 16], xmm6
	mov	qword ptr [rbp + 32], 0
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax - 24]
	add	rdx, r14
.Ltmp109:
	mov	rcx, r15
	call	_ZNKSt3__18ios_base6getlocEv
.Ltmp110:
# %bb.20:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp111:
	mov	rcx, r15
	mov	rdx, r12
	call	_ZNKSt3__16locale9use_facetERNS0_2idE
.Ltmp112:
# %bb.21:                               #   in Loop: Header=BB8_19 Depth=1
	mov	r8, qword ptr [rax]
.Ltmp113:
	mov	rcx, rax
	mov	dl, 10
	call	qword ptr [r8 + 88]
.Ltmp114:
# %bb.22:                               #   in Loop: Header=BB8_19 Depth=1
	mov	esi, eax
	mov	rcx, r15
	call	_ZNSt3__16localeD1Ev
.Ltmp116:
	mov	rcx, r14
	lea	rdx, [rbp + 16]
	mov	r8d, esi
	call	_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
.Ltmp117:
# %bb.23:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	mov	sil, 1
	test	byte ptr [rax + rcx + 32], 5
	jne	.LBB8_92
# %bb.24:                               #   in Loop: Header=BB8_19 Depth=1
	movzx	eax, byte ptr [rbp + 16]
	test	al, 1
	je	.LBB8_25
# %bb.26:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 24]
	cmp	rcx, 1
	je	.LBB8_28
	jmp	.LBB8_37
.LBB8_25:                               #   in Loop: Header=BB8_19 Depth=1
	mov	ecx, eax
	shr	cl
	movzx	ecx, cl
	cmp	rcx, 1
	jne	.LBB8_37
.LBB8_28:                               #   in Loop: Header=BB8_19 Depth=1
	lea	rcx, [rbp + 18]
	test	al, 1
	je	.LBB8_30
# %bb.29:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 32]
.LBB8_30:                               #   in Loop: Header=BB8_19 Depth=1
	cmp	word ptr [rcx], 48
	je	.LBB8_92
# %bb.31:                               #   in Loop: Header=BB8_19 Depth=1
	lea	rcx, [rbp + 18]
	test	al, 1
	je	.LBB8_33
# %bb.32:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 32]
.LBB8_33:                               #   in Loop: Header=BB8_19 Depth=1
	cmp	word ptr [rcx], 49
	je	.LBB8_39
# %bb.34:                               #   in Loop: Header=BB8_19 Depth=1
	lea	rcx, [rbp + 18]
	test	al, 1
	je	.LBB8_36
# %bb.35:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 32]
.LBB8_36:                               #   in Loop: Header=BB8_19 Depth=1
	cmp	word ptr [rcx], 50
	jne	.LBB8_37
.LBB8_39:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp120:
	mov	r8d, 29
	mov	rcx, rdi
	lea	rdx, [rip + .L.str.14]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp121:
# %bb.40:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp122:
	mov	rcx, rax
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5flushEv
.Ltmp123:
# %bb.41:                               #   in Loop: Header=BB8_19 Depth=1
	movaps	xmmword ptr [rbp - 64], xmm6
	mov	qword ptr [rbp - 48], 0
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax - 24]
	add	rdx, r14
.Ltmp125:
	lea	rsi, [rbp - 16]
	mov	rcx, rsi
	call	_ZNKSt3__18ios_base6getlocEv
.Ltmp126:
# %bb.42:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp127:
	mov	rcx, rsi
	mov	rdx, r12
	call	_ZNKSt3__16locale9use_facetERNS0_2idE
.Ltmp128:
# %bb.43:                               #   in Loop: Header=BB8_19 Depth=1
	mov	r8, qword ptr [rax]
.Ltmp129:
	mov	rcx, rax
	mov	dl, 10
	call	qword ptr [r8 + 88]
.Ltmp130:
# %bb.44:                               #   in Loop: Header=BB8_19 Depth=1
	mov	esi, eax
	lea	rcx, [rbp - 16]
	call	_ZNSt3__16localeD1Ev
.Ltmp132:
	mov	rcx, r14
	mov	rdx, r15
	mov	r8d, esi
	call	_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
.Ltmp133:
# %bb.45:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	test	byte ptr [rax + rcx + 32], 5
	setne	sil
	jne	.LBB8_90
# %bb.46:                               #   in Loop: Header=BB8_19 Depth=1
	movzx	eax, byte ptr [rbp + 16]
	test	al, 1
	je	.LBB8_47
# %bb.48:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 24]
	cmp	rcx, 1
	je	.LBB8_50
	jmp	.LBB8_59
	.p2align	4
.LBB8_37:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp118:
	mov	r8d, 44
	mov	rcx, rdi
	lea	rdx, [rip + .L.str.13]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp119:
# %bb.38:                               #   in Loop: Header=BB8_19 Depth=1
	xor	esi, esi
.LBB8_92:                               #   in Loop: Header=BB8_19 Depth=1
	test	byte ptr [rbp + 16], 1
	je	.LBB8_94
# %bb.93:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 32]
	call	_ZdlPv
	jmp	.LBB8_94
.LBB8_47:                               #   in Loop: Header=BB8_19 Depth=1
	mov	ecx, eax
	shr	cl
	movzx	ecx, cl
	cmp	rcx, 1
	jne	.LBB8_59
.LBB8_50:                               #   in Loop: Header=BB8_19 Depth=1
	lea	rcx, [rbp + 18]
	test	al, 1
	je	.LBB8_52
# %bb.51:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp + 32]
.LBB8_52:                               #   in Loop: Header=BB8_19 Depth=1
	cmp	word ptr [rcx], 49
	jne	.LBB8_59
# %bb.53:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp144:
	lea	r13, [rbp - 88]
	mov	rcx, r13
	mov	rdx, r15
	mov	r8d, dword ptr [rbp + 12]       # 4-byte Reload
	call	_Z6encodeRKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEEj
.Ltmp145:
# %bb.54:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp147:
	lea	rbx, [rbp - 40]
	mov	rcx, rbx
	mov	rdx, r13
	mov	r8b, 1
	call	_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb
.Ltmp148:
# %bb.55:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp150:
	lea	rcx, [rbp - 16]
	mov	rdx, rbx
	call	_Z6base64RKNSt3__16vectorIhNS_9allocatorIhEEEE
.Ltmp151:
# %bb.56:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 40]
	test	rcx, rcx
	je	.LBB8_58
# %bb.57:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 32], rcx
	call	_ZdlPv
.LBB8_58:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 88]
	test	rcx, rcx
	jne	.LBB8_66
	jmp	.LBB8_67
.LBB8_59:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp135:
	lea	rbx, [rbp - 88]
	mov	rcx, rbx
	mov	rdx, r15
	call	_Z8unbase64RKNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE
.Ltmp136:
# %bb.60:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp138:
	lea	r13, [rbp - 40]
	mov	rcx, r13
	mov	rdx, rbx
	xor	r8d, r8d
	call	_Z5cryptRKNSt3__16vectorIhNS_9allocatorIhEEEEb
.Ltmp139:
# %bb.61:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp141:
	lea	rcx, [rbp - 16]
	mov	rdx, r13
	mov	r8d, dword ptr [rbp + 12]       # 4-byte Reload
	call	_Z6decodeRKNSt3__16vectorIhNS_9allocatorIhEEEEj
.Ltmp142:
# %bb.62:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 40]
	test	rcx, rcx
	je	.LBB8_64
# %bb.63:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 32], rcx
	call	_ZdlPv
.LBB8_64:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 88]
	test	rcx, rcx
	je	.LBB8_67
# %bb.65:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 80], rcx
.LBB8_66:                               #   in Loop: Header=BB8_19 Depth=1
	call	_ZdlPv
.LBB8_67:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp153:
	mov	r8d, 24
	mov	rcx, rdi
	lea	rdx, [rip + .L.str.15]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp154:
# %bb.68:                               #   in Loop: Header=BB8_19 Depth=1
	movzx	ecx, byte ptr [rbp - 16]
	mov	r8d, ecx
	shr	r8d
	test	cl, 1
	mov	rdx, qword ptr [rbp]
	lea	rcx, [rbp - 14]
	cmove	rdx, rcx
	cmovne	r8, qword ptr [rbp - 8]
.Ltmp155:
	mov	rcx, rax
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp156:
# %bb.69:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp157:
	mov	r8d, 1
	mov	rcx, rax
	lea	rdx, [rip + .L.str.16]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp158:
# %bb.70:                               #   in Loop: Header=BB8_19 Depth=1
	test	byte ptr [rbp - 16], 1
	je	.LBB8_90
# %bb.71:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp]
	call	_ZdlPv
.LBB8_90:                               #   in Loop: Header=BB8_19 Depth=1
	test	byte ptr [rbp - 64], 1
	je	.LBB8_92
# %bb.91:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 48]
	call	_ZdlPv
	jmp	.LBB8_92
.LBB8_78:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp152:
	mov	r13, rdx
	mov	rbx, rax
	mov	rcx, qword ptr [rbp - 40]
	test	rcx, rcx
	je	.LBB8_80
# %bb.79:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 32], rcx
	call	_ZdlPv
	jmp	.LBB8_80
.LBB8_72:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp149:
	mov	r13, rdx
	mov	rbx, rax
.LBB8_80:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 88]
	test	rcx, rcx
	jne	.LBB8_86
	jmp	.LBB8_87
.LBB8_82:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp146:
	jmp	.LBB8_83
.LBB8_74:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp143:
	mov	r13, rdx
	mov	rbx, rax
	mov	rcx, qword ptr [rbp - 40]
	test	rcx, rcx
	je	.LBB8_76
# %bb.75:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 32], rcx
	call	_ZdlPv
	jmp	.LBB8_76
.LBB8_73:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp140:
	mov	r13, rdx
	mov	rbx, rax
.LBB8_76:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp - 88]
	test	rcx, rcx
	je	.LBB8_87
# %bb.77:                               #   in Loop: Header=BB8_19 Depth=1
	mov	qword ptr [rbp - 80], rcx
	jmp	.LBB8_86
.LBB8_81:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp137:
.LBB8_83:                               #   in Loop: Header=BB8_19 Depth=1
	mov	r13, rdx
	mov	rbx, rax
	jmp	.LBB8_87
.LBB8_84:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp159:
	mov	r13, rdx
	mov	rbx, rax
	test	byte ptr [rbp - 16], 1
	je	.LBB8_87
# %bb.85:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, qword ptr [rbp]
.LBB8_86:                               #   in Loop: Header=BB8_19 Depth=1
	call	_ZdlPv
.LBB8_87:                               #   in Loop: Header=BB8_19 Depth=1
	cmp	r13d, 1
	jne	.LBB8_99
# %bb.88:                               #   in Loop: Header=BB8_19 Depth=1
	mov	rcx, rbx
	call	__cxa_begin_catch
.Ltmp160:
	mov	r8d, 67
	mov	rcx, rdi
	lea	rdx, [rip + .L.str.17]
	call	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Ltmp161:
# %bb.89:                               #   in Loop: Header=BB8_19 Depth=1
.Ltmp166:
	call	__cxa_end_catch
.Ltmp167:
	jmp	.LBB8_90
.LBB8_95:
	xor	eax, eax
	movaps	xmm6, xmmword ptr [rbp + 48]    # 16-byte Reload
	add	rsp, 200
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB8_105:
	call	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
.LBB8_97:
.Ltmp168:
	jmp	.LBB8_98
.LBB8_96:
.Ltmp162:
	mov	rbx, rax
.Ltmp163:
	call	__cxa_end_catch
.Ltmp164:
	jmp	.LBB8_99
.LBB8_104:
.Ltmp165:
	mov	rcx, rax
	call	__clang_call_terminate
.LBB8_109:
.Ltmp134:
.LBB8_98:
	mov	rbx, rax
	jmp	.LBB8_99
.LBB8_108:
.Ltmp131:
	mov	rbx, rax
	lea	rcx, [rbp - 16]
	call	_ZNSt3__16localeD1Ev
.LBB8_99:
	test	byte ptr [rbp - 64], 1
	jne	.LBB8_100
# %bb.101:
	test	byte ptr [rbp + 16], 1
	jne	.LBB8_102
.LBB8_103:
	mov	rcx, rbx
	call	_Unwind_Resume
.LBB8_100:
	mov	rcx, qword ptr [rbp - 48]
	call	_ZdlPv
	test	byte ptr [rbp + 16], 1
	je	.LBB8_103
	jmp	.LBB8_102
.LBB8_106:
.Ltmp115:
	mov	rbx, rax
	lea	rcx, [rbp - 64]
	call	_ZNSt3__16localeD1Ev
	test	byte ptr [rbp + 16], 1
	je	.LBB8_103
	jmp	.LBB8_102
.LBB8_107:
.Ltmp124:
	mov	rbx, rax
	test	byte ptr [rbp + 16], 1
	je	.LBB8_103
.LBB8_102:
	mov	rcx, qword ptr [rbp + 32]
	call	_ZdlPv
	mov	rcx, rbx
	call	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table8:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp114-.Ltmp111              #   Call between .Ltmp111 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin7         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp123-.Ltmp116              #   Call between .Ltmp116 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp134-.Lfunc_begin7         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin7         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin7         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin7         #     jumps to .Ltmp146
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp147-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin7         #     jumps to .Ltmp149
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp150-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin7         #     jumps to .Ltmp152
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp135-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin7         #     jumps to .Ltmp137
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp138-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin7         #     jumps to .Ltmp140
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp141-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin7         #     jumps to .Ltmp143
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp153-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp158-.Ltmp153              #   Call between .Ltmp153 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin7         #     jumps to .Ltmp159
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp158-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Ltmp160-.Ltmp158              #   Call between .Ltmp158 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin7         # >> Call Site 17 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin7         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin7         # >> Call Site 18 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin7         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin7         # >> Call Site 19 <<
	.uleb128 .Ltmp163-.Ltmp167              #   Call between .Ltmp167 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin7         # >> Call Site 20 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin7         #     jumps to .Ltmp165
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp164-.Lfunc_begin7         # >> Call Site 21 <<
	.uleb128 .Lfunc_end7-.Ltmp164           #   Call between .Ltmp164 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	1                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                             #   Continue to action 1
	.byte	2                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 2
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 2
	.quad	_ZTISt9exception                # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	call	__cxa_begin_catch
	call	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev,"xr",discard,_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
	.globl	_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev # -- Begin function _ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
	.p2align	4
_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev: # @_ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
.seh_proc _ZNSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne200100Ev
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	lea	rcx, [rip + .L.str.19]
	call	_ZNSt3__120__throw_length_errorB8ne200100EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__120__throw_length_errorB8ne200100EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__120__throw_length_errorB8ne200100EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne200100EPKc
	.globl	_ZNSt3__120__throw_length_errorB8ne200100EPKc # -- Begin function _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.p2align	4
_ZNSt3__120__throw_length_errorB8ne200100EPKc: # @_ZNSt3__120__throw_length_errorB8ne200100EPKc
.Lfunc_begin8:
.seh_proc _ZNSt3__120__throw_length_errorB8ne200100EPKc
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rdi, rcx
	mov	ecx, 16
	call	__cxa_allocate_exception
	mov	rsi, rax
.Ltmp169:
	mov	rcx, rax
	mov	rdx, rdi
	call	_ZNSt12length_errorC2B8ne200100EPKc
.Ltmp170:
# %bb.1:
	lea	rdx, [rip + _ZTISt12length_error]
	lea	r8, [rip + _ZNSt12length_errorD1Ev]
	mov	rcx, rsi
	call	__cxa_throw
.LBB11_2:
.Ltmp171:
	mov	rdi, rax
	mov	rcx, rsi
	call	__cxa_free_exception
	mov	rcx, rdi
	call	_Unwind_Resume
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB8ne200100EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne200100EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB8ne200100EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table11:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp169-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp169
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin8         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp170           #   Call between .Ltmp170 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__120__throw_length_errorB8ne200100EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne200100EPKc
                                        # -- End function
	.def	_ZNSt12length_errorC2B8ne200100EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12length_errorC2B8ne200100EPKc,"xr",discard,_ZNSt12length_errorC2B8ne200100EPKc
	.globl	_ZNSt12length_errorC2B8ne200100EPKc # -- Begin function _ZNSt12length_errorC2B8ne200100EPKc
	.p2align	4
_ZNSt12length_errorC2B8ne200100EPKc:    # @_ZNSt12length_errorC2B8ne200100EPKc
.seh_proc _ZNSt12length_errorC2B8ne200100EPKc
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	rsi
	.seh_pushreg rsi
	sub	rsp, 40
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rsi, rcx
	call	_ZNSt11logic_errorC2EPKc
	mov	rax, qword ptr [rip + .refptr._ZTVSt12length_error]
	add	rax, 16
	mov	qword ptr [rsi], rax
	add	rsp, 40
	pop	rsi
	pop	rbp
	ret
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev,"xr",discard,_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
	.globl	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev # -- Begin function _ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
	.p2align	4
_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev: # @_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
.seh_proc _ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	sub	rsp, 32
	.seh_stackalloc 32
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	lea	rcx, [rip + .L.str.20]
	call	_ZNSt3__120__throw_length_errorB8ne200100EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.globl	_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y # -- Begin function _ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.p2align	4
_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y: # @_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
.Lfunc_begin9:
.seh_proc _ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 72
	.seh_stackalloc 72
	lea	rbp, [rsp + 64]
	.seh_setframe rbp, 64
	.seh_endprologue
	mov	rsi, rcx
	mov	byte ptr [rbp - 16], 0
	mov	qword ptr [rbp - 8], rcx
	mov	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax - 24]
	cmp	dword ptr [rcx + rax + 32], 0
	jne	.LBB14_11
# %bb.1:
	mov	rbx, r8
	mov	rdi, rdx
	mov	rcx, qword ptr [rsi + rax + 136]
	test	rcx, rcx
	je	.LBB14_3
# %bb.2:
.Ltmp172:
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5flushEv
.Ltmp173:
.LBB14_3:
	mov	byte ptr [rbp - 16], 1
	mov	rax, qword ptr [rsi]
	mov	rax, qword ptr [rax - 24]
	lea	r14, [rsi + rax]
	mov	r15, qword ptr [rsi + rax + 40]
	mov	r13d, dword ptr [rsi + rax + 8]
	movzx	r12d, word ptr [rsi + rax + 144]
	cmp	r12w, -1
	jne	.LBB14_8
# %bb.4:
.Ltmp175:
	mov	rcx, rbp
	mov	rdx, r14
	call	_ZNKSt3__18ios_base6getlocEv
.Ltmp176:
# %bb.5:
.Ltmp177:
	mov	rdx, qword ptr [rip + .refptr._ZNSt3__15ctypeIwE2idE]
	mov	rcx, rbp
	call	_ZNKSt3__16locale9use_facetERNS0_2idE
.Ltmp178:
# %bb.6:
	mov	r8, qword ptr [rax]
.Ltmp179:
	mov	rcx, rax
	mov	dl, 32
	call	qword ptr [r8 + 88]
.Ltmp180:
# %bb.7:
	mov	r12d, eax
	mov	rcx, rbp
	call	_ZNSt3__16localeD1Ev
	mov	word ptr [r14 + 144], r12w
.LBB14_8:
	and	r13d, 176
	cmp	r13d, 32
	lea	r9, [rdi + 2*rbx]
	mov	r8, rdi
	cmove	r8, r9
.Ltmp182:
	mov	word ptr [rsp + 40], r12w
	mov	qword ptr [rsp + 32], r14
	mov	rcx, r15
	mov	rdx, rdi
	call	_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Ltmp183:
# %bb.9:
	test	rax, rax
	jne	.LBB14_11
# %bb.10:
	mov	rax, qword ptr [rsi]
	mov	rax, qword ptr [rax - 24]
	lea	rcx, [rsi + rax]
	mov	edx, dword ptr [rsi + rax + 32]
	or	edx, 5
.Ltmp185:
	call	_ZNSt3__18ios_base5clearEj
.Ltmp186:
.LBB14_11:
	lea	rcx, [rbp - 16]
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
.LBB14_12:
	mov	rax, rsi
	add	rsp, 72
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB14_13:
.Ltmp187:
	jmp	.LBB14_17
.LBB14_14:
.Ltmp174:
	mov	rdi, rax
	jmp	.LBB14_19
.LBB14_15:
.Ltmp181:
	mov	rdi, rax
	mov	rcx, rbp
	call	_ZNSt3__16localeD1Ev
	jmp	.LBB14_18
.LBB14_16:
.Ltmp184:
.LBB14_17:
	mov	rdi, rax
.LBB14_18:
	lea	rcx, [rbp - 16]
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
.LBB14_19:
	mov	rcx, rdi
	call	__cxa_begin_catch
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rax - 24]
	add	rcx, rsi
.Ltmp188:
	call	_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
.Ltmp189:
# %bb.20:
	call	__cxa_end_catch
	jmp	.LBB14_12
.LBB14_21:
.Ltmp190:
	mov	rsi, rax
.Ltmp191:
	call	__cxa_end_catch
.Ltmp192:
# %bb.22:
	mov	rcx, rsi
	call	_Unwind_Resume
.LBB14_23:
.Ltmp193:
	mov	rcx, rax
	call	__clang_call_terminate
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
	.seh_endproc
	.section	.xdata$_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table14:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp172-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin9         #     jumps to .Ltmp174
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp175-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp184-.Lfunc_begin9         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp177-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp180-.Ltmp177              #   Call between .Ltmp177 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin9         #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin9         #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin9         #     jumps to .Ltmp187
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp188-.Ltmp186              #   Call between .Ltmp186 and .Ltmp188
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin9         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp191-.Ltmp189              #   Call between .Ltmp189 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin9         #     jumps to .Ltmp193
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp192-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Lfunc_end9-.Ltmp192           #   Call between .Ltmp192 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y,"xr",discard,_ZNSt3__124__put_character_sequenceB8ne200100IwNS_11char_traitsIwEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_y
                                        # -- End function
	.def	_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ # -- Begin function _ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4
_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: # @_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
.Lfunc_begin10:
.seh_proc _ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	r13
	.seh_pushreg r13
	push	r12
	.seh_pushreg r12
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 56
	.seh_stackalloc 56
	lea	rbp, [rsp + 48]
	.seh_setframe rbp, 48
	.seh_endprologue
	test	rcx, rcx
	je	.LBB15_35
# %bb.1:
	mov	rdi, r9
	mov	rbx, r8
	mov	rsi, rcx
	mov	r12, qword ptr [rbp + 112]
	mov	rax, r9
	sub	rax, rdx
	sar	rax
	mov	r13, qword ptr [r12 + 24]
	xor	r14d, r14d
	sub	r13, rax
	cmovg	r14, r13
	mov	r15, r8
	sub	r15, rdx
	sar	r15
	test	r15, r15
	jle	.LBB15_3
# %bb.2:
	mov	rax, qword ptr [rsi]
	mov	rcx, rsi
	mov	r8, r15
	call	qword ptr [rax + 96]
	cmp	rax, r15
	jne	.LBB15_35
.LBB15_3:
	test	r14, r14
	jle	.LBB15_31
# %bb.4:
	movabs	rax, 9223372036854775800
	cmp	r14, rax
	jae	.LBB15_38
# %bb.5:
	cmp	r14, 11
	jae	.LBB15_9
# %bb.6:
	lea	eax, [r14 + r14]
	mov	byte ptr [rbp - 16], al
	lea	rax, [rbp - 14]
	jmp	.LBB15_10
.LBB15_9:
	mov	rax, r14
	or	rax, 3
	lea	rcx, [rax + 1]
	cmp	rax, 11
	mov	r15d, 14
	cmovne	r15, rcx
	lea	rcx, [r15 + r15]
	call	_Znwy
	mov	qword ptr [rbp], rax
	or	r15, 1
	mov	qword ptr [rbp - 16], r15
	mov	qword ptr [rbp - 8], r14
.LBB15_10:
	movzx	ecx, word ptr [rbp + 120]
	cmp	r13, 4
	jae	.LBB15_13
# %bb.11:
	mov	r8, rax
.LBB15_12:
	mov	r9, r13
	jmp	.LBB15_22
.LBB15_13:
	cmp	r13, 16
	jae	.LBB15_15
# %bb.14:
	xor	edx, edx
	jmp	.LBB15_19
.LBB15_15:
	mov	rdx, r13
	and	rdx, -16
	movd	xmm0, ecx
	pshuflw	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0]
	xor	r8d, r8d
	.p2align	4
.LBB15_16:                              # =>This Inner Loop Header: Depth=1
	movdqu	xmmword ptr [rax + 2*r8], xmm0
	movdqu	xmmword ptr [rax + 2*r8 + 16], xmm0
	add	r8, 16
	cmp	rdx, r8
	jne	.LBB15_16
# %bb.17:
	cmp	r13, rdx
	je	.LBB15_24
# %bb.18:
	test	r13b, 12
	je	.LBB15_37
.LBB15_19:
	mov	r10, r13
	and	r10, -4
	lea	r8, [rax + 2*r10]
	mov	r9d, r13d
	and	r9d, 3
	movd	xmm0, ecx
	pshuflw	xmm0, xmm0, 0                   # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	.p2align	4
.LBB15_20:                              # =>This Inner Loop Header: Depth=1
	movq	qword ptr [rax + 2*rdx], xmm0
	add	rdx, 4
	cmp	r10, rdx
	jne	.LBB15_20
# %bb.21:
	cmp	r13, r10
	je	.LBB15_24
.LBB15_22:
	xor	edx, edx
	.p2align	4
.LBB15_23:                              # =>This Inner Loop Header: Depth=1
	mov	word ptr [r8 + 2*rdx], cx
	add	rdx, 1
	cmp	r9, rdx
	jne	.LBB15_23
.LBB15_24:
	mov	word ptr [rax + 2*r14], 0
	test	byte ptr [rbp - 16], 1
	je	.LBB15_26
# %bb.25:
	mov	rdx, qword ptr [rbp]
	jmp	.LBB15_27
.LBB15_26:
	lea	rdx, [rbp - 14]
.LBB15_27:
	mov	rax, qword ptr [rsi]
.Ltmp194:
	mov	rcx, rsi
	mov	r8, r14
	call	qword ptr [rax + 96]
.Ltmp195:
# %bb.28:
	mov	r15, rax
	test	byte ptr [rbp - 16], 1
	je	.LBB15_30
# %bb.29:
	mov	rcx, qword ptr [rbp]
	call	_ZdlPv
.LBB15_30:
	cmp	r15, r14
	jne	.LBB15_35
.LBB15_31:
	sub	rdi, rbx
	sar	rdi
	test	rdi, rdi
	jle	.LBB15_33
# %bb.32:
	mov	rax, qword ptr [rsi]
	mov	rcx, rsi
	mov	rdx, rbx
	mov	r8, rdi
	call	qword ptr [rax + 96]
	cmp	rax, rdi
	jne	.LBB15_35
.LBB15_33:
	mov	qword ptr [r12 + 24], 0
	jmp	.LBB15_36
.LBB15_35:
	xor	esi, esi
.LBB15_36:
	mov	rax, rsi
	add	rsp, 56
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB15_37:
	lea	r8, [rax + 2*rdx]
	and	r13d, 15
	jmp	.LBB15_12
.LBB15_38:
	call	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE20__throw_length_errorB8ne200100Ev
.LBB15_39:
.Ltmp196:
	mov	rsi, rax
	test	byte ptr [rbp - 16], 1
	je	.LBB15_41
# %bb.40:
	mov	rcx, qword ptr [rbp]
	call	_ZdlPv
.LBB15_41:
	mov	rcx, rsi
	call	_Unwind_Resume
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.seh_endproc
	.section	.xdata$_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table15:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp194-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin10        #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp195          #   Call between .Ltmp195 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_,"xr",discard,_ZNSt3__116__pad_and_outputB8ne200100IwNS_11char_traitsIwEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
                                        # -- End function
	.def	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
	.globl	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev # -- Begin function _ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
	.p2align	4
_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev: # @_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
.Lfunc_begin11:
.seh_proc _ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	rsi
	.seh_pushreg rsi
	sub	rsp, 40
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rax]
	mov	rdx, qword ptr [rdx - 24]
	cmp	qword ptr [rax + rdx + 40], 0
	je	.LBB16_8
# %bb.1:
	cmp	dword ptr [rax + rdx + 32], 0
	jne	.LBB16_8
# %bb.2:
	test	byte ptr [rax + rdx + 9], 32
	je	.LBB16_8
# %bb.3:
	mov	rsi, rcx
	call	_ZSt19uncaught_exceptionsv
	test	eax, eax
	jne	.LBB16_8
# %bb.4:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	mov	rcx, qword ptr [rax + rcx + 40]
	mov	rax, qword ptr [rcx]
.Ltmp197:
	call	qword ptr [rax + 48]
.Ltmp198:
# %bb.5:
	cmp	eax, -1
	jne	.LBB16_8
# %bb.6:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rcx - 24]
	lea	rcx, [rax + rdx]
	mov	edx, dword ptr [rax + rdx + 32]
	or	edx, 1
.Ltmp199:
	call	_ZNSt3__18ios_base5clearEj
.Ltmp200:
.LBB16_8:
	nop
	add	rsp, 40
	pop	rsi
	pop	rbp
	ret
.LBB16_7:
.Ltmp201:
	mov	rcx, rax
	call	__cxa_begin_catch
.Ltmp202:
	call	__cxa_end_catch
.Ltmp203:
	jmp	.LBB16_8
.LBB16_9:
.Ltmp204:
	mov	rcx, rax
	call	__clang_call_terminate
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
	.seh_endproc
	.section	.xdata$_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table16:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp197-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp200-.Ltmp197              #   Call between .Ltmp197 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin11        #     jumps to .Ltmp201
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp200-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp202-.Ltmp200              #   Call between .Ltmp200 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin11        #     jumps to .Ltmp204
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev,"xr",discard,_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE6sentryD2Ev
                                        # -- End function
	.def	_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_,"xr",discard,_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.globl	_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ # -- Begin function _ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	4
_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: # @_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
.Lfunc_begin12:
.seh_proc _ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	push	rbp
	.seh_pushreg rbp
	push	r15
	.seh_pushreg r15
	push	r14
	.seh_pushreg r14
	push	rsi
	.seh_pushreg rsi
	push	rdi
	.seh_pushreg rdi
	push	rbx
	.seh_pushreg rbx
	sub	rsp, 40
	.seh_stackalloc 40
	lea	rbp, [rsp + 32]
	.seh_setframe rbp, 32
	.seh_endprologue
	mov	rbx, rdx
	mov	rsi, rcx
	mov	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax - 24]
	add	rcx, rax
	mov	edx, dword ptr [rsi + rax + 32]
	test	edx, edx
	je	.LBB17_1
# %bb.25:
	or	edx, 4
	jmp	.LBB17_26
.LBB17_1:
	mov	edi, r8d
	mov	rcx, qword ptr [rcx + 136]
	test	rcx, rcx
	je	.LBB17_3
# %bb.2:
	call	_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5flushEv
	mov	rax, qword ptr [rsi]
	mov	rax, qword ptr [rax - 24]
	cmp	dword ptr [rsi + rax + 32], 0
	jne	.LBB17_27
.LBB17_3:
	test	byte ptr [rbx], 1
	jne	.LBB17_4
# %bb.5:
	mov	word ptr [rbx + 2], 0
	mov	byte ptr [rbx], 0
	jmp	.LBB17_6
.LBB17_4:
	mov	rax, qword ptr [rbx + 16]
	mov	word ptr [rax], 0
	mov	qword ptr [rbx + 8], 0
.LBB17_6:
	xor	r14d, r14d
	movabs	r15, 9223372036854775799
	.p2align	4
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsi]
	mov	rax, qword ptr [rax - 24]
	mov	rcx, qword ptr [rsi + rax + 40]
	mov	rax, qword ptr [rcx + 24]
	cmp	rax, qword ptr [rcx + 32]
	je	.LBB17_8
# %bb.9:                                #   in Loop: Header=BB17_7 Depth=1
	lea	rdx, [rax + 2]
	mov	qword ptr [rcx + 24], rdx
	movzx	eax, word ptr [rax]
	jmp	.LBB17_10
	.p2align	4
.LBB17_8:                               #   in Loop: Header=BB17_7 Depth=1
	mov	rax, qword ptr [rcx]
.Ltmp205:
	call	qword ptr [rax + 80]
.Ltmp206:
.LBB17_10:                              #   in Loop: Header=BB17_7 Depth=1
	cmp	ax, -1
	je	.LBB17_20
# %bb.11:                               #   in Loop: Header=BB17_7 Depth=1
	cmp	ax, di
	je	.LBB17_12
# %bb.13:                               #   in Loop: Header=BB17_7 Depth=1
.Ltmp208:
	mov	rcx, rbx
	mov	edx, eax
	call	_ZNSt3__112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE9push_backEw
.Ltmp209:
# %bb.14:                               #   in Loop: Header=BB17_7 Depth=1
	add	r14, -1
	test	byte ptr [rbx], 1
	je	.LBB17_7
# %bb.15:                               #   in Loop: Header=BB17_7 Depth=1
	cmp	qword ptr [rbx + 8], r15
	jne	.LBB17_7
# %bb.16:
	mov	edx, 4
	jmp	.LBB17_22
.LBB17_20:
	xor	eax, eax
	test	r14, r14
	sete	al
	lea	edx, [4*rax + 2]
	jmp	.LBB17_22
.LBB17_12:
	xor	edx, edx
.LBB17_22:
	mov	rax, qword ptr [rsi]
	mov	rax, qword ptr [rax - 24]
	lea	rcx, [rsi + rax]
	or	edx, dword ptr [rsi + rax + 32]
.LBB17_26:
	call	_ZNSt3__18ios_base5clearEj
.LBB17_27:
	mov	rax, rsi
	add	rsp, 40
	pop	rbx
	pop	rdi
	pop	rsi
	pop	r14
	pop	r15
	pop	rbp
	ret
.LBB17_30:
.Ltmp207:
	jmp	.LBB17_18
.LBB17_17:
.Ltmp210:
.LBB17_18:
	mov	rcx, rax
	call	__cxa_begin_catch
	mov	rax, qword ptr [rsi]
	mov	rcx, qword ptr [rax - 24]
	or	dword ptr [rsi + rcx + 32], 1
	mov	rax, qword ptr [rax - 24]
	test	byte ptr [rsi + rax + 36], 1
	jne	.LBB17_19
# %bb.21:
	call	__cxa_end_catch
	mov	edx, 1
	jmp	.LBB17_22
.LBB17_19:
.Ltmp211:
	call	__cxa_rethrow
.Ltmp212:
# %bb.29:
.LBB17_23:
.Ltmp213:
	mov	rsi, rax
.Ltmp214:
	call	__cxa_end_catch
.Ltmp215:
# %bb.24:
	mov	rcx, rsi
	call	_Unwind_Resume
.LBB17_28:
.Ltmp216:
	mov	rcx, rax
	call	__clang_call_terminate
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_,"xr",discard,_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.seh_endproc
	.section	.xdata$_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table17:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp205-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin12        #     jumps to .Ltmp207
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp208-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin12        #     jumps to .Ltmp210
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp209-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp211-.Ltmp209              #   Call between .Ltmp209 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin12        #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin12        #     jumps to .Ltmp216
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp215-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Lfunc_end12-.Ltmp215          #   Call between .Ltmp215 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_,"xr",discard,_ZNSt3__17getlineB8ne200100IwNS_11char_traitsIwEENS_9allocatorIwEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
                                        # -- End function
	.section	.rdata,"dr"
	.p2align	1, 0x0                          # @.str
.L.str:
	.short	65                              # 0x41
	.short	69                              # 0x45
	.short	83                              # 0x53
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.1
.L.str.1:
	.short	67                              # 0x43
	.short	104                             # 0x68
	.short	97                              # 0x61
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	103                             # 0x67
	.short	77                              # 0x4d
	.short	111                             # 0x6f
	.short	100                             # 0x64
	.short	101                             # 0x65
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.2
.L.str.2:
	.short	67                              # 0x43
	.short	104                             # 0x68
	.short	97                              # 0x61
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	103                             # 0x67
	.short	77                              # 0x4d
	.short	111                             # 0x6f
	.short	100                             # 0x64
	.short	101                             # 0x65
	.short	67                              # 0x43
	.short	66                              # 0x42
	.short	67                              # 0x43
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.3
.L.str.3:
	.short	79                              # 0x4f
	.short	98                              # 0x62
	.short	106                             # 0x6a
	.short	101                             # 0x65
	.short	99                              # 0x63
	.short	116                             # 0x74
	.short	76                              # 0x4c
	.short	101                             # 0x65
	.short	110                             # 0x6e
	.short	103                             # 0x67
	.short	116                             # 0x74
	.short	104                             # 0x68
	.short	0                               # 0x0

	.p2align	4, 0x0                          # @_ZL3KEY
_ZL3KEY:
	.asciz	"Bar12345Bar12345"

	.p2align	4, 0x0                          # @_ZL2IV
_ZL2IV:
	.asciz	"sayangsamakhanza"

.L.str.4:                               # @.str.4
	.asciz	"Base64 gagal."

	.section	.rdata$_ZTISt13runtime_error,"dr",discard,_ZTISt13runtime_error
	.globl	_ZTISt13runtime_error           # @_ZTISt13runtime_error
	.p2align	3, 0x0
_ZTISt13runtime_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt13runtime_error
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt13runtime_error,"dr",discard,_ZTSSt13runtime_error
	.globl	_ZTSSt13runtime_error           # @_ZTSSt13runtime_error
_ZTSSt13runtime_error:
	.asciz	"St13runtime_error"

	.section	.rdata$_ZTISt9exception,"dr",discard,_ZTISt9exception
	.globl	_ZTISt9exception                # @_ZTISt9exception
	.p2align	3, 0x0
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception

	.section	.rdata$_ZTSSt9exception,"dr",discard,_ZTSSt9exception
	.globl	_ZTSSt9exception                # @_ZTSSt9exception
_ZTSSt9exception:
	.asciz	"St9exception"

	.section	.rdata,"dr"
.L.str.5:                               # @.str.5
	.asciz	"Base64 tidak valid."

.L.str.6:                               # @.str.6
	.asciz	"Base64 atau panjang ciphertext tidak valid."

.L.str.7:                               # @.str.7
	.asciz	"Gagal mengubah encoding teks."

	.p2align	1, 0x0                          # @.str.9
.L.str.9:
	.short	10                              # 0xa
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	32                              # 0x20
	.short	75                              # 0x4b
	.short	104                             # 0x68
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	122                             # 0x7a
	.short	97                              # 0x61
	.short	32                              # 0x20
	.short	69                              # 0x45
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	114                             # 0x72
	.short	121                             # 0x79
	.short	112                             # 0x70
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	47                              # 0x2f
	.short	32                              # 0x20
	.short	68                              # 0x44
	.short	101                             # 0x65
	.short	99                              # 0x63
	.short	114                             # 0x72
	.short	121                             # 0x79
	.short	112                             # 0x70
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	61                              # 0x3d
	.short	10                              # 0xa
	.short	91                              # 0x5b
	.short	49                              # 0x31
	.short	93                              # 0x5d
	.short	32                              # 0x20
	.short	69                              # 0x45
	.short	110                             # 0x6e
	.short	99                              # 0x63
	.short	114                             # 0x72
	.short	121                             # 0x79
	.short	112                             # 0x70
	.short	116                             # 0x74
	.short	10                              # 0xa
	.short	91                              # 0x5b
	.short	50                              # 0x32
	.short	93                              # 0x5d
	.short	32                              # 0x20
	.short	68                              # 0x44
	.short	101                             # 0x65
	.short	99                              # 0x63
	.short	114                             # 0x72
	.short	121                             # 0x79
	.short	112                             # 0x70
	.short	116                             # 0x74
	.short	10                              # 0xa
	.short	91                              # 0x5b
	.short	48                              # 0x30
	.short	93                              # 0x5d
	.short	32                              # 0x20
	.short	69                              # 0x45
	.short	120                             # 0x78
	.short	105                             # 0x69
	.short	116                             # 0x74
	.short	10                              # 0xa
	.short	80                              # 0x50
	.short	105                             # 0x69
	.short	108                             # 0x6c
	.short	105                             # 0x69
	.short	104                             # 0x68
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	58                              # 0x3a
	.short	32                              # 0x20
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.13
.L.str.13:
	.short	80                              # 0x50
	.short	105                             # 0x69
	.short	108                             # 0x6c
	.short	105                             # 0x69
	.short	104                             # 0x68
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	32                              # 0x20
	.short	116                             # 0x74
	.short	105                             # 0x69
	.short	100                             # 0x64
	.short	97                              # 0x61
	.short	107                             # 0x6b
	.short	32                              # 0x20
	.short	118                             # 0x76
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	105                             # 0x69
	.short	100                             # 0x64
	.short	46                              # 0x2e
	.short	32                              # 0x20
	.short	77                              # 0x4d
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	117                             # 0x75
	.short	107                             # 0x6b
	.short	107                             # 0x6b
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	32                              # 0x20
	.short	49                              # 0x31
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	50                              # 0x32
	.short	44                              # 0x2c
	.short	32                              # 0x20
	.short	97                              # 0x61
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	117                             # 0x75
	.short	32                              # 0x20
	.short	48                              # 0x30
	.short	46                              # 0x2e
	.short	10                              # 0xa
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.14
.L.str.14:
	.short	80                              # 0x50
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	32                              # 0x20
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	107                             # 0x6b
	.short	115                             # 0x73
	.short	32                              # 0x20
	.short	108                             # 0x6c
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	117                             # 0x75
	.short	32                              # 0x20
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	107                             # 0x6b
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	32                              # 0x20
	.short	69                              # 0x45
	.short	110                             # 0x6e
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	58                              # 0x3a
	.short	32                              # 0x20
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.15
.L.str.15:
	.short	10                              # 0xa
	.short	72                              # 0x48
	.short	97                              # 0x61
	.short	115                             # 0x73
	.short	105                             # 0x69
	.short	108                             # 0x6c
	.short	32                              # 0x20
	.short	40                              # 0x28
	.short	115                             # 0x73
	.short	105                             # 0x69
	.short	108                             # 0x6c
	.short	97                              # 0x61
	.short	107                             # 0x6b
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	32                              # 0x20
	.short	115                             # 0x73
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	105                             # 0x69
	.short	110                             # 0x6e
	.short	41                              # 0x29
	.short	58                              # 0x3a
	.short	10                              # 0xa
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.16
.L.str.16:
	.short	10                              # 0xa
	.short	0                               # 0x0

	.p2align	1, 0x0                          # @.str.17
.L.str.17:
	.short	73                              # 0x49
	.short	110                             # 0x6e
	.short	112                             # 0x70
	.short	117                             # 0x75
	.short	116                             # 0x74
	.short	32                              # 0x20
	.short	116                             # 0x74
	.short	105                             # 0x69
	.short	100                             # 0x64
	.short	97                              # 0x61
	.short	107                             # 0x6b
	.short	32                              # 0x20
	.short	118                             # 0x76
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	105                             # 0x69
	.short	100                             # 0x64
	.short	32                              # 0x20
	.short	97                              # 0x61
	.short	116                             # 0x74
	.short	97                              # 0x61
	.short	117                             # 0x75
	.short	32                              # 0x20
	.short	100                             # 0x64
	.short	101                             # 0x65
	.short	107                             # 0x6b
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	112                             # 0x70
	.short	115                             # 0x73
	.short	105                             # 0x69
	.short	32                              # 0x20
	.short	103                             # 0x67
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	97                              # 0x61
	.short	108                             # 0x6c
	.short	46                              # 0x2e
	.short	32                              # 0x20
	.short	80                              # 0x50
	.short	101                             # 0x65
	.short	114                             # 0x72
	.short	105                             # 0x69
	.short	107                             # 0x6b
	.short	115                             # 0x73
	.short	97                              # 0x61
	.short	32                              # 0x20
	.short	116                             # 0x74
	.short	101                             # 0x65
	.short	107                             # 0x6b
	.short	115                             # 0x73
	.short	32                              # 0x20
	.short	100                             # 0x64
	.short	97                              # 0x61
	.short	110                             # 0x6e
	.short	32                              # 0x20
	.short	99                              # 0x63
	.short	111                             # 0x6f
	.short	98                              # 0x62
	.short	97                              # 0x61
	.short	32                              # 0x20
	.short	108                             # 0x6c
	.short	97                              # 0x61
	.short	103                             # 0x67
	.short	105                             # 0x69
	.short	46                              # 0x2e
	.short	10                              # 0xa
	.short	0                               # 0x0

.L.str.18:                              # @.str.18
	.asciz	"Operasi AES gagal atau data tidak valid."

.L.str.19:                              # @.str.19
	.asciz	"vector"

	.section	.rdata$_ZTISt12length_error,"dr",discard,_ZTISt12length_error
	.globl	_ZTISt12length_error            # @_ZTISt12length_error
	.p2align	3, 0x0
_ZTISt12length_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12length_error
	.quad	_ZTISt11logic_error

	.section	.rdata$_ZTSSt12length_error,"dr",discard,_ZTSSt12length_error
	.globl	_ZTSSt12length_error            # @_ZTSSt12length_error
_ZTSSt12length_error:
	.asciz	"St12length_error"

	.section	.rdata$_ZTISt11logic_error,"dr",discard,_ZTISt11logic_error
	.globl	_ZTISt11logic_error             # @_ZTISt11logic_error
	.p2align	3, 0x0
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt11logic_error,"dr",discard,_ZTSSt11logic_error
	.globl	_ZTSSt11logic_error             # @_ZTSSt11logic_error
_ZTSSt11logic_error:
	.asciz	"St11logic_error"

	.section	.rdata,"dr"
.L.str.20:                              # @.str.20
	.asciz	"basic_string"

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZNSt3__14wcinE,"dr",discard,.refptr._ZNSt3__14wcinE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__14wcinE
.refptr._ZNSt3__14wcinE:
	.quad	_ZNSt3__14wcinE
	.section	.rdata$.refptr._ZNSt3__15ctypeIwE2idE,"dr",discard,.refptr._ZNSt3__15ctypeIwE2idE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__15ctypeIwE2idE
.refptr._ZNSt3__15ctypeIwE2idE:
	.quad	_ZNSt3__15ctypeIwE2idE
	.section	.rdata$.refptr._ZNSt3__15wcoutE,"dr",discard,.refptr._ZNSt3__15wcoutE
	.p2align	3, 0x0
	.globl	.refptr._ZNSt3__15wcoutE
.refptr._ZNSt3__15wcoutE:
	.quad	_ZNSt3__15wcoutE
	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.addrsig
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3KEY
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSSt13runtime_error
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZNSt3__15wcoutE
	.addrsig_sym _ZNSt3__14wcinE
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTSSt11logic_error
	.addrsig_sym _ZNSt3__15ctypeIwE2idE
