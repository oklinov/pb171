.macro vector name
    .weak \name
    jmp \name
.endm

.section .vectors
.global __vectors
.func __vectors
__vectors:
    jmp __init       ; RESET
    vector __vectors ; INT0
    vector __vectors ; INT1
    vector __vectors ; PCINT0
    vector __vectors ; PCINT1
    vector __vectors ; PCINT2
    vector __vectors ; WDT
    vector __vectors ; TIMER2 COMPA
    vector __vectors ; TIMER2 COMPB
    vector __vectors ; TIMER2 OVF
    vector __vectors ; TIMER1 CAPT
    vector timer1_compare_a ; TIMER1 COMPA
    vector __vectors ; TIMER1 COMPB
    vector __vectors ; TIMER1 OVF
    vector timer0_compare_a ; TIMER0 COMPA
    vector __vectors ; TIMER0 COMPB
    vector __vectors ; TIMER0 OVF
    vector __vectors ; SPI, STC
    vector __vectors ; USART, RX
    vector __vectors ; USART, UDRE
    vector __vectors ; USART, TX
    vector __vectors ; ADC
    vector __vectors ; EE READY
    vector __vectors ; ANALOG COMP
    vector __vectors ; TWI
    vector __vectors ; SPM READY
.endfunc

.func __init
__init:
    eor r1, r1
    out 0x3f, r1
    ldi r28, 0xff
    ldi r29, 0x08
    out 0x3e, r29
    out 0x3d, r28
.endfunc

.global __do_copy_data
.func __do_copy_data
__do_copy_data:
    ldi r17, hi8(__data_end)
    ldi r26, lo8(__data_start)
    ldi r27, hi8(__data_start)
    ldi r30, lo8(__data_load_start)
    ldi r31, hi8(__data_load_start)
    rjmp .+4
    lpm r0, Z+
    st X+, r0
    cpi r26, 0x2a
    cpc r27, r17
    brne .-10
.endfunc

.func __main
__main:
    call main
    rjmp .-2
.endfunc

