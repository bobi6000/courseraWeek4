#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#Common files
SRC_COMM = 				\
	./main.c 			\
	./course1.c			\
	./memory.c			\
	./stats.c			\
	./data.c						

# MSP432 platform files
SRC_MSP =				\
	./interrupts_msp432p401r_gcc.c	\
	./startup_msp432p401r_gcc.c	\
	./system_msp432p401r.c

# Common files
INCLUD_COMM =  ../include/common
# MSP432 platform files
INCLUD_MSP =    ../include/msp432
# ARM architecture files
INCLUD_ARM =    ../include/CMSIS

# Paths for host platform	
ifeq ($(PLATFORM),HOST) 
	SOURCES = $(SRC_COMM)
	INCLUDES = -I$(INCLUD_COMM) 

else ifeq ($(PLATFORM),MSP432)
# Paths for msp432 platform
SOURCES = $(SRC_COMM)		\
	  $(SRC_MSP)

INCLUDES = -I$(INCLUD_COMM)	\
	   -I$(INCLUD_MSP)	\
	   -I$(INCLUD_ARM)
endif


