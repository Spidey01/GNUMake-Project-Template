Simple template and example for building projects with GNU Make.

This may work with other decent make programs like BSD Make but I don't test on that much.

Object files get put in ./obj/{module}.

Includable makefile magic is in ./mk.

It would be easy to extend this with a concept of ./dist or using something like ./obj/FreeBSD/clang/amd64 instead of ./obj.
