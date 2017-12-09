
c=gcc
cc=-Wall -Werror -g -c
s=$(wildcard *.c)
s1=$(patsubst %.c,%.o,$(s))

.PHONY:clear

essai_fap:$(s1)
	$(c) -pg -o $@ $^ -lm

essai_fap.o:essai_fap.c
	$(c) -pg $(cc) --include memory.h $<

fap_bug.o:fap_bug.c
	$(c) -pg $(cc) --include memory.h $<

memory.o:memory.c
	$(c) -pg $(cc) $<

clear:
	@rm *.o essai_fap
