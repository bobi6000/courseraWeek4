/*
*@file data.c
*@author pawel staniak
*
*/

#include "data.h"


uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){

uint8_t length=0U,pos_stop=0U,pos_start=0U,res=0U;
char temp=0;

 if(data==0U) *(ptr+(length++))='0';
 else if (data>0){

	while(data!=0U){
	res=data%base;
	*(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
	data/=base;
	pos_stop=length-1;
	}

	while(pos_start<pos_stop){
	temp=*(ptr+pos_start);
	*(ptr+pos_start)=*(ptr+pos_stop);
	*(ptr+pos_stop)=temp;
	pos_start++;
	pos_stop--;
	}

 }
 else if (data<0 && base!=10){
	
	data=0xffffffff+data+0x00000001;
       while(data!=0U){
        res=data%base;
        *(ptr+(length++))=(res>9)?(res-10)+'a' : res+'0';
        data/=base;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
        temp=*(ptr+pos_start);
        *(ptr+pos_start)=*(ptr+pos_stop);
        *(ptr+pos_stop)=temp;
        pos_start++;
        pos_stop--;
        }

 }
 else{
	data=-data;
	*(ptr+(length++))='-';
	pos_start++;
   	while(data!=0U){
        res=data%10;
        *(ptr+(length++))=( res+'0');
        data/=10;
        pos_stop=length-1;
        }

        while(pos_start<pos_stop){
        temp=*(ptr+pos_start);
        *(ptr+pos_start)=*(ptr+pos_stop);
        *(ptr+pos_stop)=temp;
        pos_start++;
        pos_stop--;
        }

 }


 	*(ptr+length)='\0';

	return length;
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){

	uint8_t i=0U,negative=0U;
	int32_t val=0,val2=0,val3=0;

	if(*(ptr)=='-'){
	negative=1U;
	i++;
	}



 while(*(ptr+i)!='\0'){

	if(*(ptr+i)=='a' || *(ptr+i)=='b' ||*(ptr+i)=='c' ||*(ptr+i)=='d' ||*(ptr+i)=='e' ||*(ptr+i)=='f')
		val= *(ptr+i)-'a'+10;
	else val= *(ptr+i)-'0';

	val2=pow(base,digits-1-i);

	val3+=val*val2;
	i++;
 }
	if(negative)val3*=-1;
	return val3;
}


