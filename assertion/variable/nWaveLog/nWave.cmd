wvConvertFile -win $_nWave1 -o \
           "/hwetools/work_area/frontend/merlin_b7/systemverilog_course/SystemVerilog_Course/assertion/variable/waveform.vcd.fsdb" \
           "waveform.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/hwetools/work_area/frontend/merlin_b7/systemverilog_course/SystemVerilog_Course/assertion/variable/waveform.vcd.fsdb}
wvSetPosition -win $_nWave1 {("G1" 0)}
nMemSetPreference
wvResizeWindow -win $_nWave1 -1 27 1024 665
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/variable"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/variable/a} \
{/variable/b} \
{/variable/clk} \
{/variable/parameter_delay\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/variable/a} \
{/variable/b} \
{/variable/clk} \
{/variable/parameter_delay\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 53 236 960 332
wvResizeWindow -win $_nWave1 -1 27 1024 665
wvZoomOut -win $_nWave1
wvExit
