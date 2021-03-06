        #importonce
        #import "player.asm" // TODO: Decouple this

        .filenamespace irq

scanline_index:
        .byte $00
scanline_lo:
        .byte $00, $82, $04, $4E, $D0, $1A, $9C, $1E, $68, $EA, $34, $B6
scanline_hi:
        // Pre-shifted to the right bit-position for binary OR-ing
        .byte $00, $00, $80, $00, $00, $00, $00, $80, $00, $00, $00, $00

init:
        sei

        // Disable CIA interrupts
        lda #$7F
        sta $DC0D
        sta $DD0D

        // Acknowledge pending CIA interrupts
        lda $DC0D
        lda $DD0D

        // Enable raster interrupts
        lda #$01
        sta $D01A

        // Trigger at line 0
        lda #$00
        sta $D012
        lda #$1B
        sta $D011

        // Set interrupt address
        lda #<handler;  sta $0314
        lda #>handler;  sta $0315

        lda #$00
        sta scanline_index

        cli
        rts

fini:
        sei

        // Disable raster interrupts
        lda #$00
        sta $D01A

        cli
        rts

handler:
        pha
        txa
        pha
        tya
        pha

        // Clear the interrupt condition
        lda #$FF
        sta $D019

        lda #$0B
        sta $D020

        jsr player.update

        lda #$00
        sta $D020

        // Set the next scanline trigger
        ldx scanline_index
        inx
        cpx #$0C
        bne !+
        ldx #$00
!:
        stx scanline_index

        lda scanline_lo, x
        sta $D012
        lda scanline_hi, x
        ora #$1B
        sta $D011 // TODO: Don't trash this register

        pla
        tay
        pla
        tax
        pla

        // Back to the KERNAL interrupt handler
        jmp $EA31
