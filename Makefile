default:
	clear
	flex -l test.l
	bison -dv test.y 
	gcc -o test test.tab.c main.c -lfl
