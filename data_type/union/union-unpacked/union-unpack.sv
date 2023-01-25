//Unpacked structure
module union1 ();
//Declaration of Union members  
  union {
        int x;
        byte y;
    } data;

    initial begin

        data.x = 'hABCF10CD;

        $display("\n x = %0h", data.x );
        $display("\n y = %0h", data.y );

        data.y = 'h56;

        $display("\n x = %0h", data.x );
        $display("\n y = %0h", data.y );
        $displayh("\n data = %p", data);
        $display("\n size of unpacked union :", $bits(data));
    end
endmodule

