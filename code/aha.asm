; Disassembly of file: ./code/aha.o
; Mon May 13 18:50:04 2019
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: SSE, x64

default rel

global _Z5printP6string
global _Z7printlnP6string
global _Z9getStringv
global _Z6getIntv
global _Z8toStringi
global main
global _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z; Note: Weak.

extern vsnprintf                                        ; byte
extern fputs                                            ; near
extern stdout                                           ; qword
extern _Unwind_Resume                                   ; near
extern _ZdlPv                                           ; near
extern puts                                             ; near
extern _Znwm                                            ; near
extern scanf                                            ; near
extern __gxx_personality_v0                             ; byte
extern __stack_chk_fail                                 ; near
extern memcpy                                           ; near
extern _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm ; near
extern _ZSt19__throw_logic_errorPKc                     ; near


SECTION .text   align=16                                ; section number 1, code

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag.isra.15:; Local function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.19:
        push    r12                                     ; 0000 _ 41: 54
        push    rbp                                     ; 0002 _ 55
        mov     r12, rsi                                ; 0003 _ 49: 89. F4
        push    rbx                                     ; 0006 _ 53
        mov     rbp, rdi                                ; 0007 _ 48: 89. FD
        sub     rsp, 16                                 ; 000A _ 48: 83. EC, 10
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 000E _ 64 48: 8B. 04 25, 00000028
        mov     qword [rsp+8H], rax                     ; 0017 _ 48: 89. 44 24, 08
        xor     eax, eax                                ; 001C _ 31. C0
        test    rsi, rsi                                ; 001E _ 48: 85. F6
        jnz     L_002                                   ; 0021 _ 75, 15
        test    rdx, rdx                                ; 0023 _ 48: 85. D2
        jz      L_002                                   ; 0026 _ 74, 10
        mov     edi, L_014                              ; 0028 _ BF, 00000000(d)
        call    _ZSt19__throw_logic_errorPKc            ; 002D _ E8, 00000000(rel)
; Filling space: 6H
; Filler type: Multi-byte NOP
;       db 66H, 0FH, 1FH, 44H, 00H, 00H

ALIGN   8
L_002:  mov     rbx, rdx                                ; 0038 _ 48: 89. D3
        sub     rbx, r12                                ; 003B _ 4C: 29. E3
        cmp     rbx, 15                                 ; 003E _ 48: 83. FB, 0F
        mov     qword [rsp], rbx                        ; 0042 _ 48: 89. 1C 24
        ja      L_004                                   ; 0046 _ 77, 38
        mov     rdx, qword [rbp]                        ; 0048 _ 48: 8B. 55, 00
        cmp     rbx, 1                                  ; 004C _ 48: 83. FB, 01
        mov     rdi, rdx                                ; 0050 _ 48: 89. D7
        jz      L_006                                   ; 0053 _ 74, 5B
        test    rbx, rbx                                ; 0055 _ 48: 85. DB
        jnz     L_005                                   ; 0058 _ 75, 42
L_003:  mov     rax, qword [rsp]                        ; 005A _ 48: 8B. 04 24
        mov     qword [rbp+8H], rax                     ; 005E _ 48: 89. 45, 08
        mov     byte [rdx+rax], 0                       ; 0062 _ C6. 04 02, 00
        mov     rax, qword [rsp+8H]                     ; 0066 _ 48: 8B. 44 24, 08
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rax, qword [fs:abs 28H]                 ; 006B _ 64 48: 33. 04 25, 00000028
        jnz     L_007                                   ; 0074 _ 75, 47
        add     rsp, 16                                 ; 0076 _ 48: 83. C4, 10
        pop     rbx                                     ; 007A _ 5B
        pop     rbp                                     ; 007B _ 5D
        pop     r12                                     ; 007C _ 41: 5C
        ret                                             ; 007E _ C3

; Filling space: 1H
; Filler type: NOP
;       db 90H

ALIGN   8
L_004:  mov     rdi, rbp                                ; 0080 _ 48: 89. EF
        xor     edx, edx                                ; 0083 _ 31. D2
        mov     rsi, rsp                                ; 0085 _ 48: 89. E6
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm; 0088 _ E8, 00000000(rel)
        mov     rdi, rax                                ; 008D _ 48: 89. C7
        mov     qword [rbp], rax                        ; 0090 _ 48: 89. 45, 00
        mov     rax, qword [rsp]                        ; 0094 _ 48: 8B. 04 24
        mov     qword [rbp+10H], rax                    ; 0098 _ 48: 89. 45, 10
