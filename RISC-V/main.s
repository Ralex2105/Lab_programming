# main.s
.global __start


#Секция данных:  
.data
  array:
    .word 3,1,0,2,4,6,5
  size:
    .word 7
    
.text
__start:

  addi sp, sp, -16	# выделение памяти в стеке
  sw ra, 12(sp)		# сохранение ra

  la a0, array          # \
  lw a1, size           #    MedianSub(array, size);
  call MedianSub        # /
  
  lw ra, 12(sp)		# восстановление ra
  addi sp, sp, 16	# освобождение памяти в стеке

  li a1, 0
  li a0, 17
  ecall 