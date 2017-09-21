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
 * @file stats.h 
 * @brief Header file with  declarations of functions from stats.c
 *
 * File includes declarations and documentation functions and variables.  
 *
 * @author pawel stanak
 * @date 01.08.2017
 *
 */
#ifndef __STATS_H__
#define __STATS_H__
//definition of structure
typedef struct  {
 char median;
 char mean;
 char max;
 char min;
}STAT;


extern STAT statistic;

/**
* @brief Function prints the statistics of data array e.g. minimum, maximum, mean and median value.
* @param s - structure with statistic values
* 
*
*/
void print_statistics ( STAT s);

/**
* @brief Function prints data array.
* @param *arr - pointer to array
* @param size - size of array
* @return
*/
void print_array(unsigned char *arr, char size);

/**
* @brief Function calculates median value of data set.
* @param *arr - pointer to array
* @param size - size of array
* @return median value of data
*/
int find_median (unsigned char *arr,char size);

/**
* @brief Function calculates mean value of data set .
* @param *arr - pointer to array
* @param size - size of array
* @return  mean value from data array
*/
char find_mean(unsigned char *arr,char size);

/**
* @brief Function searches maximum value in data set.
* @param *arr - pointer to array
* @param size - size of array
* @return maximal value from data array
*/
int find_maximum(unsigned char *arr, char size);

/**
* @brief Function searches minimum value in data set.
* @param *arr - pointer to array
* @param size - size of array
* @return  minimal value from data array
*/
int find_minimum(unsigned char *arr, char size);

/**
* @brief Function sorts data from minimal to maximal value.
* @param *arr - pointer to array
* @param size - size of array
*/
void sort_array(unsigned char *arr,char size);



#endif /* __STATS_H__ */