L_005:  mov     rdx, rbx                                ; 009C _ 48: 89. DA
        mov     rsi, r12                                ; 009F _ 4C: 89. E6
        call    memcpy                                  ; 00A2 _ E8, 00000000(rel)
        mov     rdx, qword [rbp]                        ; 00A7 _ 48: 8B. 55, 00
        jmp     L_003                                   ; 00AB _ EB, AD

; Filling space: 3H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 00H

ALIGN   8
L_006:  movzx   eax, byte [r12]                         ; 00B0 _ 41: 0F B6. 04 24
        mov     byte [rdx], al                          ; 00B5 _ 88. 02
        mov     rdx, qword [rbp]                        ; 00B7 _ 48: 8B. 55, 00
        jmp     L_003                                   ; 00BB _ EB, 9D

L_007:  ; Local function
        call    __stack_chk_fail                        ; 00BD _ E8, 00000000(rel)
; Filling space: 0EH
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 40H, 00H, 66H, 2EH, 0FH, 1FH
;       db 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_Z5printP6string:
        mov     rsi, qword [rel stdout]                 ; 00D0 _ 48: 8B. 35, 00000000(rel)
        mov     rdi, qword [rdi]                        ; 00D7 _ 48: 8B. 3F
        jmp     fputs                                   ; 00DA _ E9, 00000000(rel)

        nop                                             ; 00DF _ 90

ALIGN   16
_Z7printlnP6string:; Function begin
        mov     rdi, qword [rdi]                        ; 00E0 _ 48: 8B. 3F
        jmp     puts                                    ; 00E3 _ E9, 00000000(rel)
; _Z7printlnP6string End of function

; Filling space: 8H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_Z9getStringv:; Function begin
        push    rbp                                     ; 00F0 _ 55
        push    rbx                                     ; 00F1 _ 53
        mov     esi, _ZZ15__lib_getStringvE3buf         ; 00F2 _ BE, 00000000(d)
        mov     edi, L_015                              ; 00F7 _ BF, 00000000(d)
        xor     eax, eax                                ; 00FC _ 31. C0
        sub     rsp, 8                                  ; 00FE _ 48: 83. EC, 08
        call    scanf                                   ; 0102 _ E8, 00000000(rel)
        mov     edi, 32                                 ; 0107 _ BF, 00000020
        call    _Znwm                                   ; 010C _ E8, 00000000(rel)
        mov     rbx, rax                                ; 0111 _ 48: 89. C3
        lea     rax, [rax+10H]                          ; 0114 _ 48: 8D. 40, 10
        mov     edx, _ZZ15__lib_getStringvE3buf         ; 0118 _ BA, 00000000(d)
        mov     qword [rbx], rax                        ; 011D _ 48: 89. 03
L_008:  mov     ecx, dword [rdx]                        ; 0120 _ 8B. 0A
        add     rdx, 4                                  ; 0122 _ 48: 83. C2, 04
        lea     eax, [rcx-1010101H]                     ; 0126 _ 8D. 81, FEFEFEFF
        not     ecx                                     ; 012C _ F7. D1
        and     eax, ecx                                ; 012E _ 21. C8
        and     eax, 80808080H                          ; 0130 _ 25, 80808080
        jz      L_008                                   ; 0135 _ 74, E9
        mov     ecx, eax                                ; 0137 _ 89. C1
        mov     rdi, rbx                                ; 0139 _ 48: 89. DF
        shr     ecx, 16                                 ; 013C _ C1. E9, 10
        test    eax, 8080H                              ; 013F _ A9, 00008080
        cmove   eax, ecx                                ; 0144 _ 0F 44. C1
        lea     rcx, [rdx+2H]                           ; 0147 _ 48: 8D. 4A, 02
        mov     esi, eax                                ; 014B _ 89. C6
        cmove   rdx, rcx                                ; 014D _ 48: 0F 44. D1
        add     sil, al                                 ; 0151 _ 40: 00. C6
        mov     esi, _ZZ15__lib_getStringvE3buf         ; 0154 _ BE, 00000000(d)
        sbb     rdx, _ZZ15__lib_getStringvE3buf+3H      ; 0159 _ 48: 81. DA, 00000000(d)
        add     rdx, _ZZ15__lib_getStringvE3buf         ; 0160 _ 48: 81. C2, 00000000(d)
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.19; 0167 _ E8, FFFFFE94
        add     rsp, 8                                  ; 016C _ 48: 83. C4, 08
        mov     rax, rbx                                ; 0170 _ 48: 89. D8
        pop     rbx                                     ; 0173 _ 5B
        pop     rbp                                     ; 0174 _ 5D
        ret                                             ; 0175 _ C3
