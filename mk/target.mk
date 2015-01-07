
#
## Where we will store object files.
#
OBJDIR := $(PROJECT_OBJDIR)/$(subst $(dir $(PROJECT_OBJDIR)),,$(CURDIR))

ifndef SRCDIR
	SRCDIR=$(CURDIR)
endif

#
## Magic to run Make from the object directory rather than source directory.
#
MAKETARGET = $(MAKE) --no-print-directory -C $@ -f $(CURDIR)/Makefile \
							  SRCDIR=$(SRCDIR) OBJDIR=$(OBJDIR) \
							  $(MAKECMDGOALS) all
.PHONY: $(OBJDIR)
$(OBJDIR):
	[ -d $@ ] || mkdir -p $@
	$(MAKETARGET)

#
## Don't try to 'make' Makefiles.
#
Makefile : ;
%.mk : ;

#
## Make sure a matching OBJDIR gets created.
#
% :: $(OBJDIR) ; :

.PHONY: clean
clean:
	rm -rf $(OBJDIR)

