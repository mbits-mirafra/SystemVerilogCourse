wvConvertFile -win $_nWave1 -o \
           "/hwetools/work_area/frontend/merlin_b7/SystemVerilogCourse/SystemVerilogCourse/assertion/variable_delay/waveform.vcd.fsdb" \
           "waveform.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/hwetools/work_area/frontend/merlin_b7/SystemVerilogCourse/SystemVerilogCourse/assertion/variable_delay/waveform.vcd.fsdb}
wvSetPosition -win $_nWave1 {("G1" 0)}
nMemSetPreference
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvExit
