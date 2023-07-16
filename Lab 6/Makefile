CC=arm-none-eabi-gcc # CC stands for cross compiler

MACH=cortex-m4 # Here we choose the Machine Architecture to be cortex-m4
CFLAGS = -c -mcpu=$(MACH) -mthumb -std=gnu11 -Wall -O0 # We now set the Compiler Flags

# -c: Stops at the compiler stage, and doesn't do linking
# -mcpu: which cpu architecture is this code being made for
# -mthumb: used to specify thumb mode 
# -std=gnu11: using the GNU 11 Language Standard 
# -Wall: Shows all warnings
# -O0: No optimization is needed 

LDFLAGS = -nostdlib -T stm32_ls.ld -Wl,-Map=final.map



all:main.o CLOCK.o stm32_startup.o final.elf


# $^ denotes dependency
# $@ denotes target

main.o:main.c
	$(CC) $(CFLAGS) -o $@ $^

CLOCK.o:CLOCK.c
	$(CC) $(CFLAGS) -o $@ $^

stm32_startup.o:stm32_startup.c
	$(CC) $(CFLAGS) -o $@ $^

final.elf: main.o CLOCK.o stm32_startup.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	del /Q *.o *.elf *.map

load:
	openocd -f board/stm32f4discovery.cfg