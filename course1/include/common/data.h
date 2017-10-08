/* 
*@file data.h
*
*/
#include <stdint.h>
#include <math.h>

#define  BASE_16 16U
#define  BASE_10 10U

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);


int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);
