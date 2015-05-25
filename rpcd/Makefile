CFLAGS=-I../libjson-c -I../uci -I../ -I../ubus -Iinclude

RPCD_SOURCES=main.c exec.c session.c uci.c plugin.c
RPCD_OBJECTS=$(patsubst %.c,%.o,$(RPCD_SOURCES))

rpcd: $(RPCD_OBJECTS)
	$(CC) -o $@ $(RPCD_OBJECTS) -L../libubox -L../ubus -L../uci -L../libjson-c -luci -lubus -lubox -ljson-c -lc -ldl -lcrypt
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: libjson-c
libjson-c: 
	$(shell cd ../libjson-c && ./configure && make)
