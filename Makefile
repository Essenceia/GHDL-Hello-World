GHDL=ghdl
FLAGS="--std=08"
SIM=gtkwave

# module name, also used as file name
MNAME=clock

all:
	@$(GHDL) -a $(FLAGS) $(MNAME).vhd
	@$(GHDL) -e $(FLAGS) $(MNAME)
	@$(GHDL) -r $(FLAGS) $(MNAME) --wave=$(MNAME).ghw --stop-time=1us

wave:
	$(SIM) $(MNAME).ghw

clean :
	rm -f *.o *.cf *.ghw
