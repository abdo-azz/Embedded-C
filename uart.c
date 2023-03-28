#include "uart.h"
#define uart0dr *((volatile unsigned int*)((unsigned int*)0x101f1000))
void Uart_send (unsigned char* p_string)
{
while(*p_string !='\0')
{
uart0dr= (unsigned int) (*p_string);
p_string++;

}

}