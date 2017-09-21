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
 * @file stats.c 
 * @brief File includes functions for  analyze data.
 *
 * In fils There are eight functions to analyze data set in array.
 *
 * @author pawel staniak
 * @date 01.08.2017
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

/* Structure declaration*/
STAT statistic;

void main() {

/* Data array*/
  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  printf("=========Array before sorting=============\n");
  print_array(test,SIZE);
  statistic.max=find_maximum(test,SIZE);
  statistic.min=find_minimum(test,SIZE);
  statistic.mean=find_mean(test,SIZE);
  sort_array(test,SIZE);
  printf("=========Array after sorting=============\n");
  print_array(test,SIZE);
  statistic.median=find_median(test,SIZE);
  printf("=========Statistic data of array=============\n");
  print_statistics (statistic);
}

void print_statistics ( STAT s){

	printf("Max value od data = %d \n",s.max);
	printf("Min value od data = %d \n",s.min);
	printf("Mean value od data = %d \n",s.mean);
	printf("Median value od data = %d \n",s.median);

}

void print_array (unsigned char *arr,char size){
unsigned int i=0U;

 for (i=0;i<size;i++)
	printf("index=%d \t value=%d \n",i,*(arr+i));
}

int find_median (unsigned char *arr,char size){
unsigned char  median;
 if(size%2==0U)
	median=(*(arr+size/2)+*(arr+1+size/2))/2;
 else median=-1;
return median;
}

char find_mean (unsigned char *arr,char size){

unsigned int i=0U;
unsigned int mean=0U;

 for(i=0;i<size;i++)
  	mean+=*(arr+i);
 
mean/=size;
return (char)mean;
}

int find_maximum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char max=0U;
max=*arr;
 for(i=0;i<size;i++){
  if(max<=*(arr+i))max=*(arr+i);
 }

return max;
}

int find_minimum (unsigned char *arr, char size){
unsigned int i=0U;
unsigned char min=0U;
min=*arr;
 for(i=0;i<size;i++){
  if(min>=*(arr+i))min=*(arr+i);
 }

return min;
}

void sort_array(unsigned char *arr,char size){
unsigned char i=0U,j=0U,buf=0U;
 for(i=0;i<size;i++)
	for(j=1;j<size;j++)
		if(*(arr+j-1)<*(arr+j)){
		buf=*(arr+j);
		*(arr+j)=*(arr+j-1);
		*(arr+j-1)=buf;
		}
}


