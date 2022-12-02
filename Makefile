#****************************************
#                                       #
#	Simple Makefile for Makerom     #
#                                       #
#                                       #
#                                       #
#****************************************



all:
	@gcc -DNON_MATCHING -O2 -c src/*

clean:
	@rm *.o
