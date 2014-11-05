##############################################################################
##                              FREXXWARE
##############################################################################
##
## Project: Frexx C Preprocessor
## $Source: /home/user/start/cpp/RCS/makefile,v $
## $Revision: 1.3 $
## $Date: 1994/06/02 09:11:24 $
## $Author: start $
## $State: Exp $
## $Locker:  $
##
##############################################################################
## $Log: makefile,v $
# Revision 1.3  1994/06/02  09:11:24  start
# Now uses 'gcc' and -O!
#
# Revision 1.2  1993/11/11  07:16:39  start
# New stuff
#
# Revision 1.1  1993/11/03  09:19:28  start
# Initial revision
#
##
##############################################################################

# Frexx PreProcessor Makefile

DEFINES     = -Dunix -Dpdc -DUNIX -DDEBUG
FILECPP     = fcpp
CC          = cl
CFLAGS      = $(DEFINES)
.SUFFIXES: .obj .c .c~ .h .h~ .a .i
FILEOBJS    = cpp1.obj cpp2.obj cpp3.obj cpp4.obj cpp5.obj cpp6.obj usecpp.obj


all: $(FILECPP)

$(FILECPP): $(FILEOBJS)
	$(CC) $(FILEOBJS) /Fe$(FILECPP) /I"$(INCLUDE)" /MT /link /LIBPATH:"$(LIBPATH)"

{.}.c{.}.obj ::
    @echo compiling $<
	$(CC) $(CFLAGS) /c $< /I"$(INCLUDE)"

cpp1.obj:cpp1.c
cpp2.obj:cpp2.c
cpp3.obj:cpp3.c
cpp4.obj:cpp4.c
cpp5.obj:cpp5.c
cpp6.obj:cpp6.c
usecpp.obj:usecpp.c

clean :
	rm -f *.obj $(FILECPP)
