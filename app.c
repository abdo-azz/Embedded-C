#include "uart.h"
 
unsigned char tex[100]= "lern-in-depth:abdo azz" ;

void main(void)
{
Uart_send (tex);
}