#include "common.h"
BEGIN
    CLEAR
    in $0x60, %al
    mov %al, %cl
loop:
    /* Store the scancode to al. */
    in $0x60, %al
    cmp %al, %cl
    jz loop
    mov %al, %cl
    PRINT_HEX <%al>
    PRINT_NEWLINE
    jmp loop
