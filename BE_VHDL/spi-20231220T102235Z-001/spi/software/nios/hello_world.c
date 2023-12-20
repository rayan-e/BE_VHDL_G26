/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <math.h>

#include "system.h"

#include "alt_types.h"

#include "altera_avalon_pio_regs.h"

unsigned char data;




int main()
{
	while(1){
	data = IORD_ALTERA_AVALON_PIO_DATA(DATA_IN_BASE);
	IOWR_ALTERA_AVALON_PIO_DATA(DATA_OUT_BASE, data);

	printf("DATA = %d \n",data);
	usleep(8000000);}
  return 0;
}

