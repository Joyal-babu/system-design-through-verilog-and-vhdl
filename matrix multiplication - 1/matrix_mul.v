// A,B and R are 2*2 matrices
// 4 elements of 8 bit in each matrices
// 8x4 = 32 bit 1-D array represent each matrix

module mat_mul(
        input  [31:0]A,
        input  [31:0]B,
        output reg [31:0]R
);
  
  reg [31:0]result;
  reg [7:0] A1 [0:1][0:1]; //for mapping into 8 bit 2*2 2-D matrix for performing matrix multiplication
  reg [7:0] B1 [0:1][0:1]; 
  reg [7:0] R1 [0:1][0:1];
  integer i,j,k;
  
  always@( A or B )
  begin
    { A1[0][0], A1[0][1], A1[1][0], A1[1][1] } = A;
    { B1[0][0], B1[0][1], B1[1][0], B1[1][1] } = B;
    { R1[0][0], R1[0][1], R1[1][0], R1[1][1] } = 32'd0;//         initializing all elements to zero
    
    i = 0;
    j = 0;
    k = 0;
    
    for( i = 0;i < 2;i = i + 1 )
      for( j = 0;j < 2;j = j + 1)
        for( k = 0;k < 2;k = k + 1)
                R1[i][j] = R1[i][j] + ( A1[i][k] * B1[k][j] );
          
          R = { R1[0][0], R1[0][1], R1[1][0], R1[1][1] } ;
  end
endmodule
