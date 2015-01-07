ifeq (,$(filter $(PROJECT_OBJDIR)%,$(CURDIR)))
#
## Executed from where the Makefile is located.
#

SRCDIR = $(CURDIR)/src
include target.mk

else

#
## Executed from our build directory.
#
 
VPATH = $(SRCDIR)

PROG   = app
OBJECTS = main.o
OBJPROG = $(addprefix $(OBJDIR)/, $(PROG))

all: $(PROG)

$(PROG): $(OBJPROG)

$(OBJPROG): $(addprefix $(OBJDIR)/, $(OBJECTS))
	$(LINK.cpp) $^ $(LDLIBS) -o $@

include rules.mk

endif
