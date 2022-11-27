module_b.o: module_b.c
	gcc -c $<
	cp $@ $(SRC_DIR)/$(OBJECTS_DIR)

.PHONY: clean
clean:
	-rm *.o