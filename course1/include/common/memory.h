/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file memory.h
 * @brief Abstraction of memory read and write operations
 *
 * This header file provides an abstraction of reading and
 * writing to memory via function calls. 
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#ifndef __MEMORY_H__
#define __MEMORY_H__

#include <stdint.h>
#include <stddef.h>

/**
 * @brief Sets a value of a data array 
 *
 * Given a pointer to a char data set, this will set a provided
 * index into that data set to the value provided.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 * @param value value to write the the locaiton
 *
 * @return void.
 */
void set_value(char * ptr, unsigned int index, char value);

/**
 * @brief Clear a value of a data array 
 *
 * Given a pointer to a char data set, this will clear a provided
 * index into that data set to the value zero.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return void.
 */
void clear_value(char * ptr, unsigned int index);

/**
 * @brief Returns a value of a data array 
 *
 * Given a pointer to a char data set, this will read the provided
 * index into that data set and return the value.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return Value to be read.
 */
char get_value(char * ptr, unsigned int index);

/**
 * @brief Sets data array elements to a value
 *
 * Given a pointer to a char data set, this will set a number of elements
 * from a provided data array to the given value. The length is determined
 * by the provided size parameter.
 *
 * @param ptr Pointer to data array
 * @param value value to write the the locaiton
 * @param size Number of elements to set to value
 *
 * @return void.
 */
void set_all(char * ptr, char value, unsigned int size);

/**
 * @brief Clears elements in a data array
 *
 * Given a pointer to a char data set, this will set a clear a number
 * of elements given the size provided. Clear means to set to zero. 
 *
 * @param ptr Pointer to data array
 * @param size Number of elements to set to zero
 *
 * @return void.
 */
void clear_all(char * ptr, unsigned int size);

/**
 * @brief This function moves data from source to destination
 *
 *
 * @param src,dst - pointers to data, one is source and one is destination
 * @param length - length of data to move from src to dst
 *
 * @return pointer to destination.
 */
uint8_t * my_memmove(uint8_t * src, uint8_t * dst, size_t length);

/**
 * @brief This function copies data from source to destination 
 *
 *
 * @param src,dst - pointers to data, one is source and one is destination
 * @param length - length of data to copy from src to dst
 *
 * @return pointer to destination.
 */

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length);
/**
 * @brief This function sets data in source
 *
 *
 * @param src - pointer to source
 * @param length - length of data to set in src
 * @param value - value of data to set in source
 *
 * @return pointer to source
 */
uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value);

/**
 * @brief This function sets zero in source
 *
 *
 * @param src - pointer to source
 * @param length - length of data to set in src
 * 
 *
 * @return pointer to source
 */
uint8_t * my_memzero(uint8_t * src, size_t length);

/**
 * @brief This function reverses the order in source
 *
 *
 * @param src - pointer to source
 * @param length - length of data to reverse in source
 *
 *
 * @return pointer to source
 */
uint8_t * my_reverse(uint8_t * src, size_t length);

/**
 * @brief This function allocates words in dnamic memory
 *
 *
 * @param size Number if words to allocate
 *
 * @return ptr - pointer to memory or NULL if operation is not successful .
 */
uint32_t * reserve_words(size_t length);

/**
 * @brief This function frees a dynamic memory which is allocated
 *  by my_reverse function
 *
 *
 * @param ptr Pointer to allocated memory
 *
 * @return void.
 */
void free_words(uint32_t * src);


#endif /* __MEMORY_H__ */
