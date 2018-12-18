#dcd
src = $(wildcard *.txt)#
out = $(src:.txt=.o)#

all : $(out)
%.o : %.txt
	cp $< $@
	echo $<
	
	