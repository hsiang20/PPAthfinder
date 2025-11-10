module top (
    input logic [15:0] input_data,
    output logic [15:0] output_data
);

    logic [15:0] temp_0;
    logic [7:0] temp_1;
    logic [7:0] temp_2;
    logic [7:0] temp_3;

    assign temp_0 = input_data + 16'd1;
    assign temp_1 = temp_0[7:0] + input_data[7:0];
    assign temp_2 = temp_1 + temp_0[7:0];
    assign temp_3 = temp_2 + temp_1;

    assign output_data = {temp_3, temp_2};

endmodule
