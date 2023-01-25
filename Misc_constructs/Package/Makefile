compile:
	clear
	rm -rf work package_mod1.log
	vlog -sv package_ex.sv package_mod1.sv
 
simulate:
	vsim mod1 -l package_mod1.log -c -do "run -all;exit;" 

all:
	clear
	rm -rf work package_mod1.log
	vlog -sv package_ex.sv package_mod1.sv && vsim mod1 -l package_mod1.log -c -do "run -all;exit;" 
