wvConvertFile -win $_nWave1 -o \
           "/hwetools/work_area/frontend/gopal_b7/git_test1/My_Github_exp/My_Github_exp/System_Verilog/Assertions/repetition_operators/consecutive_repetition/waveform.vcd.fsdb" \
           "waveform.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/hwetools/work_area/frontend/gopal_b7/git_test1/My_Github_exp/My_Github_exp/System_Verilog/Assertions/repetition_operators/consecutive_repetition/waveform.vcd.fsdb}
wvSetPosition -win $_nWave1 {("G1" 0)}
nMemSetPreference
wvResizeWindow -win $_nWave1 -1 27 1920 977
wvSelectGroup -win $_nWave1 {G1}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/consecutive_repetition"
wvGetSignalSetScope -win $_nWave1 \
           "/consecutive_repetition/_\$\$txp_fail_action_a_1"
wvGetSignalSetScope -win $_nWave1 \
           "/consecutive_repetition/_\$\$txp_pass_action_a_1"
wvGetSignalClose -win $_nWave1
wvAddAllSignals -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvExit
