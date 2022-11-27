module_a.o: module_a.c
	gcc -c $<
	cp $@ $(SRC_DIR)/$(OBJECTS_DIR)

.PHONY: clean
clean:
	-rm *.o