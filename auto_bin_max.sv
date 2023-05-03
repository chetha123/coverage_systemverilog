module tb;
  reg [3:0] a; /// 256
  reg [1:0] b;
  

  integer i = 0;
  
  
  initial begin
    #100;
    $finish();    
  end
  
covergroup c;
  option.per_instance = 1;
 
  /////////////applying option to all the coverpoints
  //option.auto_bin_max = 3;
  
  
  coverpoint a { option.auto_bin_max = 3; }  ////applying option to the specific coverpoint
  coverpoint b;
  
endgroup
  

  
  
  
  
  initial begin
    c ci = new();
    for(i = 0; i < 10; i++) begin 
      a = $urandom();
      b = $urandom();
      ci.sample();
    end 
  end
 
endmodule
