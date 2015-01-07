
#
## Remove most built built in rules.
#
.SUFFIXES:


#
## Don't waste time trying to rebuild makefiles.
#
Makefile : ;
%.mk :: ;


#
## Compile C source to .o file.
#
$(OBJDIR)/%.o : %.c
	$(COMPILE.c) $< -o $@


#
## Compile C++ source to .o file.
#
$(OBJDIR)/%.o : %.cpp
	$(COMPILE.cpp) $< -o $@

