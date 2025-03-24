.section .data

.globl people, numpeople

numpeople:
	.quad (endpeople - people)/PERSON_RECORD_SZ
people:
	.quad 200, 2, 74, 20
	.quad 280, 2, 72, 44
	.quad 150, 1, 68, 30
	.quad 250, 3, 75, 24
	.quad 250, 2, 70, 11
	.quad 180, 5, 89, 65
	.quad 180, 2, 89, 65
endpeople:

.globl WEIGHT_OFF, HAIR_OFF, HEIGHT_OFF, AGE_OFF
.equ WEIGHT_OFF, 0
.equ HAIR_OFF, 8
.equ HEIGHT_OFF, 16
.equ AGE_OFF, 24

.global PERSON_RECORD_SZ
.equ PERSON_RECORD_SZ, 32
