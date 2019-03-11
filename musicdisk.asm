.segment MAIN []
BasicUpstart2(start)
#import "main_musicdisk.asm"

.segment SONG_SYS []
* = lz77_song_data
.import binary "res/songs-sid/sys.lz77"

.segment SONG_TMB []
* = lz77_song_data
.import binary "res/songs-sid/tmb.lz77"

.segment SONG_BTL []
* = lz77_song_data
.import binary "res/songs-sid/btl.lz77"

.segment SONG_MNC []
* = lz77_song_data
.import binary "res/songs-sid/mnc.lz77"

.segment SONG_HST []
* = lz77_song_data
.import binary "res/songs-sid/hst.lz77"

.segment SONG_BAD []
* = lz77_song_data
.import binary "res/songs-sid/bad.lz77"

.segment SONG_DLD []
* = lz77_song_data
.import binary "res/songs-sid/dld.lz77"

.segment SONG_HSH []
* = lz77_song_data
.import binary "res/songs-sid/hsh.lz77"

.segment SONG_FLO []
* = lz77_song_data
.import binary "res/songs-sid/flo.lz77"

.segment SONG_PXL []
* = lz77_song_data
.import binary "res/songs-sid/pxl.lz77"

.segment SONG_SSD []
* = lz77_song_data
.import binary "res/songs-sid/ssd.lz77"

.segment SONG_LED []
* = lz77_song_data
.import binary "res/songs-sid/led.lz77"

.segment SONG_CLO []
* = lz77_song_data
.import binary "res/songs-sid/clo.lz77"

.segment SONG_TXR []
* = lz77_song_data
.import binary "res/songs-sid/txr.lz77"

.segment SONG_SRV []
* = lz77_song_data
.import binary "res/songs-sid/srv.lz77"

.segment SONG_STF []
* = lz77_song_data
.import binary "res/songs-sid/stf.lz77"

.segment SONG_ASF []
* = lz77_song_data
.import binary "res/songs-sid/asf.lz77"

.segment SONG_RUN []
* = lz77_song_data
.import binary "res/songs-sid/run.lz77"

.segment SONG_MYM []
* = lz77_song_data
.import binary "res/songs-sid/mym.lz77"

.segment SONG_SQW []
* = lz77_song_data
.import binary "res/songs-sid/sqw.lz77"

.segment SONG_FIN []
* = lz77_song_data
.import binary "res/songs-sid/fin.lz77"

.segment SONG_COY []
* = lz77_song_data
.import binary "res/songs-sid/coy.lz77"

.segment SONG_AON []
* = lz77_song_data
.import binary "res/songs-sid/aon.lz77"

.disk [filename="musicdisk.d64", name="SYSTEM BEEPS", id="2021!" ] {
        [ name="SYSTEM BEEPS",     type="prg", segments="MAIN"     ],
        [ name="----------------", type="rel"                      ],
        [ name="SYS",              type="prg", segments="SONG_SYS" ],
        [ name="TMB",              type="prg", segments="SONG_TMB" ],
        [ name="BTL",              type="prg", segments="SONG_BTL" ],
        [ name="MNC",              type="prg", segments="SONG_MNC" ],
        [ name="HST",              type="prg", segments="SONG_HST" ],
        [ name="BAD",              type="prg", segments="SONG_BAD" ],
        [ name="DLD",              type="prg", segments="SONG_DLD" ],
        [ name="HSH",              type="prg", segments="SONG_HSH" ],
        [ name="FLO",              type="prg", segments="SONG_FLO" ],
        [ name="PXL",              type="prg", segments="SONG_PXL" ],
        [ name="SSD",              type="prg", segments="SONG_SSD" ],
        [ name="LED",              type="prg", segments="SONG_LED" ],
        [ name="CLO",              type="prg", segments="SONG_CLO" ],
        [ name="TXR",              type="prg", segments="SONG_TXR" ],
        [ name="SRV",              type="prg", segments="SONG_SRV" ],
        [ name="STF",              type="prg", segments="SONG_STF" ],
        [ name="ASF",              type="prg", segments="SONG_ASF" ],
        [ name="RUN",              type="prg", segments="SONG_RUN" ],
        [ name="MYM",              type="prg", segments="SONG_MYM" ],
        [ name="SQW",              type="prg", segments="SONG_SQW" ],
        [ name="FIN",              type="prg", segments="SONG_FIN" ],
        [ name="COY",              type="prg", segments="SONG_COY" ],
        [ name="AON",              type="prg", segments="SONG_AON" ],
}