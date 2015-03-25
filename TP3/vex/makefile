VEX_DIR ?= /share/m1info/ASE/vex-3.43/
#MM_FILE ?= ./vex_MachineModel.mm
MM_FILE ?= ./risc.mm
CACHE_CFG ?= ./vex_cache.cfg
CFLAGS = -I../include/ -ms -mas_g -mas_t -O2 -prefetch
SRC=../src/

all: help


fast: clean edge_detect
	./edge_detect ../data/tsukuba1.pgm sobel.pgm fast
	cp ta.log.000 tp_ase.log.000
	grep "Total Cycles" tp_ase.log.000

slow: clean edge_detect 
	./edge_detect ../data/tsukuba1.pgm sobel.pgm	
	cp ta.log.000 tp_ase.log.001
	grep "Total Cycles" tp_ase.log.001
	
edge_detect:  $(SRC)/pgm.c $(SRC)/alloc.c $(SRC)/edge_detect.c $(CACHE_CFG) $(MM_FILE)
	$(VEX_DIR)/bin/cc $(CFLAGS) -fmm=$(MM_FILE) -DVEX -o $@ $(SRC)/pgm.c $(SRC)/alloc.c $(SRC)/edge_detect.c -L/lib

report:
	$(VEX_DIR)/bin/runreport tp_ase.log.* > report.html
	firefox report.html


.PHONY: set_cache_cfg clean help

set_cache_cfg:
	export VEXCFG=$(CACHE_CFG)

clean:
	rm -f edge_detect *.out ta.log.* *.pgm 

help:
	@echo "Usage: make slow|fast|clean|report"

