test: code1 code2 code3 code4 code5
	./code1
	./code2 -nbr 149
	./code3
	./code4
	./code5
code1: code1.c print.o
	gcc -ggdb -no-pie -o code1 code1.c print.o
print.o: print.s
	yasm -felf64 print.s
code2: print2.o code2.c
	gcc -ggdb -no-pie -o code2 code2.c print2.o
print2.o: print2.s
	yasm -felf64 print2.s
code3: inverser3.o code3.c
	gcc -ggdb -o code3 code3.c inverser3.o
inverser3.o: inverser3.s
	yasm -felf64 inverser3.s
code4: inverser.o code3.o
	gcc -o code4 inverser.o code3.o
code3.o: code3.c
	gcc -c code3.c
inverser.o: inverser.s
	yasm -felf64 inverser.s
code5: code4.o tri_bulle.o
	gcc -o code5 code4.o tri_bulle.o
tri_bulle.o: tri_bulle.s
	yasm -felf64 tri_bulle.s
code4.o: code4.c
	gcc -c code4.c
