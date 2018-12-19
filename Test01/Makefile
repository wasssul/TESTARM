
# project directories
src_path = src/#
obj_path = build/#
src = $(wildcard $(src_path)*.c)#
objs_tmp = $(src:.c=.o)
objs = $(subst $(src_path),$(obj_path),$(objs_tmp))
#flags = #"-mcpu\=arm926ej-s -g" 

# compile and link commands
asm = arm-none-eabi-as#
cc =  arm-none-eabi-gcc#

build: $(objs)
	echo $<

$(obj_path)%.o: $(src_path)%.c
	echo $<
	echo $@

startup.o: startup.s
	$(asm)  startup.s -o $(obj_path)startup.o

main.o: $(src)main.c 
	$(cc) -c $(src)main.c -o $(obj_path)main.o





