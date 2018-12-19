
# project directories

src = src#
out = build#
#flags = #"-mcpu\=arm926ej-s -g" 

# compile and link commands
asm = arm-none-eabi-as#
cc =  arm-none-eabi-gcc#

build: startup.o main.o

startup.o: startup.s
	$(asm)  startup.s -o $(out)/startup.o

main.o: $(src)/main.c 
	$(cc) -c $(src)/main.c -o $(out)/main.o





