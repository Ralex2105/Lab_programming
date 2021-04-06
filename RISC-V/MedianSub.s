.global MedianSub
.text
MedianSub:
  #Addr(a[0]) -> a0
  #size -> a1

Median:
 li t0 4                    #Для увелечения индекса массива
 li t1 0                    #Sizecopy1 = size
 add t1 t1 a1
 li t2 0                    #Sizecopy2 = size
 add t2 t2 a1
 li t3 0                    #bigger = 0
 li t4 0                    #smaller = 0
 li t5 0                    #result = 0 
 li t6 0                    #variable = array[i] - array[j]
 li s6 0                    #const = 0
 li s7 1                    #const = 1
 add a2 a2 a0               #a2 = элемент i
 add a3 a3 a0               #a3 = элемент j
 
loop:
 lw s1 0(a3)                #Значение массива 
 lw s2 0(a2) 
 li t6 0                    #Обнуление variable
 add t6 s1 s6               #variable = array[i]
 add t5 t6 s6               #result = variable = array[i]
 add t6 s2 s6               #variable = array[j]
 bgtu t6 t5 biggerplus      #if(array[j] > array [i]) goto bigger++
 beq t5 t6 afterbiggerplus  #if(array[j] == array [i]) goto afterbigger++
 add t4 t4 s7               #smaller++
 j afterbiggerplus          #jump to aterbiggerplus
biggerplus:
 add t3 t3 s7               #bigger++
afterbiggerplus:
 sub t1 t1 s7               #sizecopy1--
 bgtu t1 s6 instructionB    #if(sizecopy1>0) goto instructionB
 j afterinstrB              #jump to afterinstrB
instructionB:
 add a2 a2 t0               #Сдвигаем i на 1: i++
 j loop                     #повторяем loop
afterinstrB:
 sub a4 t3 t4               #a4 = smaller - bigger \
 bgeu s7 a4 end             #                        сравнение |bigger - smaller| <= 1
 sub a4 t4 t3               #a4 = bigger - smaller    
 bgeu s7 a4 end             #                      /
 li t1 0
 add t1 t1 a1               #восстанавливаем sizecopy1 = size
 sub t2 t2 s7               #sizecopy2--
 bgtu t2 s6 instructionA    #if(sc2 > 0) goto instructionA
 j afterinstructionA        #jump to instructionA
instructionA: 
 li a2 0                    #Восстанавливаем первый элемент массива array[i = 0] 
 add a2 a2 a0
 li t3 0                    #Восстанавливаем bigger = 0
 li t4 0                    #Восстанавливаем smaller = 0
 li t5 0                    #Восстанавливаем result = 0
 add a3 a3 t0               #Сдвигаем j на 1: j++
 j loop                     #повторяем loop
afterinstructionA: 
 j end                      #Заканчиваем прогамму 
end:
  li a0 1                    # \
  mv a1 t5                   # -  вывод рузельтата в консоль
  ecall         
  ret