; _Z9getStringv End of function

        mov     rbp, rax                                ; 0176 _ 48: 89. C5
        mov     rdi, rbx                                ; 0179 _ 48: 89. DF
        call    _ZdlPv                                  ; 017C _ E8, 00000000(rel)
        mov     rdi, rbp                                ; 0181 _ 48: 89. EF
        call    _Unwind_Resume                          ; 0184 _ E8, 00000000(rel)
; Filling space: 7H
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 80H, 00H, 00H, 00H, 00H

ALIGN   8

_Z6getIntv:; Function begin
        sub     rsp, 24                                 ; 0190 _ 48: 83. EC, 18
        mov     edi, L_016                              ; 0194 _ BF, 00000000(d)
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 0199 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rsp+8H], rax                     ; 01A2 _ 48: 89. 44 24, 08
        xor     eax, eax                                ; 01A7 _ 31. C0
        lea     rsi, [rsp+4H]                           ; 01A9 _ 48: 8D. 74 24, 04
        call    scanf                                   ; 01AE _ E8, 00000000(rel)
        mov     rdx, qword [rsp+8H]                     ; 01B3 _ 48: 8B. 54 24, 08
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rdx, qword [fs:abs 28H]                 ; 01B8 _ 64 48: 33. 14 25, 00000028
        mov     eax, dword [rsp+4H]                     ; 01C1 _ 8B. 44 24, 04
        jnz     L_009                                   ; 01C5 _ 75, 05
        add     rsp, 24                                 ; 01C7 _ 48: 83. C4, 18
        ret                                             ; 01CB _ C3
; _Z6getIntv End of function

L_009:  ; Local function
        call    __stack_chk_fail                        ; 01CC _ E8, 00000000(rel)
; Filling space: 0FH
; Filler type: Multi-byte NOP
;       db 0FH, 1FH, 44H, 00H, 00H, 66H, 2EH, 0FH
;       db 1FH, 84H, 00H, 00H, 00H, 00H, 00H

ALIGN   16

_Z8toStringi:
        push    rbp                                     ; 01E0 _ 55
        push    rbx                                     ; 01E1 _ 53
        mov     r8d, edi                                ; 01E2 _ 41: 89. F8
        mov     ecx, L_016                              ; 01E5 _ B9, 00000000(d)
        mov     edx, 16                                 ; 01EA _ BA, 00000010
        mov     esi, vsnprintf                          ; 01EF _ BE, 00000000(d)
        sub     rsp, 56                                 ; 01F4 _ 48: 83. EC, 38
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 01F8 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rsp+28H], rax                    ; 0201 _ 48: 89. 44 24, 28
        xor     eax, eax                                ; 0206 _ 31. C0
        mov     rdi, rsp                                ; 0208 _ 48: 89. E7
        call    _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z; 020B _ E8, 00000000(rel)
        mov     edi, 32                                 ; 0210 _ BF, 00000020
        call    _Znwm                                   ; 0215 _ E8, 00000000(rel)
        mov     rsi, qword [rsp]                        ; 021A _ 48: 8B. 34 24
        mov     rbx, rax                                ; 021E _ 48: 89. C3
        lea     rax, [rax+10H]                          ; 0221 _ 48: 8D. 40, 10
        mov     rdi, rbx                                ; 0225 _ 48: 89. DF
        mov     qword [rbx], rax                        ; 0228 _ 48: 89. 03
        mov     rdx, rsi                                ; 022B _ 48: 89. F2
        add     rdx, qword [rsp+8H]                     ; 022E _ 48: 03. 54 24, 08
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.19; 0233 _ E8, FFFFFDC8
        mov     rdi, qword [rsp]                        ; 0238 _ 48: 8B. 3C 24
        lea     rax, [rsp+10H]                          ; 023C _ 48: 8D. 44 24, 10
        cmp     rdi, rax                                ; 0241 _ 48: 39. C7
        jz      L_010                                   ; 0244 _ 74, 05
        call    _ZdlPv                                  ; 0246 _ E8, 00000000(rel)
