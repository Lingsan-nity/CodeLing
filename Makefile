TESTNAME ?= test_adder
TB_NAME  ?= test_bench
RADIX    ?= decimal

drc:
[TAB]verilator --lint-only -Wall -f rtl.f

build:
[TAB]vlib work
[TAB]vmap work work
[TAB]vlog -f compile.f | tee compile.log

run:
[TAB]vsim -debugDB -l $(TESTNAME).log -voptargs=+acc -assertdebug -c $(TB_NAME) -do "log -r /*;run -all;"

wave:
[TAB]vsim -i -view vsim.wlf -do "add wave vsim:/$(TB_NAME)/*; radix -$(RADIX)" &
