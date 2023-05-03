// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a;
  reg [1:0] b;
  

  integer i = 0;
  
  
  initial begin
    #100;
    $finish();    
  end

 covergroup c1;
   option.per_instance = 1;
   coverpoint a;
   coverpoint b;
 endgroup

  
  
  
  
  initial begin
    c1 cI = new();
    for(i = 0; i < 10; i++) begin 
      a = $urandom();
      b = $urandom();
      cI.sample();
    end 
  end
 
endmodule
