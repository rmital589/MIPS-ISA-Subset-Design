module REG(SW0,SW1,SW2,btnL,btnR, CLK, RegW, DR, SR1, SR2, Reg_In, ReadReg1, ReadReg2, readreg);
  input CLK,SW0,SW1,SW2,btnL,btnR;
  input RegW;
  input [4:0] DR;
  input [4:0] SR1;
  input [4:0] SR2;
  input [31:0] Reg_In;
  reg [31:0] display;
  output [15:0] readreg;
  output reg [31:0] ReadReg1;
  output reg [31:0] ReadReg2;

  reg [31:0] REG [0:31];
  integer i;

  initial begin
    ReadReg1 = 0;
    ReadReg2 = 0;
    display = 0;
 for(i=0;i<32;i=i+1) begin
 	REG[i]=0;
    end
  end

  always @(posedge CLK)
  begin

    if(RegW == 1'b1) begin
      REG[DR] <= Reg_In[31:0];      
    end
    display <= REG[32'd2];      
    REG[32'd1] <= {29'd0,SW2,SW1,SW0};
    ReadReg1 <= REG[SR1];
    ReadReg2 <= REG[SR2];
  end
assign readreg = (btnR) ? display[31:16] : display[15:0];
endmodule
