RPCD=bin/rpcd
UBUS=bin/ubus
UHTTPD=bin/uhttpd

BUILDDIRS=ubus uci rpcd uhttpd
CMAKEFILES=$(addsuffix /CMakeCache.txt, $(BUILDDIRS))

.PHONY: $(BUILDDIRS)
	
all: $(BUILDDIRS)
	echo $@

$(BUILDDIRS): $(CMAKEFILES) 
	cd $@
	

$(CMAKEFILES): 
	$(shell cd $(dir $@); cmake .)
