
# project name
proj_name = Test01
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
ld =  arm-none-eabi-ld#

build: $(objs) $(obj_path)startup.o
	$(ld) -T default.ld $(objs) $(obj_path)startup.o  -o $(obj_path)$(proj_name).elf
#	echo $<

# rule to compile all c files in src to o files in buod
$(obj_path)%.o: $(src_path)%.c
	$(cc) -c $< -o $@
#rule for startup	
$(obj_path)startup.o: startup.s
	$(asm)  startup.s -o $(obj_path)startup.o
#
clean:
	rm -r $(obj_path)*.*
	ls -al $(obj_path)



