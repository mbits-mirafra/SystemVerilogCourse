all:
	make clear;
	make compile;
	make simulate;

compile:
	vlog -sv package_module.sv package_ex.sv

simulate:
	vsim module_ex -l package.log -c -do "run -all;exit;"

clear:
	clear