L_010:  mov     rcx, qword [rsp+28H]                    ; 024B _ 48: 8B. 4C 24, 28
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rcx, qword [fs:abs 28H]                 ; 0250 _ 64 48: 33. 0C 25, 00000028
        mov     rax, rbx                                ; 0259 _ 48: 89. D8
        jnz     L_011                                   ; 025C _ 75, 07
        add     rsp, 56                                 ; 025E _ 48: 83. C4, 38
        pop     rbx                                     ; 0262 _ 5B
        pop     rbp                                     ; 0263 _ 5D
        ret                                             ; 0264 _ C3

L_011:  ; Local function
        call    __stack_chk_fail                        ; 0265 _ E8, 00000000(rel)
        mov     rbp, rax                                ; 026A _ 48: 89. C5
        mov     rdi, rbx                                ; 026D _ 48: 89. DF
        mov     rbx, rbp                                ; 0270 _ 48: 89. EB
        call    _ZdlPv                                  ; 0273 _ E8, 00000000(rel)
L_012:  mov     rdi, qword [rsp]                        ; 0278 _ 48: 8B. 3C 24
        lea     rdx, [rsp+10H]                          ; 027C _ 48: 8D. 54 24, 10
        cmp     rdi, rdx                                ; 0281 _ 48: 39. D7
        jz      L_013                                   ; 0284 _ 74, 05
        call    _ZdlPv                                  ; 0286 _ E8, 00000000(rel)
L_013:  mov     rdi, rbx                                ; 028B _ 48: 89. DF
        call    _Unwind_Resume                          ; 028E _ E8, 00000000(rel)
        mov     rbx, rax                                ; 0293 _ 48: 89. C3
        jmp     L_012                                   ; 0296 _ EB, E0


SECTION .data   align=1                                 ; section number 2, data


SECTION .bss    align=1                                 ; section number 3, bss


SECTION .rodata.str1.8 align=8                          ; section number 4, const

L_014:                                                  ; byte
        db 62H, 61H, 73H, 69H, 63H, 5FH, 73H, 74H       ; 0000 _ basic_st
        db 72H, 69H, 6EH, 67H, 3AH, 3AH, 5FH, 4DH       ; 0008 _ ring::_M
        db 5FH, 63H, 6FH, 6EH, 73H, 74H, 72H, 75H       ; 0010 _ _constru
        db 63H, 74H, 20H, 6EH, 75H, 6CH, 6CH, 20H       ; 0018 _ ct null 
        db 6EH, 6FH, 74H, 20H, 76H, 61H, 6CH, 69H       ; 0020 _ not vali
        db 64H, 00H                                     ; 0028 _ d.


SECTION .text.unlikely align=2                          ; section number 5, code


SECTION .rodata.str1.1 align=1                          ; section number 6, const

L_015:                                                  ; byte
        db 25H, 73H, 00H                                ; 0000 _ %s.

L_016:                                                  ; byte
        db 25H, 64H, 00H                                ; 0003 _ %d.


SECTION .text.startup align=16                          ; section number 7, code

main:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        push    rbx                                     ; 0001 _ 53
        mov     esi, _ZZ15__lib_getStringvE3buf         ; 0002 _ BE, 00000000(d)
        mov     edi, L_015                              ; 0007 _ BF, 00000000(d)
        xor     eax, eax                                ; 000C _ 31. C0
        sub     rsp, 8                                  ; 000E _ 48: 83. EC, 08
        call    scanf                                   ; 0012 _ E8, 00000000(rel)
        mov     edi, 32                                 ; 0017 _ BF, 00000020
        call    _Znwm                                   ; 001C _ E8, 00000000(rel)
        mov     rbx, rax                                ; 0021 _ 48: 89. C3
        lea     rax, [rax+10H]                          ; 0024 _ 48: 8D. 40, 10
        mov     edx, _ZZ15__lib_getStringvE3buf         ; 0028 _ BA, 00000000(d)
        mov     qword [rbx], rax                        ; 002D _ 48: 89. 03
