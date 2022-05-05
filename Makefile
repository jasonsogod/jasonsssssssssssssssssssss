VERILOG = iverilog
TARGET = BCD.vcd

$(TARGET) : BCD.vvp
	vvp BCD.vvp

BCD.vvp: testbench.v BCD.v
	$(VERILOG) -o BCD.vvp testbench.v BCD.v

clean:
	del $(TARGET)