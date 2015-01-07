#
## Simple Makefile to test that we handle >1 subdir in PROJECT_OBJDIR.
#
ifeq (,$(filter $(PROJECT_OBJDIR)%,$(CURDIR)))
#
## Executed from where the Makefile is located.
#
include target.mk
.PHONY: all
all:
	echo wtf ifeq

else
#
## Executed from our build directory.
#

VPATH = $(SRCDIR)

include rules.mk
 
PROG := $(OBJDIR)/a.out

all: $(PROG)

$(PROG): $(OBJDIR)/zero.o
	$(LINK.cpp) $^ $(LDLIBS) -o $@

endif