L_017:  mov     ecx, dword [rdx]                        ; 0030 _ 8B. 0A
        add     rdx, 4                                  ; 0032 _ 48: 83. C2, 04
        lea     eax, [rcx-1010101H]                     ; 0036 _ 8D. 81, FEFEFEFF
        not     ecx                                     ; 003C _ F7. D1
        and     eax, ecx                                ; 003E _ 21. C8
        and     eax, 80808080H                          ; 0040 _ 25, 80808080
        jz      L_017                                   ; 0045 _ 74, E9
        mov     ecx, eax                                ; 0047 _ 89. C1
        mov     rdi, rbx                                ; 0049 _ 48: 89. DF
        shr     ecx, 16                                 ; 004C _ C1. E9, 10
        test    eax, 8080H                              ; 004F _ A9, 00008080
        cmove   eax, ecx                                ; 0054 _ 0F 44. C1
        lea     rcx, [rdx+2H]                           ; 0057 _ 48: 8D. 4A, 02
        mov     esi, eax                                ; 005B _ 89. C6
        cmove   rdx, rcx                                ; 005D _ 48: 0F 44. D1
        add     sil, al                                 ; 0061 _ 40: 00. C6
        mov     esi, _ZZ15__lib_getStringvE3buf         ; 0064 _ BE, 00000000(d)
        sbb     rdx, _ZZ15__lib_getStringvE3buf+3H      ; 0069 _ 48: 81. DA, 00000000(d)
        add     rdx, _ZZ15__lib_getStringvE3buf         ; 0070 _ 48: 81. C2, 00000000(d)
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.19; 0077 _ E8, 00000000(rel)
        mov     rdi, qword [rbx]                        ; 007C _ 48: 8B. 3B
        call    puts                                    ; 007F _ E8, 00000000(rel)
        add     rsp, 8                                  ; 0084 _ 48: 83. C4, 08
        xor     eax, eax                                ; 0088 _ 31. C0
        pop     rbx                                     ; 008A _ 5B
        pop     rbp                                     ; 008B _ 5D
        ret                                             ; 008C _ C3
; main End of function

        mov     rbp, rax                                ; 008D _ 48: 89. C5
        mov     rdi, rbx                                ; 0090 _ 48: 89. DF
        call    _ZdlPv                                  ; 0093 _ E8, 00000000(rel)
        mov     rdi, rbp                                ; 0098 _ 48: 89. EF
; Note: Function does not end with ret or jmp
        call    _Unwind_Resume                          ; 009B _ E8, 00000000(rel)


SECTION .gcc_except_table align=1                       ; section number 8, const

        db 0FFH, 0FFH, 01H, 0DH, 12H, 0FH, 00H, 00H     ; 0000 _ ........
        db 77H, 05H, 8DH, 01H, 00H, 7FH, 21H, 00H       ; 0008 _ w.....!.
        db 00H, 0FFH, 0FFH, 01H, 0EH, 12H, 0FH, 00H     ; 0010 _ ........
        db 00H, 77H, 05H, 86H, 01H, 00H, 94H, 01H       ; 0018 _ .w......
        db 05H, 00H, 00H, 0FFH, 0FFH, 01H, 13H, 2BH     ; 0020 _ .......+
        db 05H, 00H, 00H, 35H, 05H, 0B3H, 01H, 00H      ; 0028 _ ...5....
        db 53H, 05H, 8AH, 01H, 00H, 0AEH, 01H, 05H      ; 0030 _ S.......
        db 00H, 00H                                     ; 0038 _ ..


SECTION .text.unlikely._ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z align=1         ; section number 9, code


SECTION .text._ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z align=16         ; section number 10, code

