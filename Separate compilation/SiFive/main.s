	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"Array: ["
	.align	3
.LC2:
	.string	"%d"
	.align	3
.LC3:
	.string	", "
	.align	3
.LC4:
	.string	"]"
	.align	3
.LC5:
	.string	"result=%d"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	s3,40(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a4,0(a5)
	sd	a4,8(sp)
	ld	a4,8(a5)
	sd	a4,16(sp)
	lw	a5,16(a5)
	sw	a5,24(sp)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
	lw	a1,8(sp)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
	addi	s0,sp,8
	addi	s3,sp,24
	lui	s2,%hi(.LC3)
	lui	s1,%hi(.LC2)
.L2:
	addi	a0,s2,%lo(.LC3)
	call	printf
	lw	a1,4(s0)
	addi	a0,s1,%lo(.LC2)
	call	printf
	addi	s0,s0,4
	bne	s0,s3,.L2
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
	li	a1,5
	addi	a0,sp,8
	call	Median
	mv	a1,a0
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
	li	a0,0
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	2
	.word	4
	.word	1
	.word	3
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
