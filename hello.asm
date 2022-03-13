;------------------------------------
; hello.asm
;   nasm -f elf64 hello.asm
;   ld -s -o hello hello.o
;   ./hello
;------------------------------------

bits 64; 64bitモードの指定

section .text
global _start

_start:
    ; システムコール番号の指定
    mov rax, 1   ; sys_write

    ; システムコールに渡す引数をレジスタに格納
    mov rdi, 1      ; ファイルディスクリプタ 標準出力(STDOUT)
    mov rsi, msg    ; バイト列の先頭アドレス('H'のアドレス)
    mov rdx, length ; 書き込むバイト数

    ; システムコール実行
    syscall

    ; システムコール番号の指定
    mov rax, 60 ; sys_exit

    ; システムコールに渡す引数をレジスタに格納
    mov rdi, 0

    ; システムコール実行
    syscall

section .data
    msg     db      'Hello, World', 0x0A
    length  equ     $ - msg
