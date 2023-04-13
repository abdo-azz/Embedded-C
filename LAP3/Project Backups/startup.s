/* startup_cortexM3
  ENG:Abdo Azz
*/

/*
SRAM= 0X20000000
*/

.section .vectors

.word 0x20001000 /* stack top address  */
.word _reset /* Reset */
.word Vector_handler  /* NMI */
.word Vector_handler  /* Hard fault */
.word Vector_handler  /* MM fault */
.word Vector_handler  /* bus fault */
.word Vector_handler  /* Usage fault */
.word Vector_handler  /* RESERVED */
.word Vector_handler  /* RESERVED */
.word Vector_handler  /* RESERVED */
.word Vector_handler  /* RESERVED */
.word Vector_handler  /* SV call */
.word Vector_handler  /* debug reserved */
.word Vector_handler  /* RESERVED */
.word Vector_handler  /* pendSV */
.word Vector_handler  /* Systick */
.word Vector_handler  /* IRQ1 */
.word Vector_handler  /* IRQ2 */
.word Vector_handler  /* 19.... */


.section .text

_reset:
	bl main
 	b .
	.thumb_func

Vector_handler:
   b _reset