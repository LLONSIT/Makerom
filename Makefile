#****************************************
#                                       #
#	Simple Makefile for Makerom     #
#                                       #
#                                       #
#                                       #
#****************************************



all:
	@gcc -Wall -pedantic -pedantic -DNON_MATCHING -g -O2 -I include -c src/*

clean:
	@rm *.o
