# -*- mode: makefile; -*-

SUBDIRS = src

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

install:
	@for d in $(SUBDIRS); do $(MAKE) -C $$d install; done

clean:
	@for d in $(SUBDIRS); do $(MAKE) -C $$d clean; done

realclean:
	@for d in $(SUBDIRS); do $(MAKE) -C $$d realclean; done

.PHONY: clean $(SUBDIRS)
