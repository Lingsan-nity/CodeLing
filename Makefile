#################################################################################
#This file created by Huy Nguyen
#Updated date: 6/30/2019
#Example run string: make TESTNAME={name_of_testcase} {optional}
#                    make TESTNAME=counter_test all
#################################################################################
#Define variables
TESTNAME        ?= test_adder
TB_NAME         ?= test_bench
RADIX           ?= decimal

#==================================
drc:
	verilator --lint-only -Wall -f rtl.f

build:
	vlib work
	vmap work work
	vlog -f compile.f | tee compile.log

run:
	vsim -debugDB -l $(TESTNAME).log -voptargs=+acc -assertdebug -c $(TB_NAME) -do "log -r /*;run -all;"

wave:
	vsim -i -view vsim.wlf -do "add wave vsim:/$(TB_NAME)/*; radix -$(RADIX)" &