_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z:; Function begin, weak
        push    rbp                                     ; 0000 _ 55
        mov     r10, rsi                                ; 0001 _ 49: 89. F2
        mov     rsi, rdx                                ; 0004 _ 48: 89. D6
        mov     rdx, rcx                                ; 0007 _ 48: 89. CA
        mov     rbp, rsp                                ; 000A _ 48: 89. E5
        push    r12                                     ; 000D _ 41: 54
        push    rbx                                     ; 000F _ 53
        mov     r12, rdi                                ; 0010 _ 49: 89. FC
        sub     rsp, 208                                ; 0013 _ 48: 81. EC, 000000D0
        test    al, al                                  ; 001A _ 84. C0
        mov     qword [rbp-0A0H], r8                    ; 001C _ 4C: 89. 85, FFFFFF60
        mov     qword [rbp-98H], r9                     ; 0023 _ 4C: 89. 8D, FFFFFF68
        jz      L_018                                   ; 002A _ 74, 23
        movaps  oword [rbp-90H], xmm0                   ; 002C _ 0F 29. 85, FFFFFF70
        movaps  oword [rbp-80H], xmm1                   ; 0033 _ 0F 29. 4D, 80
        movaps  oword [rbp-70H], xmm2                   ; 0037 _ 0F 29. 55, 90
        movaps  oword [rbp-60H], xmm3                   ; 003B _ 0F 29. 5D, A0
        movaps  oword [rbp-50H], xmm4                   ; 003F _ 0F 29. 65, B0
        movaps  oword [rbp-40H], xmm5                   ; 0043 _ 0F 29. 6D, C0
        movaps  oword [rbp-30H], xmm6                   ; 0047 _ 0F 29. 75, D0
        movaps  oword [rbp-20H], xmm7                   ; 004B _ 0F 29. 7D, E0
L_018:
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 004F _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-0C8H], rax                   ; 0058 _ 48: 89. 85, FFFFFF38
        xor     eax, eax                                ; 005F _ 31. C0
        lea     rax, [rsi+1EH]                          ; 0061 _ 48: 8D. 46, 1E
        lea     rcx, [rbp-0E0H]                         ; 0065 _ 48: 8D. 8D, FFFFFF20
        and     rax, 0FFFFFFFFFFFFFFF0H                 ; 006C _ 48: 83. E0, F0
        mov     dword [rbp-0E0H], 32                    ; 0070 _ C7. 85, FFFFFF20, 00000020
        mov     dword [rbp-0DCH], 48                    ; 007A _ C7. 85, FFFFFF24, 00000030
        sub     rsp, rax                                ; 0084 _ 48: 29. C4
        lea     rax, [rbp+10H]                          ; 0087 _ 48: 8D. 45, 10
        lea     rbx, [rsp+0FH]                          ; 008B _ 48: 8D. 5C 24, 0F
        mov     qword [rbp-0D8H], rax                   ; 0090 _ 48: 89. 85, FFFFFF28
        lea     rax, [rbp-0C0H]                         ; 0097 _ 48: 8D. 85, FFFFFF40
        and     rbx, 0FFFFFFFFFFFFFFF0H                 ; 009E _ 48: 83. E3, F0
        mov     rdi, rbx                                ; 00A2 _ 48: 89. DF
        mov     qword [rbp-0D0H], rax                   ; 00A5 _ 48: 89. 85, FFFFFF30
        call    r10                                     ; 00AC _ 41: FF. D2
        lea     rdx, [r12+10H]                          ; 00AF _ 49: 8D. 54 24, 10
        mov     rdi, r12                                ; 00B4 _ 4C: 89. E7
        mov     rsi, rbx                                ; 00B7 _ 48: 89. DE
        mov     qword [r12], rdx                        ; 00BA _ 49: 89. 14 24
        movsxd  rdx, eax                                ; 00BE _ 48: 63. D0
        add     rdx, rbx                                ; 00C1 _ 48: 01. DA
        call    _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.19; 00C4 _ E8, 00000000(rel)
        mov     rdi, qword [rbp-0C8H]                   ; 00C9 _ 48: 8B. BD, FFFFFF38
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rdi, qword [fs:abs 28H]                 ; 00D0 _ 64 48: 33. 3C 25, 00000028
        mov     rax, r12                                ; 00D9 _ 4C: 89. E0
        jnz     L_019                                   ; 00DC _ 75, 09
        lea     rsp, [rbp-10H]                          ; 00DE _ 48: 8D. 65, F0
        pop     rbx                                     ; 00E2 _ 5B
        pop     r12                                     ; 00E3 _ 41: 5C
        pop     rbp                                     ; 00E5 _ 5D
        ret                                             ; 00E6 _ C3
; _ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z End of function

L_019:  ; Local function
; Note: Function does not end with ret or jmp
        call    __stack_chk_fail                        ; 00E7 _ E8, 00000000(rel)


SECTION .bss._ZZ15__lib_getStringvE3buf align=32           ; section number 11, bss

_ZZ15__lib_getStringvE3buf:                             ; byte
        resb    257                                     ; 0000


