// How to run assembler code on MacOS:
// as helloworld.s -o helloworld.o
// ld helloworld.o -o helloworld -lSystem -syslibroot $(xcrun -sdk macosx --show-sdk-path) -e _start -arch arm64
// ./helloworld

.global _start
.align 2

_start:
    mov x0, #1
    adr x1, msg
    mov x2, #14
    mov x16, #4
    svc #0x80

    mov x0, #0
    mov x16, #1
    svc #0x80

msg:
    .ascii "Hello, World!\n"
    