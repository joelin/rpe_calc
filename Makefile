OBJS = main.o getch.o getop.o stack.o

calc : $(OBJS)
	cc -o calc $(OBJS)
main.o : main.c calc.h
getch.o : getch.c
getop.o : getop.c calc.h
stack.o : stack.c calc.h
clean :
	rm -rf $(OBJS) calc