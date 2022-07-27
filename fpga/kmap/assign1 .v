module gates(x,y,z,l);
   
   input x;
   input y;
   input z;   
    output wire l;
    reg m,n,k;
   
        
   
  not(m,y);          
  not(n,z); 
             
 and(k,x,m);
 or(l,k,n);
 

endmodule
