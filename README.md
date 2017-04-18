# 逆波兰计算器 C 实现

学习 `C` 及 `C++` 时根据课程的内容写了个 `逆波兰` 的计算器。主要以此为载体，学习 make  cmake 。

## make V1

```makefile

OBJS = main.o getch.o getop.o stack.o

calc : $(OBJS)
	cc -o calc $(OBJS)
main.o : main.c calc.h
getch.o : getch.c
getop.o : getop.c calc.h
stack.o : stack.c calc.h
clean :
	rm -rf $(OBJS) calc
```

## make V2

```makefile
SRCS = $(wildcard *.c)
OBJS =$(patsubst %.c,%.o,$(SRCS))
TARGET = calc
.PHONY: clean all post-install pre-install
OUTPUT = build

all : pre-install $(TARGET) post-install

$(TARGET) : $(OBJS)
	$(CC) -o $@ $^

%.o : %.c
	$(CC) $< -c -o $@ 

pre-install : 
	@if [ ! -d ${OUTPUT} ]; \
            then  mkdir ${OUTPUT}; \
    fi;
post-install :
	mv $(TARGET) $(OBJS) $(OUTPUT)
clean :
	rm -rf $(OUTPUT)
```

## cmake





## 参考

- https://cs.nju.edu.cn/gchen/teaching/np/kernighan-ritchie/kandr.html
- https://cmake.org/
- https://www.gnu.org/software/make/manual/make.html


