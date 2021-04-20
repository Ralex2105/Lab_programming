	.file	"Median.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	Median
	.type	Median, @function
Median:
	mv	t3,a0
	ble	a1,zero,.L8
	addiw	a2,a1,-1
	slli	a5,a2,32
	srli	a2,a5,30
	addi	a5,a0,4
	add	a2,a2,a5
	mv	a7,a0
	li	a0,0
	li	t1,0
	li	t4,2
	j	.L3
.L4:
	bge	a5,zero,.L5
	addiw	a6,a6,1
.L5:
	addi	a4,a4,4
	beq	a4,a2,.L11
.L6:
	lw	a5,0(a4)
	subw	a5,a1,a5
	ble	a5,zero,.L4
	addiw	a3,a3,1
	j	.L5
.L11:
	subw	a3,a3,a6
	addiw	a3,a3,1
	bgtu	a3,t4,.L7
	mv	a0,a1
.L7:
	addi	a7,a7,4
	beq	a7,a2,.L2
.L3:
	lw	a1,0(a7)
	mv	a4,t3
	mv	a3,t1
	mv	a6,t1
	j	.L6
.L8:
	li	a0,0
.L2:
	ret
	.size	Median, .-Median
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
