encoding system utf-8
# source c:/tcl/bin/tkcon.tcl
# tkcon show

set ::ASPECTPATH [pwd]/
source ${::ASPECTPATH}necessary/fileProcess.tcl

# set infile [_f_ReadFile ${::ASPECTPATH}sourceFile/log_all.csv]
set infile [_f_ReadFile ${::ASPECTPATH}sourceFile/sample_lu3.csv]

set p00 {WIFI }

## ,2412 MHz DSSS-1 BW-20 ANT_1 23 dBm NON_HT NA 
set p01 {,-{0,1}\d+ MHz [A-Z][A-Z][A-Z][A-Z]-\d+ [A-Z][A-Z]-\d+ [A-Z][A-Z][A-Z]_\d+ {0,1}\d+ dBm [A-Z][A-Z][A-Z]_[A-Z][A-Z]+ NA }

## ,2412 MHz CCK-11 BW-20 ANT_1 23 dBm NON_HT NA 
set p02 {,-{0,1}\d+ MHz [A-Z][A-Z][A-Z]-{0,1}\d+ [A-Z][A-Z]-\d+ [A-Z][A-Z][A-Z]_\d+ {0,1}\d+ dBm [A-Z][A-Z][A-Z]_[A-Z][A-Z]+ NA }

## ,2412 MHz MCS0 BW-20 ANT_1 22 dBm HT_MF NA 
set p03 {,-{0,1}\d+ MHz [A-Z][A-Z][A-Z]{0,1}\d+ [A-Z][A-Z]-\d+ [A-Z][A-Z][A-Z]_\d+ {0,1}\d+ dBm [A-Z][A-Z]_[A-Z][A-Z]+ NA }

set data_00 $p00
set data_01 $p01$p01$p01$p01$p01$p01
set data_02 $p02$p02$p02$p02$p02$p02
set data_03 $p03$p03$p03$p03$p03$p03

set pattern0 $data_00

## =========
## ,2412 MHz DSSS-1 BW-20 ANT_1 23 dBm NON_HT NA 
set pattern1 $data_01$data_01$data_01$data_01    ;# 2412 DSSS-1
set pattern2 $data_01$data_01$data_01$data_01    ;# 2442 DSSS-1
set pattern3 $data_01$data_01$data_01$data_01    ;# 2472 DSSS-1

## ,2412 MHz CCK-11 BW-20 ANT_1 23 dBm NON_HT NA 
set pattern4 $data_02$data_02$data_02$data_02    ;# 2412 CCK-11

## ,2412 MHz OFDM-6 BW-20 ANT_1 23 dBm NON_HT NA 
set pattern5 $data_01$data_01$data_01$data_01    ;# 2412 OFDM-6
set pattern6 $data_01$data_01$data_01$data_01    ;# 2442 OFDM-6
set pattern7 $data_01$data_01$data_01$data_01    ;# 2472 OFDM-6

## ,2442 MHz OFDM-54 BW-20 ANT_1 20 dBm NON_HT NA 
set pattern8 $data_01$data_01$data_01$data_01    ;# 2412 OFDM-54
set pattern9 $data_01$data_01$data_01$data_01    ;# 2442 OFDM-54
set pattern10 $data_01$data_01$data_01$data_01    ;# 2472 OFDM-54

## ===========================================
## ,2412 MHz MCS0 BW-20 ANT_1 22 dBm HT_MF NA 
set pattern11 $data_03$data_03$data_03$data_03 			;# 2412 MCS0
set pattern12 $data_03$data_03$data_03$data_03 			;# 2442 MCS0
set pattern13 $data_03$data_03$data_03$data_03 			;# 2472 MCS0

## ,2412 MHz MCS7 BW-20 ANT_1 20 dBm HT_MF NA 
set pattern14 $data_03$data_03$data_03$data_03 			;# 2412 MCS7
set pattern15 $data_03$data_03$data_03$data_03 			;# 2442 MCS7
set pattern16 $data_03$data_03$data_03$data_03 			;# 2472 MCS7

## ,2422 MHz MCS0 BW-40 ANT_1 21 dBm HT_MF NA 
set pattern17 $data_03$data_03$data_03$data_03 			;# 2422 MCS0
set pattern18 $data_03$data_03$data_03$data_03 			;# 2442 MCS0
set pattern19 $data_03$data_03$data_03$data_03 			;# 2462 MCS0

## ,2422 MHz MCS7 BW-40 ANT_1 20 dBm HT_MF NA 
set pattern20 $data_03$data_03$data_03$data_03 			;# 2422 MCS7
set pattern21 $data_03$data_03$data_03$data_03 			;# 2442 MCS7
set pattern22 $data_03$data_03$data_03$data_03 			;# 2462 MCS7


set patternA $pattern1$pattern2$pattern3$pattern4$pattern5$pattern6$pattern7$pattern8$pattern9$pattern10
set patternB $pattern11$pattern12$pattern13$pattern14$pattern15$pattern16$pattern17$pattern18$pattern19$pattern20
set patternC $pattern21$pattern22

set pattern $patternA$patternB$patternC

regexp -all -inline -- $pattern $infile


