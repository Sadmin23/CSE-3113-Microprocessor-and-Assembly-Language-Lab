ENTRY(Reset_Handler)

MEMORY
{
    FLASH(rx): ORIGIN = 0x08000000, LENGTH = 512K
    SRAM(rwx): ORIGIN = 0x20000000, LENGTH = 128K
}

SECTIONS
{
    .text :
    {
        *(.isr_vector)
        *(.text)
        *(.rodata)
        . = ALIGN(4);
        _end_of_text = .;
    } > FLASH

    .data :
    {
        _start_of_data = .;
        *(.data)
        . = ALIGN(4);
        _end_of_data = .;
    } > SRAM AT > FLASH

    .bss :
    {
        _start_of_bss = .;
        *(.bss)
        *(COMMON)
        . = ALIGN(4);
        _end_of_bss = .;
    } > SRAM
}