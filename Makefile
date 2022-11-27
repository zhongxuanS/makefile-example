export SRC_DIR := /home/szx/make-test/src
export OBJECTS_DIR := ../objects/
SUBDIRS := $(wildcard */.)

TOPTARGETS := all clean

SUBDIRS := $(wildcard */.)

all: $(SUBDIRS) main.o
	gcc $(OBJECTS_DIR)module_a.o $(OBJECTS_DIR)module_b.o $(OBJECTS_DIR)main.o -o main

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

main.o: main.c
	gcc -c main.c
	mv main.o $(OBJECTS_DIR)/main.o

clean: $(SUBDIRS)
	-rm $(OBJECTS_DIR)*.o
	-rm main

.PHONY: $(TOPTARGETS) $(SUBDIRS)