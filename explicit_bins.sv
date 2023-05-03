module tb;
  reg [2:0] a; /// 1 2 3
  

  integer i = 0;
  
  
  initial begin
    #100;
    $finish();    
  end
  
covergroup c;
  option.per_instance = 1;

  coverpoint a {
 // option.auto_bin_max = 4;
   
    /*
    bins first = {1};
    bins second = {2};
    bins third = {3};
    */
    
    //bins first = {1,2,3};
    //bins second = {[1:3]};
    
    
  }

  
  
  
endgroup
  

  
  
  
  
  initial begin
    c ci = new();
    for(i = 0; i < 15; i++) begin 
      a = $urandom();
      ci.sample();
    end 
  end
 
endmodule
